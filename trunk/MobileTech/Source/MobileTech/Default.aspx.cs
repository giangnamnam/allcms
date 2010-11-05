using System;
using System.Collections.Generic;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            IList<Company> list = ProductService.Instance.GetCompany();
        }
    }
}
