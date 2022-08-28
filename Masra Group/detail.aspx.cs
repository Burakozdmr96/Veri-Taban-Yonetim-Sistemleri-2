using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Masra_Group
{
    public partial class detail : System.Web.UI.Page
    {
        protected DataTable tblgetImages = new DataTable();
        protected DataTable tblgetproduct = new DataTable();
        protected DataTable tblgetsimilirproduct = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request.QueryString.Get("id")))
            {
                Response.Redirect("./default.aspx");
            }
            else
            {
                string id = Request.QueryString.Get("id");
                tblgetImages = Functions.GetProductImagesByID(id);
                tblgetproduct = Functions.GetProductbyID(id);
                
            }
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
              
                client.Credentials = new System.Net.NetworkCredential("user@masragroup.com", "mohammad@33");
                client.EnableSsl = false;
                mail.IsBodyHtml = true;
                client.Send(mail);
                client.Port = 25;
                client.Dispose();
                Name.Text = "";
                Email.Text = "";
                Phone.Text = "";
                Country.Text ="";
                Time.Text = "";
                Messege.Text = "";
                Sucss.Text =Masra_Group.Language.getText("Added");
            }
            catch (Exception ex)
            {


                Sucss.Text = Masra_Group.Language.getText("notadded");
            }
        }
        protected void Submit1(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient client = new SmtpClient("relay-hosting.secureserver.net");
                mail.From = new MailAddress("user@masragroup.com");
                mail.To.Add("maha.alturk@gmail.com");
                 mail.Subject = "Masra Group User";
                mail.Body = " Name:" + Name1.Text + "<br> Email:  " + Email1.Text + "<br> Telephone number: " + Phone1.Text + "<br> Country: " + Country1.Text + "<br> Convenience time to call you: " + Time1.Text + "<br> Type of service requested:  " + Messege.Text;
                mail.IsBodyHtml = true;
                client.Port = 25;
                client.Credentials = new System.Net.NetworkCredential("user@masragroup.com", "mohammad@33");
                client.EnableSsl = false;
                mail.IsBodyHtml = true;
                client.Send(mail);
           
                client.Dispose();
                Name1.Text = "";
                Email1.Text = "";
                Phone1.Text = "";
                Country1.Text ="";
                Time1.Text = "";
                Messege1.Text = "";
                Sucss11.Text =Masra_Group.Language.getText("Added");
            }
            catch (Exception ex)
            {


                Sucss11.Text = Masra_Group.Language.getText("notadded");
            }
        }
        }
    }