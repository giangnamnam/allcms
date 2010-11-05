using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;
using Mobile.DomainObjects;
using Spring.Context;
using Spring.Context.Support;
using Mobile.Repository;

namespace MobileTech
{
    // NOTE: If you change the class name "ProductService" here, you must also update the reference to "ProductService" in Web.config.
    public class ProductService : IProductService
    {
        #region Instance
        /// <summary>
        /// Gets an instance of <see cref="type"/>
        /// </summary>
        public static ProductService Instance
        {
            get
            {
                /// An instance of Singleton wont be created until the very first 
                /// call to the sealed class. This a CLR optimization that ensure that
                /// we have properly lazy-loading singleton. 
                return ProductServiceCreator.CreatorInstance;
            }
        }

        /// <summary>
        /// Sealed class to avoid any heritage from this helper class
        /// </summary>
        private sealed class ProductServiceCreator
        {
            // Retrieve a single instance of a Singleton
            private static readonly ProductService mInstance = new ProductService();

            /// <summary>
            /// Return an instance of the class <see cref="ProductService"/>
            /// </summary>
            public static ProductService CreatorInstance
            {
                get { return mInstance; }
            }
        }
        #endregion

        #region Private constructor
        /// <summary>
        /// Private constructor to avoid other instantiation
        /// This must be present otherwise the compiler provide 
        /// a default public constructor
        /// </summary>
        private ProductService() 
        { 
            IApplicationContext context = ContextRegistry.GetContext();
            context.ConfigureObject(this, "ProductService");
        }
        #endregion
       
        #region Properties

        public virtual ICompanyRepository CompanyRepository
        {
            get;
            set;
        }

        #endregion

        public IList<Company> GetCompany()
        {
            return CompanyRepository.GetAll();
        }
    }
}
