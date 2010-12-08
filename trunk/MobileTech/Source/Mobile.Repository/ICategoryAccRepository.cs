using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface ICategoryAccRepository : IRepositoryBase<CategoryAcc>
    {
        IList<CategoryAcc> GetCategoryAccList();

        bool CheckCategoryAccNameExisted(string CategoryAccName, int? excludeCategoryAccID);

        bool CheckCategoryAccCanDelete(int id);
    }
}
