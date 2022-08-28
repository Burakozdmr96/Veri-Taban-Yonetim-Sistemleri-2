using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Masra_Group
{
    public class MSSQL
    {
        static NpgsqlConnection connect;

        public static bool OpenConnection()
        {
            connect = new NpgsqlConnection(@"Host=localhost;Username=postgres;Password=roben1996;Database=buraksql");
            try
            {
                connect.Open();
                connect.Close();
                return true;
            }
            catch { return false; }
        }

        public static DataTable ExecSelect(string Query)
        {
            OpenConnection();
            connect.Open();
        
            DataTable tableTemp = new DataTable();
            try
            {
               
                using (var cmd = new NpgsqlCommand(Query, connect))
                {
                  
                    NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);

                    DataSet _ds = new DataSet();
                 
                    da.Fill(_ds);

                    try
                    {
                        tableTemp = _ds.Tables[0];
                    }
                    catch 
                    {
                      //  Debug.WriteLine("Error: ---> " + ex.Message);
                    }

                    connect.Close();
                    return tableTemp;
                }
              
              
            }
            catch
            {
                connect.Close();

                return null;
            }
        }


        public static int ExecQuery(string Query)
        {
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.CommandText = Query;
            cmd.Connection = connect;
            int RowsCount;
            try
            {
                connect.Open();
                RowsCount = cmd.ExecuteNonQuery();
                connect.Close();
                return RowsCount;
            }
            catch
            {
                connect.Close();
                return -1;
            }
        }

        public static string temizle(object Text)
        {
            string strReturn = "";
            if (Text != null)
            {
                strReturn = Text.ToString().Trim();
                strReturn = strReturn.Replace("&gt;", "");
                strReturn = strReturn.Replace("&lt;", "");
                strReturn = strReturn.Replace("--", "");
                strReturn = strReturn.Replace("'", "''");
                strReturn = strReturn.Replace("char ", "");
                strReturn = strReturn.Replace("delete ", "");
                strReturn = strReturn.Replace("insert ", "");
                strReturn = strReturn.Replace("update ", "");
                strReturn = strReturn.Replace("select ", "");
                strReturn = strReturn.Replace("truncate ", "");
                strReturn = strReturn.Replace("union ", "");
                strReturn = strReturn.Replace("script ", "");
            }
            return strReturn;

        }
    }
}