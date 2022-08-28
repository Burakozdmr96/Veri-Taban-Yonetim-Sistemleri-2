using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class addmymail : System.Web.UI.Page
    {
        protected DataTable tblmail = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");
            if (String.IsNullOrEmpty(Request.QueryString.Get("id")))
            {

                Response.Redirect("./addmail.aspx");
            }
            else
            {
             string id= Request.QueryString.Get("id");

              tblmail =  Functions.GetMailByID(id);
                Functions.SetImail(tblmail.Rows[0]["Mail"].ToString());
                Functions.DeleteImail(id);
             Response.Redirect("./addmail.aspx");

            }


        }
    }
}