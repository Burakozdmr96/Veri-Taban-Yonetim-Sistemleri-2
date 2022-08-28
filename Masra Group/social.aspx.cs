using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class social : System.Web.UI.Page
    {
        protected DataTable tblSocial = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache["User"] == null)
                Response.Redirect("./admin.aspx");

            if (!Page.IsPostBack)
            {
                tblSocial = Functions.GetSocial();
                Facbook.Text = tblSocial.Rows[0]["Facebook"].ToString();
                Youtube.Text = tblSocial.Rows[0]["Youtube"].ToString();
                Instagram.Text = tblSocial.Rows[0]["Instagram"].ToString();
                Twitter.Text = tblSocial.Rows[0]["Twitter"].ToString();
                Google.Text = tblSocial.Rows[0]["Google"].ToString();
                Facbook.Text = tblSocial.Rows[0]["Facebook"].ToString();

            }
        }
        protected void Submit(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Functions.UpdateSocial(Facbook.Text, Youtube.Text, Instagram.Text, Google.Text, Twitter.Text);
                Response.Write("<script language='javascript'>alert('Updated successfully');</script>");
            }
        }
    }
}