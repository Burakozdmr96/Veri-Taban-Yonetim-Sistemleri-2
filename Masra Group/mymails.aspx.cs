using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class mymails : System.Web.UI.Page
    {
        protected DataTable tblmymails = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");
            tblmymails = Functions.GetAddedMails();
        }
    }
}