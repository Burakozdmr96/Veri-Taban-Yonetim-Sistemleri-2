using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class deleteslider : System.Web.UI.Page
    {
        protected DataTable tblSlider = new DataTable();
        string SliderID;
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
                SliderID = Request.QueryString.Get("id");
               tblSlider= Functions.GetSliderByID(SliderID);
                Functions.deletelang(tblSlider.Rows[0]["Title"].ToString());
                Functions.deletelang(tblSlider.Rows[0]["Description"].ToString());
                Functions.deletSlider(SliderID);
                Response.Redirect("./slider.aspx");
            }
        }

    }
}