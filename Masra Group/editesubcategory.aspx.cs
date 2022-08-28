using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class editesubcategory : System.Web.UI.Page
    {
        static int id { get; set; }
        protected DataTable tblSubCategory = new DataTable();
        protected DataTable tblCategoryByID = new DataTable();
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
                    tblSubCategory = Functions.GetSubCategory(id);
                    tblCategoryByID = Functions.GetCategory(int.Parse(tblSubCategory.Rows[0]["CategoryID"].ToString()));
                    tblCategory = Functions.GetCategory();
                    SubcategoryAR.Text = tblSubCategory.Rows[0]["Name"].ToString();
                    Language.currentLang = "EN";
                    SubCategoryEN.Text = Language.getText(tblSubCategory.Rows[0]["Name"].ToString());
                    SelectSubCategory.DataSource = tblCategory;
                    SelectSubCategory.DataTextField = "Name";
                    SelectSubCategory.DataValueField = "ID";
                    SelectSubCategory.DataBind();
                    SelectSubCategory.Items.Insert(0, new ListItem(tblCategoryByID.Rows[0]["Name"].ToString(), tblCategoryByID.Rows[0]["ID"].ToString()));

                }
            }
            else
            {
                Response.Redirect("/subcategory.aspx");
            }
        }
        protected void UpdateSubcategory(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                id = int.Parse(Request.QueryString["id"]);
                tblSubCategory = Functions.GetSubCategory(id);
                Functions.UpdateSubCategory(tblSubCategory.Rows[0]["Name"].ToString(), SubcategoryAR.Text, SubCategoryEN.Text,SelectSubCategory.SelectedValue, id);
                Response.Redirect("/subcategory.aspx");


            }
        }
    }
}