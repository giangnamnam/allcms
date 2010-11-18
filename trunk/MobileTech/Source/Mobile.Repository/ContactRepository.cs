using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ContactRepository : RepositoryBase<Contact>, IContactRepository
    {
        public IList<Contact> GetContactList()
        {
            ICriteria query = Session.CreateCriteria<Contact>();
            return query.List<Contact>();
            //return NewQuery<Contact>()                
            //    .ToList();
        }
        public bool CheckContactNameExisted(string ContactName, int? excludeContactID)
        {
            ICriteria query = Session.CreateCriteria<Contact>();

            if (excludeContactID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeContactID.Value));
            }
            query.Add(Expression.Eq("ContactName", ContactName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check Contact Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckContactCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<Contact>();
            query.Add(Expression.Eq("Contact.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
