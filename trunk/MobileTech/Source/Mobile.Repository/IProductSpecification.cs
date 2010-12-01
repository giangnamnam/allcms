using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IProductSpecificationRepository : IRepositoryBase<ProductSpecification>
    {
        IList<ProductSpecification> GetProductSpecificationList();

        bool CheckProductSpecificationNameExisted(string ProductSpecificationName, int? excludeProductSpecificationID);

        bool CheckProductSpecificationCanDelete(int id);
    }
}
