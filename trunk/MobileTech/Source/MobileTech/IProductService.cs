using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;
using Mobile.DomainObjects;

namespace MobileTech
{
    // NOTE: If you change the interface name "IProductService" here, you must also update the reference to "IProductService" in Web.config.
    public interface IProductService
    {
        IList<Company> GetCompany();
        IList<Product> GetProduct();
        IList<Service> GetService();
        IList<Contact> GetContact();
        IList<SystemConfiguration> GetSystemConfiguration();
        void UpdateSystemConfiguration(SystemConfiguration config);
    }
}
