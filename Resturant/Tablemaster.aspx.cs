using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tablemaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";

            DataSet1TableAdapters.tabledataTableAdapter da = new DataSet1TableAdapters.tabledataTableAdapter();
            da.Insert(txttablename.Text, Convert.ToInt32(txtseat.Text),"free",txtcomment.Text);
            GridView1.DataBind();
            lbl.Text = "Table Number is " + da.Maxtable();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        
        }
        
        
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txttablename.Text = "";
        txtseat.Text = "";
        
        txtcomment.Text = "";
        lbl.Text = "";
    }
}