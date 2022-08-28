using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class postdelete : System.Web.UI.Page
    {
        string PostID;
        protected DataTable tblpost = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");
            if (String.IsNullOrEmpty(Request.QueryString.Get("id")))
            {

                Response.Redirect("./posts.aspx");
            }
        
        }
        protected void Submit(object sender, EventArgs e)
        {
           
                PostID = Request.QueryString.Get("id");
                tblpost = Functions.GetProductbyID(PostID);
                Functions.deletelang(tblpost.Rows[0]["Title"].ToString());
                Functions.deletpost(PostID);
                Response.Redirect("./posts.aspx");
        }

    }
}