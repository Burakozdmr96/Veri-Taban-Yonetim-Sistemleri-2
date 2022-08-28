using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class editepost : System.Web.UI.Page
    {
        protected DataTable tblproducts = new DataTable();
        protected DataTable tbllangTitle = new DataTable();
        protected DataTable tbllangDescription = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
            {
                if (Cache["User"] == null)
                    Response.Redirect("./admin.aspx");
                string id = Request.QueryString["id"];
                tblproducts = Functions.GetProductbyID(id);
                string Title = tblproducts.Rows[0]["Title"].ToString();
                string Descptn = tblproducts.Rows[0]["Description"].ToString();
                tbllangTitle = Functions.GetLang(Title);

                tbllangDescription = Functions.GetLang(Descptn);

                if (!Page.IsPostBack)
                {
                    TitleAR.Text = tblproducts.Rows[0]["Title"].ToString();
                    DescriptionAR.Text = tblproducts.Rows[0]["Description"].ToString();
                     TitleEN.Text = tbllangTitle.Rows[0]["EN"].ToString();
                    DescriptionEN.Text = tbllangDescription.Rows[0]["EN"].ToString();



                }
            }
            else
            {
                Response.Redirect("./posts.aspx");
            }
        }

        protected void Submit(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
            {
                string id = Request.QueryString["id"];
            Functions.UpdaLang(tblproducts.Rows[0]["Title"].ToString(), TitleAR.Text, TitleEN.Text);
            Functions.UpdaLang(tblproducts.Rows[0]["Description"].ToString(), DescriptionAR.Text, DescriptionEN.Text);
                Functions.Updateproduct(TitleAR.Text, DescriptionAR.Text, id);
                Response.Redirect("./posts.aspx");
            }

        }

    }
}