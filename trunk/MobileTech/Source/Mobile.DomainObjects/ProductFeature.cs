using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class ProductFeature
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string ProductFeatureName
        {
            get;
            set;
        }

        public virtual string ProductFeatureDescription
        {
            get;
            set;
        }
    }
}
