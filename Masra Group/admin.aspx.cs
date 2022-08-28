using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            string email;
            string pass;
            email = MSSQL.temizle(Email.Text);
            pass = MSSQL.temizle(password.Text);
            DataTable temp = new DataTable();
            temp = Functions.TestLogin(email,pass);

            if (temp != null && temp.Rows.Count > 0)
            {
                Cache["User"] = temp.Rows[0]["UserName"].ToString();
                Response.Redirect("./posts.aspx");
            }

            else
            {
                Response.Redirect("/admin.aspx");
            }
        }
    }
}