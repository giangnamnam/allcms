using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;
using Mobile.DomainObjects;
using Spring.Context;
using Spring.Context.Support;
using Mobile.Repository;
using System.ComponentModel;

namespace MobileTech
{
    // NOTE: If you change the class name "ProductService" here, you must also update the reference to "ProductService" in Web.config.
    [DataObject(true)]  // This attribute allows the ObjectDataSource wizard to see this class
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
        public virtual IProductRepository ProductRepository
        {
            get;
            set;
        }

        public virtual IServiceRepository ServiceRepository
        {
            get;
            set;
        }
        public virtual ICategoryAccRepository CategoryAccRepository
        {
            get;
            set;
        }

        public virtual IAccessoriesRepository AccessoriesRepository
        {
            get;
            set;
        }
        public virtual IContactRepository ContactRepository
        {
            get;
            set;
        }

        public virtual IProductRepairRepository ProductRepairRepository
        {
            get;
            set;
        }

        public virtual ISystemConfigurationRepository SystemConfigurationRepository
        {
            get;
            set;
        }

        public virtual IFeatureTypeRepository FeatureTypeRepository
        {
            get;
            set;
        }
        public virtual IProductSpecificationRepository ProductSpecificationRepository
        {
            get;
            set;
        }
        public virtual IProductColorRepository ProductColorRepository
        {
            get;
            set;
        }
        public virtual IProductStatusRepository ProductStatusRepository
        {
            get;
            set;
        }
        #endregion

