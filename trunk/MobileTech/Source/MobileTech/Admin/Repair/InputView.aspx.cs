using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileTech.Admin.Repair
{
    public partial class InputView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GenerateMsWordDoc(object sender, EventArgs e)
        {
            //string strBody = "<html>" +
            //    "<body>" +
            //        "<div>Your name is: <b>" + "Thanh Tú" + "</b></div>" +
            //        "<table width='100%' style='background-color:#cfcfcf;'><tr><td>1st Cell body data</td><td>2nd cell body data</td></tr></table>" +
            //        "Ms Word document generated successfully." +
            //    "</body>" +
            //    "</html>";
            //string fileName = "MsWordSample.doc";
            //// You can add whatever you want to add as the HTML and it will be generated as Ms Word docs
            //Response.AppendHeader("Content-Type", "application/msword");
            //Response.AppendHeader("Content-disposition", "attachment; filename=" + fileName);
            //Response.Write(strBody);


        }


    }
}
