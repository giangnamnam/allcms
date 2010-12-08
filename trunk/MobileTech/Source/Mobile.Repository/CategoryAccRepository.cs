using System;
using System.Collections.Generic;
using System.Text;
using Mobile.DomainObjects;
using NHibernate;
using NHibernate.Criterion;

namespace Mobile.Repository
{
    public class CategoryAccRepository : RepositoryBase<CategoryAcc>, ICategoryAccRepository
    {
        public IList<CategoryAcc> GetCategoryAccList()
        {
            ICriteria query = Session.CreateCriteria<CategoryAcc>();
            return query.List<CategoryAcc>();
            //return NewQuery<CategoryAcc>()                
            //    .ToList();
        }
        public bool CheckCategoryAccNameExisted(string CategoryAccName, int? excludeCategoryAccID)
        {
            ICriteria query = Session.CreateCriteria<CategoryAcc>();

            if (excludeCategoryAccID.HasValue)
            {
                query.Add(!Expression.Eq("ID", excludeCategoryAccID.Value));
            }
            query.Add(Expression.Eq("CategoryAccName", CategoryAccName));

            return query.List().Count > 0 ? true : false;
        }


        /// <summary>
        /// Check CategoryAcc Can Delete.
        /// </summary>
        /// <param name="office"></param>
        /// <returns>True: Can delete; False: Can not delete.</returns>
        public bool CheckCategoryAccCanDelete(int id)
        {
            ICriteria query = Session.CreateCriteria<Accessories>();
            query.Add(Expression.Eq("Accessories.ID", id));
            return query.List().Count <= 0 ? true : false;
        }       
    }
}
