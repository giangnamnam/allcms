using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Repository;
using Mobile.DomainObjects;

using Spring.Context;
using Spring.Context.Support;
namespace MobileTech
{
    public partial class _Default : System.Web.UI.Page
    {
        public virtual IProductService ProductService
        {
            get;
            set;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ProductService = new ProductService();

            IList<Company> list = ProductService.GetCompany();
        }
    }
}
