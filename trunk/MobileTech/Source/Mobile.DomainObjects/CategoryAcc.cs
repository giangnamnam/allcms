using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class CategoryAcc
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string CategoryAccName
        {
            get;
            set;
        }

        public virtual string CategoryAccDescription
        {
            get;
            set;
        }
    }
}
