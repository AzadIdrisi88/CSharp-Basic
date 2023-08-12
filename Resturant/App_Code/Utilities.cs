using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utilities
/// </summary>
public class Utilities
{
   
   
    
    
    
    
    public static String getcategorynameBycategorynumber(object categorynumber)
    {

        try
        {
            DataSet1TableAdapters.menucategoryTableAdapter da = new DataSet1TableAdapters.menucategoryTableAdapter();
            String s = "" + da.getcategorynameBycategorynumber(Convert.ToInt32(categorynumber));
            return s;


        }
        catch
        {
            return
                "error";
        }

    }


    public static bool getBook { get; set; }
}