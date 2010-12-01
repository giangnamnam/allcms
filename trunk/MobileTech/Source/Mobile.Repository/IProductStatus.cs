using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IProductStatusRepository : IRepositoryBase<ProductStatus>
    {
        IList<ProductStatus> GetProductStatusList();

        bool CheckProductStatusNameExisted(string ProductStatusName, int? excludeProductStatusID);

        bool CheckProductStatusCanDelete(int id);
    }
}
