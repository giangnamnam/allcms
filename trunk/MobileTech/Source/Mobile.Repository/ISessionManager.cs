using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;
using System.Data;

namespace Mobile.Repository
{
    public interface ISessionManager
    {
        ISession GetSession();

        void CloseSession();

        IStatelessSession GetStatelessSession();

        void BeginTransaction();

        void CommitTransaction();

        void RollbackTransaction();

        bool HasOpenTransaction();

        IsolationLevel IsolationLevel
        {
            get;
            set;
        }
    }
}
