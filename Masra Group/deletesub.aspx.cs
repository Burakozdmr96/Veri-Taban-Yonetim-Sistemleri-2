using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class deletesub : System.Web.UI.Page
    {
        protected DataTable tblsubcategory = new DataTable();
        public int SubCategoryID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");

        }
        protected void Submit(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(Request.QueryString.Get("id")))
            {

                Response.Redirect("./subcategory.aspx");
            }
            else
            {
                SubCategoryID = int.Parse(Request.QueryString.Get("id"));
                int.TryParse(Request.QueryString.Get("id").ToString(), out SubCategoryID);
                tblsubcategory = Functions.GetSubCategory(SubCategoryID);
                Functions.deletelang(tblsubcategory.Rows[0]["Name"].ToString());
                Functions.deleteSubcategory(SubCategoryID);
                Response.Redirect("./subcategory.aspx");
            }
        }
    }
}