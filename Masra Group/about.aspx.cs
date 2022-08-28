using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class about : System.Web.UI.Page
    {
        protected DataTable tblmap = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            tblmap = Functions.GetMap();

        }

        protected void Submit(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient client = new SmtpClient("relay-hosting.secureserver.net");
                mail.From = new MailAddress("user@masragroup.com");
                mail.To.Add("maha.alturk@gmail.com");
                mail.Subject = "Masra Group User";
                mail.Body = " Name:" + Name.Text + "<br> Email:  " + Email.Text + "<br> Telephone number: " + Phone.Text + "<br> Country: " + Country.Text + "<br> Convenience time to call you: " + Time.Text + "<br> Type of service requested:  " + Messege.Text;
                mail.IsBodyHtml = true;
                client.Port = 25;
                client.Credentials = new System.Net.NetworkCredential("user@masragroup.com", "mohammad@33");
                client.EnableSsl = false;
                mail.IsBodyHtml = true;
                client.Send(mail);

                client.Dispose();
                Name.Text = "";
                Email.Text = "";
                Phone.Text = "";
                Country.Text = "";
                Time.Text = "";
                Messege.Text = "";
            }
            catch (Exception ex)
            {

                sucses.Text = Masra_Group.Language.getText("notadded");
            }
        }
    }
}