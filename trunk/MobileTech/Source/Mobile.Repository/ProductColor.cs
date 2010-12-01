using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ProductColorRepository : RepositoryBase<ProductColor>, IProductColorRepository
    {
        public IList<ProductColor> GetProductColorList()
        {
            ICriteria query = Session.CreateCriteria<ProductColor>();
            return query.List<ProductColor>();
            //return NewQuery<ProductColor>()                
            //    .ToList();
        }
        public bool CheckProductColorNameExisted(string ProductColorName, int? excludeProductColorID)
        {
            ICriteria query = Session.CreateCriteria<ProductColor>();

            if (excludeProductColorID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeProductColorID.Value));
            }
            query.Add(Expression.Eq("ProductColorName", ProductColorName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check ProductColor Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckProductColorCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<ProductColor>();
            query.Add(Expression.Eq("ProductColor.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
