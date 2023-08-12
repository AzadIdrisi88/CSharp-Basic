using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bookingmaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          lbl.Text="";

            DataSet1TableAdapters.bookingTableAdapter da = new DataSet1TableAdapters.bookingTableAdapter();
            da.Insert(Convert.ToInt32(Request.QueryString["tableno"]), DateTime.Now, DateTime.Now);
            lbl.Text = "Table is Booked" + da.Maxbookingno();
         
            GridView1.DataBind();

       
 }

    protected void Button2_Click(object sender, EventArgs e)
    {


        lbl.Text = "";
        txtbooktime.Text = "";
        txtend.Text = "";




    }
}