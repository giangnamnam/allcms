using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IProductRepository : IRepositoryBase<Product>
    {
        IList<Product> GetProductList();

        bool CheckProductNameExisted(string ProductName, int? excludeProductID);

        bool CheckProductCanDelete(int id);
    }
}
