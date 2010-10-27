using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Mobile.DomainObjects;
using Spring.Context;
using Spring.Context.Support;
using Mobile.Repository;

namespace MobileTech
{
    // NOTE: If you change the class name "ProductService" here, you must also update the reference to "ProductService" in Web.config.
    public class ProductService : IProductService
    {
        #region Contructor
        public ProductService()
        {
            IApplicationContext context = ContextRegistry.GetContext();
            context.ConfigureObject(this, "ProductService");
        }
        #endregion

        #region Properties

        public virtual ICompanyRepository CompanyRepository
        {
            get;
            set;
        }

        #endregion

        public IList<Company> GetCompany()
        {
            return CompanyRepository.GetAll();
        }
    }
}
