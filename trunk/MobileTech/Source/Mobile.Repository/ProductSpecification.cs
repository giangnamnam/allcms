using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ProductSpecificationRepository : RepositoryBase<ProductSpecification>, IProductSpecificationRepository
    {
        public IList<ProductSpecification> GetProductSpecificationList()
        {
            ICriteria query = Session.CreateCriteria<ProductSpecification>();
            return query.List<ProductSpecification>();
            //return NewQuery<ProductSpecification>()                
            //    .ToList();
        }
        public bool CheckProductSpecificationNameExisted(string ProductSpecificationName, int? excludeProductSpecificationID)
        {
            ICriteria query = Session.CreateCriteria<ProductSpecification>();

            if (excludeProductSpecificationID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeProductSpecificationID.Value));
            }
            query.Add(Expression.Eq("SpecificationName", ProductSpecificationName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check ProductSpecification Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckProductSpecificationCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<ProductSpecification>();
            query.Add(Expression.Eq("ProductSpecification.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
