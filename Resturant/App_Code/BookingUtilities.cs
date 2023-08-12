using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookingUtilities
/// </summary>
public class BookingUtilities
{

    public static string getBookingLink(object tableno)
    {
        if (isBooked(tableno))
            return "Already Booked";
        return "<a  href=\"bookingmaster.aspx?tableno=" + tableno + "\">Book</a>";

    }

    public static bool isBooked(object tableno)
    {
        try
        {
            string status = getstatusBytableno(tableno);
            if (status.Equals("Booked"))

            return true;
            return false;
        }
        catch (Exception ex)
        {
            return true;
        }

    }
    public static String getstatusBytableno(object tableno)
    {
        try
        {
            DataSet1TableAdapters.tabledataTableAdapter da = new DataSet1TableAdapters.tabledataTableAdapter();
            return "" + da.getstatusBytableno(Convert.ToInt32(tableno));

        }
        catch (Exception ex)
        {
            return ex.Message;
        }


    }
}
    