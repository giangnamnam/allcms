using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ProductStatusRepository : RepositoryBase<ProductStatus>, IProductStatusRepository
    {
        public IList<ProductStatus> GetProductStatusList()
        {
            ICriteria query = Session.CreateCriteria<ProductStatus>();
            return query.List<ProductStatus>();
            //return NewQuery<ProductStatus>()                
            //    .ToList();
        }
        public bool CheckProductStatusNameExisted(string ProductStatusName, int? excludeProductStatusID)
        {
            ICriteria query = Session.CreateCriteria<ProductStatus>();

            if (excludeProductStatusID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeProductStatusID.Value));
            }
            query.Add(Expression.Eq("ProductStatusName", ProductStatusName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check ProductStatus Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckProductStatusCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<ProductStatus>();
            query.Add(Expression.Eq("ProductStatus.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
