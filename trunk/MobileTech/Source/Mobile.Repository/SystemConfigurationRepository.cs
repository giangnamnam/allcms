using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class SystemConfigurationRepository : RepositoryBase<SystemConfiguration>, ISystemConfigurationRepository
    {
        public IList<SystemConfiguration> GetSystemConfigurationList()
        {
            ICriteria query = Session.CreateCriteria<SystemConfiguration>();
            return query.List<SystemConfiguration>();
        }
        
    }
}
