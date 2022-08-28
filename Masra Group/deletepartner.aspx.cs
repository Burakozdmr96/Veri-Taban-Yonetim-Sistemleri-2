using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class deletepartner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");
            string CategoryID;
                if (String.IsNullOrEmpty(Request.QueryString.Get("id")))
                {

                    Response.Redirect("partners.aspx");
                }
                else
                {
                CategoryID = Request.QueryString.Get("id");
                  
                   
               
                    Functions.deletepartneer(CategoryID);
                    Response.Redirect("./partners.aspx");
                }
            
        }
    }
}