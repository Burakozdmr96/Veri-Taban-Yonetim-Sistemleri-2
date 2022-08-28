using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class products : System.Web.UI.Page
    {
        protected DataTable tblgetproducts = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["sub"]))
            {
                string subID = MSSQL.temizle(Request.QueryString["sub"]);
                int sbid = int.Parse(subID);
                tblgetproducts = Functions.GetProductbySubID(sbid);
            }
           else if (!string.IsNullOrEmpty(Request.QueryString["cid"]))
            {string cid = MSSQL.temizle(Request.QueryString["cid"]);
                int CID = int.Parse(cid);

                tblgetproducts = Functions.GetProductbyCategoryORSubID(CID);

            }
            if (string.IsNullOrEmpty(Request.QueryString["cid"]) && string.IsNullOrEmpty(Request.QueryString["sub"]))
            {
                tblgetproducts = Functions.GetProductbyCategoryORSubID();

            }




        }
    }
}