using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ServiceRepository : RepositoryBase<Service>, IServiceRepository
    {
        public IList<Service> GetServiceList()
        {
            ICriteria query = Session.CreateCriteria<Service>();
            return query.List<Service>();
            //return NewQuery<Service>()                
            //    .ToList();
        }
        public bool CheckServiceNameExisted(string ServiceName, int? excludeServiceID)
        {
            ICriteria query = Session.CreateCriteria<Service>();

            if (excludeServiceID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeServiceID.Value));
            }
            query.Add(Expression.Eq("ServiceName", ServiceName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check Service Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckServiceCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<Service>();
            query.Add(Expression.Eq("Service.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
