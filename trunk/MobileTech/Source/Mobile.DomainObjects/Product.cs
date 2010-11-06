using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class Product
    {
        public virtual int ID
        {
            get;
            set;
        }


        public virtual string ProductName
        {
            get;
            set;
        }

        public virtual decimal ProductPrice
        {
            get;
            set;
        }

        public virtual string ProductImage
        {
            get;
            set;
        }
    }
}
