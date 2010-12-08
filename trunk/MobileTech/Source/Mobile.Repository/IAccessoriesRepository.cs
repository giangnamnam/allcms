using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IAccessoriesRepository : IRepositoryBase<Accessories>
    {
        IList<Accessories> GetAccessoriesList();
        IList<Accessories> GetAccessoriesByCategory(int categoryID);
        bool CheckAccessoriesNameExisted(string AccessoriesName, int? excludeAccessoriesID);

        bool CheckAccessoriesCanDelete(int id);
    }
}
