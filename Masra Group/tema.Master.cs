using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class tema : System.Web.UI.MasterPage
    {
        protected DataTable tblgetcategory = new DataTable();
        protected DataTable tblgetSubcategory = new DataTable();
        protected DataTable tblmap = new DataTable();
        protected DataTable tblSocial = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Language"] == null)
            {
                Session["Language"] = "AR";
            }

            else
            {
                if (Request.QueryString.Get("Lang") != null)
                {
                    if (Request.QueryString.Get("Lang") == "EN")
                    {
                        Session["Language"] = "EN";
                    }
                    else if (Request.QueryString.Get("Lang") == "AR")
                    {
                        Session["Language"] = "AR";
                    }
                    else
                    {
                        Session["Language"] = "AR";
                    }
                }
            }
            Language.currentLang = Session["Language"].ToString();
            tblmap = Functions.GetMap();
            tblgetcategory = Functions.GetCategory();
            tblSocial = Functions.GetSocial();
        }
    
    }
}