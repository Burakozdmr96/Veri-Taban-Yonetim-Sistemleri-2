using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class setmap : System.Web.UI.Page
    {
        protected DataTable tblgetmap = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            tblgetmap = Functions.GetMap();
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");

            if (!Page.IsPostBack)
            {
                Map.Text = tblgetmap.Rows[0]["Map"].ToString();
            }
            }
        protected void Submit(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Functions.UpdateMap(Map.Text);
                Response.Write("<script language='javascript'>alert('Updated successfully');</script>");
            }
        }
    }
}