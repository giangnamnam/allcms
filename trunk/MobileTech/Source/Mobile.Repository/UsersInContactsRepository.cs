using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class UsersInContactsRepository : RepositoryBase<UsersInContacts>, IUsersInContactsRepository
    {
        public IList<UsersInContacts> GetUsersInContactsList(string userName)
        {
            ICriteria query = Session.CreateCriteria<UsersInContacts>();
            if (userName !=string.Empty)
            {
                query.Add(Expression.Eq("UserName", userName));
            }
            return query.List<UsersInContacts>();
            //return NewQuery<UsersInContacts>()                
            //    .ToList();
        }
    }
}
