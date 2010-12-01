using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IProductColorRepository : IRepositoryBase<ProductColor>
    {
        IList<ProductColor> GetProductColorList();

        bool CheckProductColorNameExisted(string ProductColorName, int? excludeProductColorID);

        bool CheckProductColorCanDelete(int id);
    }
}
