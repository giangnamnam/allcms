using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class ProductStatus
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string ProductStatusName
        {
            get;
            set;
        }

        public virtual string ProductStatusDescription
        {
            get;
            set;
        }
    }
}
