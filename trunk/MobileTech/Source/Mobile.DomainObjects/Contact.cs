using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class Contact
    {
        public virtual int ID
        {
            get;
            set;
        }


        public virtual string ContactName
        {
            get;
            set;
        }

        public virtual string ContactAddress
        {
            get;
            set;
        }

        public virtual string ContactGoogleAddress
        {
            get;
            set;
        }

        public virtual string ContactPhone
        {
            get;
            set;
        }

        public virtual string ContactEmail
        {
            get;
            set;
        }
    }
}
