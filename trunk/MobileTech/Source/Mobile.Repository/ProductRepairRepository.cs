using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ProductRepairRepository : RepositoryBase<ProductRepair>, IProductRepairRepository
    {
        public IList<ProductRepair> GetProductRepairList()
        {
            ICriteria query = Session.CreateCriteria<ProductRepair>();
            return query.List<ProductRepair>();
            //return NewQuery<ProductRepair>()                
            //    .ToList();
        }
        public bool CheckProductRepairNameExisted(string ProductRepairName, int? excludeProductRepairID)
        {
            ICriteria query = Session.CreateCriteria<ProductRepair>();

            if (excludeProductRepairID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeProductRepairID.Value));
            }
            query.Add(Expression.Eq("ProductRepairName", ProductRepairName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check ProductRepair Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckProductRepairCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<ProductRepair>();
            query.Add(Expression.Eq("ProductRepair.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
