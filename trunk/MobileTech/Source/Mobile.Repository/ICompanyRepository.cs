using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface ICompanyRepository : IRepositoryBase<Company>
    {
        IList<Company> GetCompanyList();

        bool CheckCompanyNameExisted(string companyName, int? excludeCompanyID);

        bool CheckCompanyCanDelete(int id);
    }
}
