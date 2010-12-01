using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class ProductSpecification
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string SpecificationName
        {
            get;
            set;
        }

        public virtual string SpecificationDescription
        {
            get;
            set;
        }
    }
}
