using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class subcategory : System.Web.UI.Page
    {
        protected static DataTable tblSubCategory = new DataTable();
        protected static DataTable tblCategory = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
            {
                Response.Redirect("./admin.aspx");
            }
            else { 
            tblSubCategory = Functions.GetSubCategory();
            tblCategory = Functions.GetCategory();

            if (!Page.IsPostBack)
            {
                tblSubCategory = Functions.GetSubCategory();
                SelectSubCategory.DataSource =tblCategory;
                SelectSubCategory.DataTextField = "Name";
                SelectSubCategory.DataValueField = "ID";
                SelectSubCategory.DataBind();
                SelectSubCategory.Items.Insert(0, new ListItem("--Select Name--", "0"));

            }
            }
        }

        protected void AddSubcategory(object sender, EventArgs e)
        {
            Functions.AddSubCategory(SubcategoryAR.Text,SelectSubCategory.SelectedValue);
            Functions.AddLanguage(SubcategoryAR.Text,SubCategoryEN.Text);
            Response.Redirect("./subcategory.aspx");


        }

    }
}