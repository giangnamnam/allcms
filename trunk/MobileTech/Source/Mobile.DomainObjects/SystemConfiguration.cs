using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class SystemConfiguration
    {
        public virtual int ID
        {
            get;
            set;
        }


        public virtual string AdminName
        {
            get;
            set;
        }

        public virtual string FeedbackEmail
        {
            get;
            set;
        }

        public virtual string About
        {
            get;
            set;
        }

        public virtual string ShortAbout
        {
            get;
            set;
        }

        public virtual string Repair
        {
            get;
            set;
        }
        public virtual string Unclock
        {
            get;
            set;
        }
        public virtual string Ipad
        {
            get;
            set;
        }
    }
}
