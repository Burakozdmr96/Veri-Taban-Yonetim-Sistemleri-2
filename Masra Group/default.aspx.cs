using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masra_Group
{
    public partial class _default : System.Web.UI.Page
    {
        protected DataTable tblgetslider = new DataTable();
        protected DataTable tblposts = new DataTable();
        protected DataTable tblgetCategory = new DataTable();
        protected DataTable tblmap = new DataTable();
        protected DataTable tblgetpartners = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
           tblgetslider = Functions.GetSlider();
            tblmap = Functions.GetMap();
            tblposts = Functions.GetProducts("4") ;
            tblgetCategory = Functions.GetCategory();
            tblgetpartners = Functions.Getpartners();
        }
        protected void Sendmai(object sender, EventArgs e)
        {
            string mail = MSSQL.temizle(mymail.Text);
            Functions.SetNewImail(mail);
            mymail.Text = "";
        }
    }
}