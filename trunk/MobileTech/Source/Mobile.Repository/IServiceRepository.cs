using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IServiceRepository : IRepositoryBase<Service>
    {
        IList<Service> GetServiceList();

        bool CheckServiceNameExisted(string ServiceName, int? excludeServiceID);

        bool CheckServiceCanDelete(int id);
    }
}
