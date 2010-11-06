using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ProductRepository : RepositoryBase<Product>, IProductRepository
    {
        public IList<Product> GetProductList()
        {
            ICriteria query = Session.CreateCriteria<Product>();
            return query.List<Product>();
            //return NewQuery<Product>()                
            //    .ToList();
        }
        public bool CheckProductNameExisted(string ProductName, int? excludeProductID)
        {
            ICriteria query = Session.CreateCriteria<Product>();

            if (excludeProductID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeProductID.Value));
            }
            query.Add(Expression.Eq("ProductName", ProductName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check Product Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckProductCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<Product>();
            query.Add(Expression.Eq("Product.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
