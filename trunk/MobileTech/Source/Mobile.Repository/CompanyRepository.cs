using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class CompanyRepository : RepositoryBase<Company>, ICompanyRepository
    {
        public IList<Company> GetCompanyList()
        {
            return NewQuery<Company>()                
                .ToList();
        }
        public bool CheckCompanyNameExisted(string companyName, int? excludeCompanyID)
        {
            ICriteria query = Session.CreateCriteria<Company>();

            if (excludeCompanyID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeCompanyID.Value));
            }
            query.Add(Expression.Eq("CompanyName", companyName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check Company Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckCompanyCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<Company>();
            query.Add(Expression.Eq("Company.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
