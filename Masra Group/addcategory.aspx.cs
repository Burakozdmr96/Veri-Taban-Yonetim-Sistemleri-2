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
    public partial class addcategory : System.Web.UI.Page
    {
        protected DataTable tblCategory = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");
        
                tblCategory = Functions.GetCategory();
        }

        protected void Addcategory(object sender, EventArgs e)
        {
            Guid myimgname = Guid.NewGuid();
            string filename = Path.GetFileName(image.FileName);
            image.SaveAs(Server.MapPath("images/" + myimgname + filename));
            string MyImage = "images/" + myimgname + filename;
            Functions.AddCategory(categoryAR.Text,MyImage);
            Functions.AddLanguage(categoryAR.Text,CategoryEN.Text);
            Response.Redirect("./addcategory.aspx");
           

        }
    }
}