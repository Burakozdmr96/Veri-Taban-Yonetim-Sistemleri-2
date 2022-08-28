using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class deletecategory : System.Web.UI.Page
    {
        public int CategoryID;
        protected DataTable tblcategory = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");

        }

        protected void Submit(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request.QueryString.Get("id")))
            {

             Response.Redirect("addcategory.aspx");
            }
            else
            {
                CategoryID = int.Parse(Request.QueryString.Get("id"));
                int.TryParse(Request.QueryString.Get("id").ToString(), out CategoryID);
                tblcategory = Functions.GetCategory(CategoryID);
                Functions.deletelang(tblcategory.Rows[0]["Name"].ToString());
                Functions.deletecategory(CategoryID);
                Response.Redirect("./addcategory.aspx");
            }
        }
     

    }
}