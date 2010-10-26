using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mobile.Repository;
using Mobile.DomainObjects;

namespace MobileTech
{
    public partial class _Default : System.Web.UI.Page
    {
        public virtual ICompanyRepository CompanyRepository
        {
            get;
            set;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<Company> list= CompanyRepository.GetAll();
        }
    }
}
