using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class Service
    {
        public virtual int ID
        {
            get;
            set;
        }

        public virtual string ServiceName
        {
            get;
            set;
        }

        public virtual string ServicePrice
        {
            get;
            set;
        }

        public virtual string ImageLink
        {
            get;
            set;
        }

        public virtual string ShortContent
        {
            get;
            set;
        }

        public virtual string DetailContent
        {
            get;
            set;
        }

        public virtual int ServiceStaus
        {
            get;
            set;
        }
        public virtual DateTime CreatedDate
        {
            get;
            set;
        }
    }
}
