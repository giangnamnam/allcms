using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;
using Spring.Context;
using Spring.Context.Support;

namespace MobileTech
{
    // NOTE: If you change the class name "AdministrationService" here, you must also update the reference to "AdministrationService" in Web.config.
    public class AdministrationService : IAdministrationService
    {
        #region Instance
        /// <summary>
        /// Gets an instance of <see cref="type"/>
        /// </summary>
        public static AdministrationService Instance
        {
            get
            {
                /// An instance of Singleton wont be created until the very first 
                /// call to the sealed class. This a CLR optimization that ensure that
                /// we have properly lazy-loading singleton. 
                return AdministrationServiceCreator.CreatorInstance;
            }
        }

        /// <summary>
        /// Sealed class to avoid any heritage from this helper class
        /// </summary>
        private sealed class AdministrationServiceCreator
        {
            // Retrieve a single instance of a Singleton
            private static readonly AdministrationService mInstance = new AdministrationService();

            /// <summary>
            /// Return an instance of the class <see cref="AdministrationService"/>
            /// </summary>
            public static AdministrationService CreatorInstance
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
        private AdministrationService() 
        {
            IApplicationContext context = ContextRegistry.GetContext();
            context.ConfigureObject(this, "AdministrationService");
        }
        #endregion

        public void DoWork()
        {
        }
    }
}
