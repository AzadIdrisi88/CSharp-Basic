using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resturant_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.RestaurantInfoTableAdapter da = new DataSet1TableAdapters.RestaurantInfoTableAdapter();
            DataSet1.RestaurantInfoDataTable dt = da.GetDataByRestaurent();
            if (dt.Rows.Count <= 0)
            {
                throw new Exception("Error");

            }
            DataSet1.RestaurantInfoRow dr = (DataSet1.RestaurantInfoRow)dt.Rows[0];
            lblRname.Text = dr.RestaurantName;
            lblnumber.Text = "" + dr.PhoneNumber;
            lbladdress.Text = dr.Address;
            lblpin.Text = dr.Pincode;
            lbltag.Text = dr.Tagline;
        }
        catch(Exception ex)
        {
            lbl.Text = ex.Message;
            
        
        }

        
        
    }
}