using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Masra_Group
{
    public partial class slider : System.Web.UI.Page
    {
        protected DataTable tblslider = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");
            tblslider = Functions.GetSlider();
        }
        protected void Submit(object sender, EventArgs e)
        {
            Guid myimgname = Guid.NewGuid();
            string filename = Path.GetFileName(image.FileName);
            image.SaveAs(Server.MapPath("images/slides/" + myimgname + filename));
            string MyImage = "images/slides/"+ myimgname + filename;
            Functions.SetSlider(TitleAR.Text, TitleEN.Text, DescriptionAR.Text, DescriptionEN.Text, URL.Text,MyImage);
            Response.Redirect("./slider.aspx");
        }
    }
}