using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;
using NHibernate.Linq;
using Mobile.Common.Utils;

namespace Mobile.Repository
{
    public class RepositoryBase<T>:IRepositoryBase<T> where T:class
    {
        public ISessionManager SessionManager
        {
            get;
            set;
        }

        protected virtual ISession Session
        {
            get
            {
                return SessionManager.GetSession();
            }
        }

        public T GetObjectByID<U>(U Id)
        {
            return Session.Get<T>(Id);
        }

        public void Add(T instance)
        {
            Session.Save(instance);
            Session.Flush();
        }

        public void Update(T instance)
        {            
            Session.Update(instance);
            Session.Flush();
        }

        public void Delete(T instance)
        {            
            Session.Delete(instance);
            Session.Flush();
        }

        public IList<T> GetAll()
        {
            ICriteria query = Session.CreateCriteria<T>();
            return query.List<T>();
        }

        /// <summary>
        /// Returns a Linq to NHibernate query.
        /// </summary>
        /// <typeparam name="TQuery">The type of domain object that forms the root of the query.</typeparam>
        /// <param name="expansions">A list of path expressions that define which collections and entities
        /// should be expanded by the query. The given paths are eagerly loaded.
        /// </param>
        /// <example>
        /// <code>
        /// var positionsOfPeopleThatBeginWithA = NewQuery( "Employee.Positions.Position"
        /// .Where( person =&gt; person.LastName.StartsWith( "A" )
        /// .ToList();
        /// </code>
        /// </example>
        /// <returns>The query root.</returns>
        protected virtual INHibernateQueryable<TQuery> NewQuery<TQuery>(params string[] expansions)
        {
            var query = Session.Linq<TQuery>();
            expansions.Do(path => query.Expand(path));
            return query;
        }
    }
}
