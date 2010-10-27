using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Mobile.DomainObjects;

namespace MobileTech
{
    // NOTE: If you change the interface name "IProductService" here, you must also update the reference to "IProductService" in Web.config.
    [ServiceContract]
    public interface IProductService
    {
        [OperationContract]
        IList<Company> GetCompany();
    }
}
