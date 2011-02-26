using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.Serialization;

namespace Mobile.DomainObjects
{
    public class UsersInContacts
    {
        public virtual int ID
        {
            get;
            set;
        }


        public virtual Contact Contact
        {
            get;
            set;
        }

        public virtual string UserName
        {
            get;
            set;
        }        
    }
}
