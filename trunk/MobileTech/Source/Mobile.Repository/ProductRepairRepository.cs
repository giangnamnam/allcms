using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class ProductRepairRepository : RepositoryBase<ProductRepair>, IProductRepairRepository
    {
        public IList<ProductRepair> GetProductRepairList(string name, string repairNo, int? status, int? shopId, DateTime? fromDate, DateTime? toDate)
        {
            ICriteria query = Session.CreateCriteria<ProductRepair>();
            if (status.HasValue)
            {
                query.Add(Expression.Eq("Status", status.Value));
            }

            if (name != string.Empty && name.Length > 0)
            {
                query.Add(Expression.Like("CustomerName", string.Format("{0}%", name)));
            }
            if (repairNo != string.Empty && repairNo.Length > 0)
            {
                query.Add(Expression.Like("RepairNo", string.Format("{0}%", repairNo)));
            }

            if (shopId.HasValue)
            {
                query.Add(Expression.Eq("Contact.ID", shopId.Value));
            }

            if (fromDate.HasValue && toDate.HasValue)
            {
                query.Add(Expression.Between("CustomerDate", fromDate.Value, toDate.Value));
            }

            query.AddOrder(new Order("ModifiedDate", true));
            return query.List<ProductRepair>();
        }

        public string GetProductRepairMaxID()
        {
            IQuery query = Session.CreateQuery("Select Max(ID) from ProductRepair");
            if (query.List().Count > 0 && query.List()[0] != null)
                return string.Format("{0:0000000000}", (int)query.List()[0] + 1);
            else
                return "0000000001";
        }

        public bool CheckProductRepairNameExisted(string ProductRepairName, int? excludeProductRepairID)
        {
            ICriteria query = Session.CreateCriteria<ProductRepair>();

            if (excludeProductRepairID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeProductRepairID.Value));
            }
            query.Add(Expression.Eq("ProductRepairName", ProductRepairName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check ProductRepair Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckProductRepairCanDelete(int id)
        {
            return true;

        }
    }
}
