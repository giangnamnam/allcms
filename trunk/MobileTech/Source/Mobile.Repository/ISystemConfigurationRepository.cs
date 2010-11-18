using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface ISystemConfigurationRepository : IRepositoryBase<SystemConfiguration>
    {
        IList<SystemConfiguration> GetSystemConfigurationList();
    }
}
