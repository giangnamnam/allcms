using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class FeatureTypeRepository : RepositoryBase<FeatureType>, IFeatureTypeRepository
    {
        public IList<FeatureType> GetFeatureTypeList()
        {
            ICriteria query = Session.CreateCriteria<FeatureType>();
            return query.List<FeatureType>();
            //return NewQuery<FeatureType>()                
            //    .ToList();
        }
        public bool CheckFeatureTypeNameExisted(string FeatureTypeName, int? excludeFeatureTypeID)
        {
            ICriteria query = Session.CreateCriteria<FeatureType>();

            if (excludeFeatureTypeID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeFeatureTypeID.Value));
            }
            query.Add(Expression.Eq("FeatureTypeName", FeatureTypeName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check FeatureType Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckFeatureTypeCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<FeatureType>();
            query.Add(Expression.Eq("FeatureType.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
