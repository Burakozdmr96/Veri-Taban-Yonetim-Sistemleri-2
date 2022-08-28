using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class posts : System.Web.UI.Page
    {
        protected DataTable tblProducts = new DataTable(); 
        protected DataTable tblcategory = new DataTable(); 
        protected DataTable tblliscategory = new DataTable(); 
        protected DataTable tblSubcategory = new DataTable(); 
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");
            if (!Page.IsPostBack)
            {
                tblProducts = Functions.GetProducts();

            }
        }
       
    }
}