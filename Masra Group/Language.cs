using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Masra_Group
{
    public class Language
    { //burda language classi var kanka sabit language degerimiz var bitane currentlang bunu Kolon adi yapiyoruz 
        //mesela ingilizce verileri cekceksek currentLang= "EN" arapca icin "AR" olmasi lazim degeri
        public static string currentLang { get; set; }


        //bu fonksiyona gelecek degeri veriyoruz 
        public static string getText(string Value)
        {
            DataTable table = new DataTable();
            table = MSSQL.ExecSelect(String.Format("select {0} from Language where Value = N'{1}'", Language.currentLang, Value));
            //kontrol ediyorum bu deger varmiymis diye varsa donduruyorum
            if (table !=null && table.Rows.Count >0 )
            {
                return table.Rows[0][0].ToString();
            }
            //yoksa default value donduruyoruz
            else
                return Value;
        }
    }
}