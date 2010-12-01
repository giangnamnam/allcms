using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class ProductImage
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string ProductImageName
        {
            get;
            set;
        }

        public virtual string ProductImageDescription
        {
            get;
            set;
        }
    }
}
