using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class Company
    {
        public virtual int ID
        {
            get;
            set;
        }

       
        public virtual string CompanyName
        {
            get;
            set;
        }
    }
}
