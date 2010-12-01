using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;

namespace MobileTech
{
    public partial class _Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewContact.DataSource= ProductService.GetContact();
                GridViewContact.DataBind();
            }
        }
        protected void btnSend_Click(object sender, EventArgs e)
        {

        }

        #region Send Mail
        string GetBody()
        {
            StringBuilder result = new StringBuilder();
            
            return result.ToString();
        }
        void SendMail()
        {
            string subject = "[MobileTech] - Contact";

            string mailServer = ConfigurationManager.AppSettings["MailServer"];
            string mailAccount = ConfigurationManager.AppSettings["MailAccount"];
            string mailAccountPass = ConfigurationManager.AppSettings["MailAccountPass"];
            string mailCredential = ConfigurationManager.AppSettings["Credentials"];
            string from = ConfigurationManager.AppSettings["MailFrom"];
            string to = ConfigurationManager.AppSettings["MailTo"];
            
            SmtpClient mailClient = new SmtpClient();
            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            try
            {
                MailAddress address = new MailAddress(from, "Customer", Encoding.UTF8);
                mailClient.Host = mailServer;
                mailClient.Port = 25;

                msg.From = address;
                msg.To.Add(to);
                msg.Subject = subject;
                msg.IsBodyHtml = true;
                msg.BodyEncoding = System.Text.Encoding.UTF8;
                msg.Body = GetBody();

                #region Credentials
                if (mailCredential != null && mailCredential != string.Empty)
                {
                    bool credential = mailClient.UseDefaultCredentials;
                    bool.TryParse(mailCredential, out credential);
                    mailClient.UseDefaultCredentials = credential;
                }
                if (mailClient.UseDefaultCredentials == false)
                {
                    mailClient.Credentials = new NetworkCredential(mailAccount, mailAccountPass);
                }
                #endregion

                mailClient.Send(msg);
            }
            catch (Exception ex)
            {
                string a = ex.Message;
            }
        }
        #endregion
    }
}
