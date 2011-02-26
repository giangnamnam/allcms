using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;

namespace Mobile.Repository
{
    public interface IProductRepairRepository : IRepositoryBase<ProductRepair>
    {
        IList<ProductRepair> GetProductRepairList(string name, string repairNo, int? status, int? shopId, DateTime? fromDate, DateTime? toDate);
       string GetProductRepairMaxID();

        bool CheckProductRepairNameExisted(string ProductRepairName, int? excludeProductRepairID);

        bool CheckProductRepairCanDelete(int id);
    }
}
