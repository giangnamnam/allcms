using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IContactRepository : IRepositoryBase<Contact>
    {
        IList<Contact> GetContactList();

        bool CheckContactNameExisted(string ContactName, int? excludeContactID);

        bool CheckContactCanDelete(int id);
    }
}
