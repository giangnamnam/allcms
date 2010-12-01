using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class FeatureType
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string FeatureTypeName
        {
            get;
            set;
        }

        public virtual string FeatureTypeDescription
        {
            get;
            set;
        }
    }
}
