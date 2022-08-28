using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Masra_Group
{
    public class Functions
    {

        public static DataTable TestLogin(string user ,string pass)
        {
            return MSSQL.ExecSelect(String.Format("select * from AdminUsers where UserName ='{0}' and Password ='{1}'",user,pass));
        }
        public static DataTable GetCategory()
        {
            return MSSQL.ExecSelect(String.Format("select * from Categories"));
        }
   
        public static DataTable GetSocial()
        {
            return MSSQL.ExecSelect(String.Format("select * from Social order by ID DESC"));
        }
        public static DataTable GetSlider()
        {
            return MSSQL.ExecSelect(String.Format("select * from Silder order by ID DESC"));
        }
        public static DataTable GetMap()
        {
            return MSSQL.ExecSelect(String.Format("select * from Map order by ID DESC"));
        }
        public static DataTable GetCategory(int CID)
        {
            return MSSQL.ExecSelect(String.Format("select * from Categories where ID= {0}",CID));
        }
        public static DataTable GetCategory(String CID)
        {
            return MSSQL.ExecSelect(String.Format("select * from Categories where ID= {0}",CID));
        }
        public static DataTable GetSliderByID(String ID)
        {
            return MSSQL.ExecSelect(String.Format("select * from Silder where ID= {0}",ID));
        }

        public static int deletecategory(int ID)
        {
            return MSSQL.ExecQuery(String.Format("DELETE FROM Categories WHERE ID = {0}",ID));

        }
        public static int deletepartneer(string ID)
        {
            return MSSQL.ExecQuery(String.Format("DELETE FROM Partners WHERE ID = {0}", ID));

        }
        public static int deletSlider(string ID)
        {
            return MSSQL.ExecQuery(String.Format("DELETE FROM Silder WHERE ID ={0}", ID));

        }
        public static int deletpost(string ID)
        {
            return MSSQL.ExecQuery(String.Format("DELETE FROM Products WHERE ID = {0}", ID));

        }
        public static int deletelang(string TitleAR)
        {
            return MSSQL.ExecQuery(String.Format("DELETE FROM Language where Value =N'{0}'",TitleAR));

        }
        public static int AddCategory(string categoryName,string Image)
        {
            
            return MSSQL.ExecQuery(String.Format("insert into Categories (Name,Image) values (N'{0}',N'{1}')", categoryName,Image));
            
        }
        public static int AddPartner(string Image)
        {
            
            return MSSQL.ExecQuery(String.Format("insert into Partners (Image) values (N'{0}')",Image));
            
        }
        public static int UpdateCategory(string oldcategoyName , string categoryNameAR, string categoryNameEN ,int id)
        {

            MSSQL.ExecQuery(string.Format("update Language set Value= N'{0}' , AR= N'{1}' , EN= N'{2}' where Value= N'{3}'",categoryNameAR,categoryNameAR,categoryNameEN,oldcategoyName));
            return MSSQL.ExecQuery(String.Format("update Categories set Name=(N'{0}') where ID={1}", categoryNameAR,id));
            
        }
        public static int AddLanguage(string ValueAR,string ValueEN)
        {
            return MSSQL.ExecQuery(String.Format("insert into Language (Value ,AR,EN ) values (N'{0}',N'{1}',N'{2}')", ValueAR,ValueAR,ValueEN));

        }

        public static DataTable GetSubCategory()
        {
            return MSSQL.ExecSelect(String.Format("select * from SubCategory order by ID DESC"));
        }
        public static DataTable Getpartners()
        {
            return MSSQL.ExecSelect(String.Format("select * from Partners order by ID DESC"));
        }
        public static DataTable GetLang(string value)
        {
            return MSSQL.ExecSelect(String.Format("select * from Language where Value = N'{0}'",value));
        }
        public static DataTable GetSubCategory(int ID)
        {
            return MSSQL.ExecSelect(String.Format("select * from SubCategory where ID={0} order by ID DESC",ID));
        }
        public static DataTable GetSubCategoryOrderByCategory(string CID)
        {
            return MSSQL.ExecSelect(String.Format("select * from SubCategory where CategoryID={0} order by ID DESC", CID));
        }
        public static DataTable GetSubCategory(string CID)
        {
            return MSSQL.ExecSelect(String.Format("select * from SubCategory where ID={0} order by ID DESC",CID));
        }

        public static int AddSubCategory(string SubcategoryName ,string categoryid)
        {

            return MSSQL.ExecQuery(String.Format("insert into SubCategory (Name,CategoryID) values (N'{0}',N'{1}')",SubcategoryName,categoryid));

        }
        public static int UpdateSubCategory(string oldSubcategoyName, string SubcategoryNameAR, string SubcategoryNameEN, string categoryid ,int SubCID)
        {

            MSSQL.ExecQuery(string.Format("update Language set Value= N'{0}' , AR= N'{1}' , EN= N'{2}' where Value= N'{3}'", SubcategoryNameAR , SubcategoryNameAR, SubcategoryNameEN, oldSubcategoyName));
            return MSSQL.ExecQuery(String.Format("update SubCategory set Name=(N'{0}') ,CategoryID=(N'{1}') where ID={2}", SubcategoryNameAR,categoryid,SubCID));

        }
        public static int UpdaLang(string oldValue, string VAlueAR, string ValueEN)
        {
           return MSSQL.ExecQuery(string.Format("update Language set Value= N'{0}' , AR= N'{1}' , EN= N'{2}' where Value= N'{3}'",VAlueAR,VAlueAR,ValueEN,oldValue));
        }
        public static int UpdateSocial(string Facebook, string Youtube, string Instagram ,string Google ,string Twitter)
        {
           return MSSQL.ExecQuery(string.Format("update Social set Facebook= N'{0}' , Twitter = N'{1}' ,Instagram= N'{2}',Youtube= N'{3}',Google= N'{4}'",Facebook,Twitter,Instagram,Youtube,Google));
        }
        public static int UpdateMap(string MapUrl)
        {
           return MSSQL.ExecQuery(string.Format("update Map set Map= N'{0}'", MapUrl));
        }
        public static int Updateproduct(string Title, string Description, string pID)
        {
           return MSSQL.ExecQuery(string.Format("update Products set Title =N'{0}',Description= N'{1}' where ID= {2} ",Title,Description,pID));
        }
        public static int deleteSubcategory(int ID)
        {
            return MSSQL.ExecQuery(String.Format("DELETE FROM SubCategory WHERE ID = {0}", ID));

        }
        public static DataTable GetProducts()
        {
            return MSSQL.ExecSelect(String.Format("select * from Products order by ID DESC"));
        }
        public static DataTable GetProductsBYCID(string CID)
        {
            return MSSQL.ExecSelect(String.Format("select top 3* from Products where CategoryID='{0}' order by ID DESC", CID));
        }
        public static DataTable GetProducts(string RowNum)
        {
            return MSSQL.ExecSelect(String.Format("select Top {0}* from Products order by ID DESC",RowNum));
        }
        public static DataTable GetMails()
        {
            return MSSQL.ExecSelect(String.Format("select * from NewMails order by ID DESC"));
        }
        public static DataTable GetAddedMails()
        {
            return MSSQL.ExecSelect(String.Format("select * from AddedMails order by ID DESC"));
        }
        public static DataTable GetMailByID(string ID)
        {
            return MSSQL.ExecSelect(String.Format("select * from NewMails where ID={0} order by ID DESC",ID));
        }
        public static DataTable GetProductbyID(string ID)
        {
            return MSSQL.ExecSelect(String.Format("select * from Products where ID='{0}' order by ID DESC",ID));
        }
        public static DataTable GetProductbySubID(int SubID)
        {
            return MSSQL.ExecSelect(String.Format("select * from Products where SubID ='{0}' order by ID DESC", SubID));
        }
        public static DataTable GetProductbyCategoryORSubID(int CID)
        {
            return MSSQL.ExecSelect(String.Format("select * from Products where CategoryID='{0}' order by ID DESC", CID));
        }
        public static DataTable GetProductbyCategoryORSubID()
        {
            return MSSQL.ExecSelect(String.Format("select * from Products order by ID DESC"));
        }
        public static DataTable GetProductImagesByID(string ID)
        {
            return MSSQL.ExecSelect(String.Format("SELECT Image FROM Products where Products.ID={0} UNION SELECT  Image from Images where Images.ProductID={1}",ID,ID));
        }
        public static int AddPosts(string Category, string SubCategory, string TitleAR,string TitleEN ,string DescriptionAR, string DescriptionEN ,string Image)
        {
            MSSQL.ExecQuery(string.Format("insert into Language (Value ,AR,EN ) values (N'{0}',N'{1}',N'{2}')",TitleAR,TitleAR,TitleEN));
            MSSQL.ExecQuery(string.Format("insert into Language (Value ,AR,EN ) values (N'{0}',N'{1}',N'{2}')",DescriptionAR,DescriptionAR,DescriptionEN));
            return MSSQL.ExecQuery(String.Format("insert into Products(CategoryID, SubID, Title, Description, Image) values(N'{0}', N'{1}', N'{2}', N'{3}',N'{4}')",Category,SubCategory,TitleAR,DescriptionAR,Image));

        }
        public static int SetImage(string Image, string ProductID)
        {
            return MSSQL.ExecQuery(String.Format("insert into Images (Image,ProductID) values(N'{0}', N'{1}')", Image,ProductID));

        }
        public static int SetImail(string mail)
        {
            return MSSQL.ExecQuery(String.Format("insert into AddedMails(Mail) values(N'{0}')", mail));

        }
        public static int SetNewImail(string mail)
        {
            return MSSQL.ExecQuery(String.Format("insert into NewMails(Mail) values(N'{0}')", mail));

        }
        public static int SetSlider(string TitleAR ,string TitleEN,string DescriptionAR, string DescriptionEN, string URl , string Image)
        {
            MSSQL.ExecQuery(string.Format("insert into Language (Value ,AR,EN ) values (N'{0}',N'{1}',N'{2}')", TitleAR, TitleAR, TitleEN));
            MSSQL.ExecQuery(string.Format("insert into Language (Value ,AR,EN ) values (N'{0}',N'{1}',N'{2}')", DescriptionAR, DescriptionAR, DescriptionEN));
            return MSSQL.ExecQuery(String.Format("insert into Silder(Title,Description,URL,Image) values(N'{0}',N'{1}',N'{2}',N'{3}')", TitleAR,DescriptionAR,URl,Image));

        }
        public static int DeleteImail(string ID)
        {
            return MSSQL.ExecQuery(String.Format("Delete NewMails where ID ={0}", ID));

        }


    }
}