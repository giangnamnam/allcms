using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;
using System.Data;

namespace Mobile.Repository
{
    public class TransactionalContextSessionManager : ISessionManager
    {
        private const string SessionKey = "__ContextSession";
        private const string TransactionKey = "__ContextTransaction";
        private const string TransactionRequestedKey = "__TransactionRequested";

        public ISessionFactory SessionFactory
        {
            get;
            set;
        }

        private ISession ContextSession
        {
            get
            {
                return (ISession)OperationLocalStorage.GetItem(SessionKey);
            }
            set
            {
                OperationLocalStorage.SetItem(SessionKey, value);
            }
        }

        private ITransaction ContextTransaction
        {
            get
            {
                return (ITransaction)OperationLocalStorage.GetItem(TransactionKey);
            }
            set
            {
                OperationLocalStorage.SetItem(TransactionKey, value);
            }
        }

        private bool TransactionRequested
        {
            get
            {
                object value = OperationLocalStorage.GetItem(TransactionRequestedKey);
                return (bool)(value ?? false);
            }
            set
            {
                OperationLocalStorage.SetItem(TransactionRequestedKey, value);
            }
        }

        public TransactionalContextSessionManager()
        {
            IsolationLevel = IsolationLevel.ReadCommitted;
        }

        #region ITransactionManager Members

        public void BeginTransaction()
        {
            ISession session = ContextSession;
            ITransaction transaction = ContextTransaction;
            if (session == null)
            {
                TransactionRequested = true;
            }
            else
            {
                transaction = session.BeginTransaction(this.IsolationLevel);
                ContextTransaction = transaction;
            }
        }

        public void CommitTransaction()
        {
            ISession session = ContextSession;
            ITransaction transaction = ContextTransaction;

            if (transaction != null)
            {
                lock (transaction)
                {
                    try
                    {
                        if (HasOpenTransaction())
                        {
                            session.Flush();
                            transaction.Commit();
                        }
                    }                    
                    catch (HibernateException)
                    {
                        RollbackTransaction();
                        throw;
                    }                    
                    finally
                    {
                        transaction.Dispose();
                        ContextTransaction = null;
                    }
                }
            }
        }

        public void RollbackTransaction()
        {
            ISession session = ContextSession;
            ITransaction transaction = ContextTransaction;

            if (transaction == null || session == null)
            {
                return;
            }
            lock (transaction)
            {
                try
                {
                    if (HasOpenTransaction())
                    {
                        try
                        {
                            if (session.IsDirty())
                            {
                                session.Flush();                                
                            }                            
                        }
                        catch (HibernateException)
                        {
                            session.Clear();
                        }                        

                        try
                        {
                            // Call Rollback. 
                            // A trigger in the database may have already performed a rollback when the session 
                            // was flushed before, but the NHibernate transaction is oblivious to that.
                            // Therefore the current nesting level is checked. If it is greater than 0, a rollback
                            // can be performed.
                            // GetTransactionNestingLevel returns Null if the nexting level cannot be determined.
                            // In this case the transaction is rolled back.
                            int? nestLevel = GetCurrentNestLevel();
                            if ((nestLevel == null) || (nestLevel.Value > 0))
                            {
                                transaction.Rollback();
                            }
                        }
                        catch (HibernateException)
                        {
                            session.Dispose();
                            throw;
                        }                        
                    }
                }
                finally
                {
                    transaction.Dispose();
                    ContextTransaction = null;
                }
            }
        }

        private int? GetCurrentNestLevel()
        {
            // In case that the query cannot be created, it is null.
            // This might occur in unit tests, in this case, null is returned.
            int? nestLevel = null;
            // Retrieve the current session.
            ISession session = ContextSession;
            // Create a query to retrieve the actual nesting level.
            IQuery query = session.CreateSQLQuery("SELECT @@TRANCOUNT");
            // Query the transaction count from the database.
            if (query != null)
            {
                nestLevel = query.UniqueResult<int>();
            }
            return nestLevel;
        }

        public bool HasOpenTransaction()
        {
            ITransaction transaction = ContextTransaction;
            bool hasOpenTransaction = (transaction != null) && 
                (!transaction.WasCommitted) && (!transaction.WasRolledBack);
            return hasOpenTransaction;
        }

        public System.Data.IsolationLevel IsolationLevel
        {
            get;
            set;
        }

        #endregion

        #region ISessionManager Members

        public NHibernate.ISession GetSession()
        {
            ISession session = ContextSession;
            ITransaction transaction = ContextTransaction;

            if (session == null)
            {
                session = SessionFactory.OpenSession();
                ContextSession = session;
            }
            if (TransactionRequested && transaction == null)
            {
                transaction = session.BeginTransaction(this.IsolationLevel);
                ContextTransaction = transaction;
                TransactionRequested = false;
            }
            return session;
        }

        public void CloseSession()
        {
            try
            {
                // If the transaction has not been committed by the time the session
                // is closed, it is rolled back.
                if (HasOpenTransaction())
                {
                    RollbackTransaction();
                }

                ISession session = ContextSession;
                // If there is an open session, try to flush it...
                if (session != null && session.IsOpen)
                {
                    try
                    {
                        session.Flush();
                    }
                    finally
                    {
                        // ... and close it.
                        session.Close();
                        session.Dispose();
                    }
                }
            }
            finally
            {
                // Make sure that the content session does not survive.
                ContextSession = null;
            }
        }

        public NHibernate.IStatelessSession GetStatelessSession()
        {
            return SessionFactory.OpenStatelessSession();
        }

        #endregion
    }
}
