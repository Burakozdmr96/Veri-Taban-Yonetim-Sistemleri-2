using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class addnewpost : System.Web.UI.Page
    {
        protected DataTable tblliscategory = new DataTable();
        protected DataTable tblSubcategory = new DataTable();
        protected DataTable tblLaspost = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");

            if (!Page.IsPostBack)
            {
                tblliscategory = Functions.GetCategory();
                DCategory.DataSource = tblliscategory;
                DCategory.DataTextField = "Name";
                DCategory.DataValueField = "ID";
                DCategory.DataBind();
                DCategory.Items.Insert(0, new ListItem("--Select Name--", "0"));


            }
        }

        protected void GetSubCategoy(object sender, EventArgs e)
        {
            
           
            tblSubcategory = Functions.GetSubCategoryOrderByCategory(DCategory.SelectedValue);
            DSubCategory.DataSource = tblSubcategory;
            DSubCategory.DataTextField = "Name";
            DSubCategory.DataValueField = "ID";
            DSubCategory.DataBind();
            DSubCategory.Items.Insert(0, new ListItem("--Select Name--", "0"));

        }
        protected void Submit(object sender, EventArgs e)
        {

            //Get Filename from fileupload control
          
          
                string savedfile;
            int index = 0;
          
                foreach (HttpPostedFile file in image.PostedFiles)
                {
                Guid myImgName = Guid.NewGuid();
               
                if (index==0)
                {
                    file.SaveAs(Server.MapPath("images/" + myImgName + file.FileName));
                    
                    savedfile = "images/" + myImgName + file.FileName;
                    Functions.AddPosts(DCategory.SelectedValue, DSubCategory.SelectedValue, TitleAR.Text, TitleEN.Text, DescriptionAR.Text, DescriptionEN.Text, savedfile);

                    index++;
                }
                else
                {
                    file.SaveAs(Server.MapPath("images/" + myImgName + file.FileName));
                    savedfile = "images/" + myImgName + file.FileName;
                    tblLaspost = Functions.GetProducts();
                    
                    Functions.SetImage(savedfile, tblLaspost.Rows[0]["ID"].ToString());
                }

            }
            Response.Redirect("./posts.aspx");
                }
          

        }


    }
