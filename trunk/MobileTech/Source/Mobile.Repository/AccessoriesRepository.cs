using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class AccessoriesRepository : RepositoryBase<Accessories>, IAccessoriesRepository
    {
        public IList<Accessories> GetAccessoriesList()
        {
            ICriteria query = Session.CreateCriteria<Accessories>();
            query.AddOrder(Order.Asc("CreatedDate"));
            return query.List<Accessories>();
        }
        public bool CheckAccessoriesNameExisted(string AccessoriesName, int? excludeAccessoriesID)
        {
            ICriteria query = Session.CreateCriteria<Accessories>();

            if (excludeAccessoriesID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeAccessoriesID.Value));
            }
            query.Add(Expression.Eq("AccessoriesName", AccessoriesName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check Accessories Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckAccessoriesCanDelete(int id)
        {
            return true;
        }       
    }
}
