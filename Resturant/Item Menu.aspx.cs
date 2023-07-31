using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Item_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.itemmenuTableAdapter da = new DataSet1TableAdapters.itemmenuTableAdapter();
            da.Insert(Convert.ToInt32(txtcategoryno.Text), txtname.Text, Convert.ToInt32(txtprice.Text), txtpacking.Text);
            lbl.Text = "Item Number is " + da.maxitem();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtcategoryno.Text = "";
        txtname.Text = "";
        txtprice.Text = "";
        txtpacking.Text = "";
        lbl.Text = "";
    }
}