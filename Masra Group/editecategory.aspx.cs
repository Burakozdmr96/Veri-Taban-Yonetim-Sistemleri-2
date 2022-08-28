using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class editecategory : System.Web.UI.Page
    {static int id { get; set; }
        protected DataTable tblCategory = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");

            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
            {
                if (!Page.IsPostBack)
                {
                    id = int.Parse(Request.QueryString["id"]);
                    tblCategory = Functions.GetCategory(id);
                    categoryAR.Text = tblCategory.Rows[0]["Name"].ToString();
                    Language.currentLang = "EN";
                    CategoryEN.Text = Language.getText(tblCategory.Rows[0]["Name"].ToString());
                }
            }
            else
            {
                Response.Redirect("./addcategory.aspx");
            }
        }

        protected void Updatecategory(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                id = int.Parse(Request.QueryString["id"]);
                tblCategory = Functions.GetCategory(id);
                Functions.UpdateCategory(tblCategory.Rows[0]["Name"].ToString(), categoryAR.Text, CategoryEN.Text, id);
                Response.Redirect("./addcategory.aspx");


            }
        }


    }
}