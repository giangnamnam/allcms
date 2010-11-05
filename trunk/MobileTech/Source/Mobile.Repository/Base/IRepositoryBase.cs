using System;
using System.Collections.Generic;
using System.Text;

namespace Mobile.Repository
{
    public interface IRepositoryBase<T> where T : class
    {
        ISessionManager SessionManager
        {
            get;
            set;
        }

        /// <summary>
        /// Get object by Id
        /// </summary>
        /// <typeparam name="U"></typeparam>
        /// <param name="Id"></param>
        /// <returns></returns>
        T GetObjectByID<U>(U Id);

        /// <summary>
        /// Add a new entity
        /// </summary>
        /// <param name="instance"></param>
        void Add(T instance);

        /// <summary>
        /// Update an existing entity
        /// </summary>
        /// <param name="instance"></param>
        void Update(T instance);

        /// <summary>
        /// Delete an existing entity
        /// </summary>
        /// <param name="instance"></param>
        void Delete(T instance);

        /// <summary>
        /// Get all entity
        /// </summary>
        /// <returns></returns>
        IList<T> GetAll();
    }
}
