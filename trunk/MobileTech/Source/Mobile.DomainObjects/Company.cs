using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    [DataContract]
    public class Company
    {
        [DataMember]
        public virtual int ID
        {
            get;
            set;
        }

        [DataMember]
        public virtual string CompanyName
        {
            get;
            set;
        }
    }
}
