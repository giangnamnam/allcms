using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IUsersInContactsRepository : IRepositoryBase<UsersInContacts>
    {
        IList<UsersInContacts> GetUsersInContactsList(string userName);
    }
}
