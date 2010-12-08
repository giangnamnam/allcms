using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class Accessories
    {
        public virtual int ID
        {
            get;
            set;
        }

        public virtual string AccessoriesName
        {
            get;
            set;
        }

        public virtual string AccessoriesPrice
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

        public virtual int AccessoriesStaus
        {
            get;
            set;
        }

        public virtual CategoryAcc CategoryAcc
        {
            get;
            set;
        }
        public virtual DateTime? CreatedDate
        {
            get;
            set;
        }
    }
}
