using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class ProductColor
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string ColorName
        {
            get;
            set;
        }

        public virtual string ColorDescription
        {
            get;
            set;
        }
    }
}
