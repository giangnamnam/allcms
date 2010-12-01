using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IFeatureTypeRepository : IRepositoryBase<FeatureType>
    {
        IList<FeatureType> GetFeatureTypeList();

        bool CheckFeatureTypeNameExisted(string FeatureTypeName, int? excludeFeatureTypeID);

        bool CheckFeatureTypeCanDelete(int id);
    }
}