        #region Company
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<Company> GetCompany()
        {
            return Instance.CompanyRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateCompany(int id, string companyName, string companyDescription)
        {
            Company company = Instance.CompanyRepository.GetObjectByID<int>(id);
            if (company != null)
            {
                company.CompanyName = companyName;
                company.CompanyDescription = companyDescription;
                Instance.CompanyRepository.Update(company);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteCompany(int id)
        {
            Company company = Instance.CompanyRepository.GetObjectByID<int>(id);
            if (company != null)
            {
                Instance.CompanyRepository.Delete(company);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertCompany(string companyName, string companyDescription)
        {
            Company company = new Company();
            company.CompanyName = companyName;
            company.CompanyDescription = companyDescription;
            Instance.CompanyRepository.Add(company);
        }
        #endregion

        #region Product
        public IList<Product> GetProduct()
        {
            return ProductRepository.GetAll();
        }

        #endregion

        #region Service
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<Service> GetService()
        {
            return Instance.ServiceRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static Service GetService(int id)
        {
            return Instance.ServiceRepository.GetObjectByID(id);
        }

        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateService(Service service)
        {
            if (service != null)
            {
                Instance.ServiceRepository.Update(service);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteService(int id)
        {
            Service Service = Instance.ServiceRepository.GetObjectByID<int>(id);
            if (Service != null)
            {
                Instance.ServiceRepository.Delete(Service);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertService(Service service)
        {
            Instance.ServiceRepository.Add(service);
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool CheckServiceNameExisted(string serviceName, int? excludeServiceID)
        {
            return Instance.ServiceRepository.CheckServiceNameExisted(serviceName, excludeServiceID);
        }
        #endregion

        #region CategoryAcc
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<CategoryAcc> GetCategoryAcc()
        {
            return Instance.CategoryAccRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static CategoryAcc GetCategoryAcc(int id)
        {
            return Instance.CategoryAccRepository.GetObjectByID(id);
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateCategoryAcc(int id, string CategoryAccName, string CategoryAccDescription)
        {
            CategoryAcc CategoryAcc = Instance.CategoryAccRepository.GetObjectByID<int>(id);
            if (CategoryAcc != null)
            {
                CategoryAcc.CategoryAccName = CategoryAccName;
                CategoryAcc.CategoryAccDescription = CategoryAccDescription;
                Instance.CategoryAccRepository.Update(CategoryAcc);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteCategoryAcc(int id)
        {
            CategoryAcc CategoryAcc = Instance.CategoryAccRepository.GetObjectByID<int>(id);
            if (CategoryAcc != null)
            {
                Instance.CategoryAccRepository.Delete(CategoryAcc);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertCategoryAcc(string CategoryAccName, string CategoryAccDescription)
        {
            CategoryAcc CategoryAcc = new CategoryAcc();
            CategoryAcc.CategoryAccName = CategoryAccName;
            CategoryAcc.CategoryAccDescription = CategoryAccDescription;
            Instance.CategoryAccRepository.Add(CategoryAcc);
        }
        #endregion

        #region Accessories
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<Accessories> GetAccessories()
        {
            return Instance.AccessoriesRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static Accessories GetAccessories(int id)
        {
            return Instance.AccessoriesRepository.GetObjectByID(id);
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<Accessories> GetAccessoriesByCategory(int categoryID)
        {
            return Instance.AccessoriesRepository.GetAccessoriesByCategory(categoryID);
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateAccessories(Accessories Accessories)
        {
            if (Accessories != null)
            {
                Instance.AccessoriesRepository.Update(Accessories);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteAccessories(int id)
        {
            Accessories Accessories = Instance.AccessoriesRepository.GetObjectByID<int>(id);
            if (Accessories != null && Instance.AccessoriesRepository.CheckAccessoriesCanDelete(id))
            {
                Instance.AccessoriesRepository.Delete(Accessories);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertAccessories(Accessories Accessories)
        {
            Instance.AccessoriesRepository.Add(Accessories);
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static bool CheckAccessoriesNameExisted(string AccessoriesName, int? excludeAccessoriesID)
        {
            return Instance.AccessoriesRepository.CheckAccessoriesNameExisted(AccessoriesName, excludeAccessoriesID);
        }
        #endregion

        #region Contact
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<Contact> GetContact()
        {
            return Instance.ContactRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateContact(int id, string ContactName, string ContactAddress,
            string ContactGoogleAddress, string ContactPhone, string ContactEmail)
        {
            Contact contact = Instance.ContactRepository.GetObjectByID<int>(id);
            if (contact != null)
            {
                contact.ContactName = ContactName;
                contact.ContactAddress = ContactAddress;
                contact.ContactGoogleAddress = ContactGoogleAddress;
                contact.ContactPhone = ContactPhone;
                contact.ContactEmail = ContactEmail;

                Instance.ContactRepository.Update(contact);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteContact(int id)
        {
            Contact Contact = Instance.ContactRepository.GetObjectByID<int>(id);
            if (Contact != null)
            {
                Instance.ContactRepository.Delete(Contact);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertContact(string ContactName, string ContactAddress,
            string ContactGoogleAddress, string ContactPhone, string ContactEmail)
        {
            Contact contact = new Contact();
            contact.ContactName = ContactName;
            contact.ContactAddress = ContactAddress;
            contact.ContactGoogleAddress = ContactGoogleAddress;
            contact.ContactPhone = ContactPhone;
            contact.ContactEmail = ContactEmail;
            Instance.ContactRepository.Add(contact);
        }
        #endregion

        #region ProductRepair
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<ProductRepair> GetProductRepair()
        {
            return Instance.ProductRepairRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static string GetProductRepairMaxID()
        {
            return Instance.ProductRepairRepository.GetProductRepairMaxID();
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<ProductRepair> GetProductRepair(string name, string repairNo, int? status)
        {
            return Instance.ProductRepairRepository.GetProductRepairList(name, repairNo,status);
        }
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static ProductRepair GetProductRepair(int id)
        {
            return Instance.ProductRepairRepository.GetObjectByID(id);
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateProductRepair(ProductRepair repair)
        {
            //ProductRepair repair = Instance.ProductRepairRepository.GetObjectByID<int>(id);
            if (repair != null)
            {
                //repair.ProductRepairName = ProductRepairName;
                //repair.ProductRepairAddress = ProductRepairAddress;
                //repair.ProductRepairGoogleAddress = ProductRepairGoogleAddress;
                //repair.ProductRepairPhone = ProductRepairPhone;
                //repair.ProductRepairEmail = ProductRepairEmail;

                Instance.ProductRepairRepository.Update(repair);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteProductRepair(int id)
        {
            ProductRepair ProductRepair = Instance.ProductRepairRepository.GetObjectByID<int>(id);
            if (ProductRepair != null)
            {
                Instance.ProductRepairRepository.Delete(ProductRepair);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertProductRepair(ProductRepair repair)
        {
            //ProductRepair repair = new ProductRepair();
            //repair.ProductRepairName = ProductRepairName;
            //repair.ProductRepairAddress = ProductRepairAddress;
            //repair.ProductRepairGoogleAddress = ProductRepairGoogleAddress;
            //repair.ProductRepairPhone = ProductRepairPhone;
            //repair.ProductRepairEmail = ProductRepairEmail;
            Instance.ProductRepairRepository.Add(repair);
        }
        #endregion

        #region SystemConfiguration
        public static SystemConfiguration GetSystemConfiguration()
        {
            SystemConfiguration result = new SystemConfiguration();
            IList<SystemConfiguration> list = Instance.SystemConfigurationRepository.GetAll();
            if (list != null && list.Count > 0)
            {
                result = list[0];
            }
            return result;
        }

        public static void UpdateAbout(string shortAbout, string about, string repair, string unclock, string ipad)
        {
            SystemConfiguration config = GetSystemConfiguration();
            config.About = about;
            config.Ipad = ipad;
            config.Repair = repair;
            config.ShortAbout = shortAbout;
            config.Unclock = unclock;
            if (config.ID > 0)
            {
                Instance.SystemConfigurationRepository.Update(config);
            }
            else
            {
                Instance.SystemConfigurationRepository.Add(config);
            }
        }

        public static void UpdateVisitorCount(int count)
        {
            SystemConfiguration config = GetSystemConfiguration();
            config.VisitorCount = count;
            if (config.ID > 0)
            {
                Instance.SystemConfigurationRepository.Update(config);
            }
            else
            {
                Instance.SystemConfigurationRepository.Add(config);
            }
        }
        #endregion

        #region FeatureType
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<FeatureType> GetFeatureType()
        {
            return Instance.FeatureTypeRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateFeatureType(int id, string FeatureTypeName, string FeatureTypeDescription)
        {
            FeatureType FeatureType = Instance.FeatureTypeRepository.GetObjectByID<int>(id);
            if (FeatureType != null)
            {
                FeatureType.FeatureTypeName = FeatureTypeName;
                FeatureType.FeatureTypeDescription = FeatureTypeDescription;
                Instance.FeatureTypeRepository.Update(FeatureType);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteFeatureType(int id)
        {
            FeatureType FeatureType = Instance.FeatureTypeRepository.GetObjectByID<int>(id);
            if (FeatureType != null)
            {
                Instance.FeatureTypeRepository.Delete(FeatureType);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertFeatureType(string FeatureTypeName, string FeatureTypeDescription)
        {
            FeatureType FeatureType = new FeatureType();
            FeatureType.FeatureTypeName = FeatureTypeName;
            FeatureType.FeatureTypeDescription = FeatureTypeDescription;
            Instance.FeatureTypeRepository.Add(FeatureType);
        }
        #endregion

        #region ProductSpecification
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<ProductSpecification> GetProductSpecification()
        {
            return Instance.ProductSpecificationRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateProductSpecification(int id, string SpecificationName, string SpecificationDescription)
        {
            ProductSpecification ProductSpecification = Instance.ProductSpecificationRepository.GetObjectByID<int>(id);
            if (ProductSpecification != null)
            {
                ProductSpecification.SpecificationName = SpecificationName;
                ProductSpecification.SpecificationDescription = SpecificationDescription;
                Instance.ProductSpecificationRepository.Update(ProductSpecification);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteProductSpecification(int id)
        {
            ProductSpecification ProductSpecification = Instance.ProductSpecificationRepository.GetObjectByID<int>(id);
            if (ProductSpecification != null)
            {
                Instance.ProductSpecificationRepository.Delete(ProductSpecification);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertProductSpecification(string SpecificationName, string SpecificationDescription)
        {
            ProductSpecification ProductSpecification = new ProductSpecification();
            ProductSpecification.SpecificationName = SpecificationName;
            ProductSpecification.SpecificationDescription = SpecificationDescription;
            Instance.ProductSpecificationRepository.Add(ProductSpecification);
        }
        #endregion

        #region ProductColor
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<ProductColor> GetProductColor()
        {
            return Instance.ProductColorRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateProductColor(int id, string ColorName, string ColorDescription)
        {
            ProductColor ProductColor = Instance.ProductColorRepository.GetObjectByID<int>(id);
            if (ProductColor != null)
            {
                ProductColor.ColorName = ColorName;
                ProductColor.ColorDescription = ColorDescription;
                Instance.ProductColorRepository.Update(ProductColor);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteProductColor(int id)
        {
            ProductColor ProductColor = Instance.ProductColorRepository.GetObjectByID<int>(id);
            if (ProductColor != null)
            {
                Instance.ProductColorRepository.Delete(ProductColor);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertProductColor(string ColorName, string ColorDescription)
        {
            ProductColor ProductColor = new ProductColor();
            ProductColor.ColorName = ColorName;
            ProductColor.ColorDescription = ColorDescription;
            Instance.ProductColorRepository.Add(ProductColor);
        }
        #endregion

        #region ProductStatus
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static IList<ProductStatus> GetProductStatus()
        {
            return Instance.ProductStatusRepository.GetAll();
        }
        [DataObjectMethod(DataObjectMethodType.Update, true)]
        public static void UpdateProductStatus(int id, string ProductStatusName, string ProductStatusDescription)
        {
            ProductStatus ProductStatus = Instance.ProductStatusRepository.GetObjectByID<int>(id);
            if (ProductStatus != null)
            {
                ProductStatus.ProductStatusName = ProductStatusName;
                ProductStatus.ProductStatusDescription = ProductStatusDescription;
                Instance.ProductStatusRepository.Update(ProductStatus);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public static void DeleteProductStatus(int id)
        {
            ProductStatus ProductStatus = Instance.ProductStatusRepository.GetObjectByID<int>(id);
            if (ProductStatus != null)
            {
                Instance.ProductStatusRepository.Delete(ProductStatus);
            }

        }
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public static void InsertProductStatus(string ProductStatusName, string ProductStatusDescription)
        {
            ProductStatus ProductStatus = new ProductStatus();
            ProductStatus.ProductStatusName = ProductStatusName;
            ProductStatus.ProductStatusDescription = ProductStatusDescription;
            Instance.ProductStatusRepository.Add(ProductStatus);
        }
        #endregion
    }
}
