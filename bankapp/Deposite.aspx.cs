using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Deposite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Lbl1.Text = "";
            DataSet1TableAdapters.accountsTableAdapter da =  new DataSet1TableAdapters.accountsTableAdapter();
            DataSet1.accountsDataTable dt = da.GetDataByaccountno(Convert.ToInt32(txtAccountNo.Text));
            if (dt.Rows.Count <= 0)
            {
             throw new Exception("Invalid Account No...");
            
            
            }
            DataSet1.accountsRow dr=(DataSet1.accountsRow)dt.Rows[0];
            Lblname.Text=dr.name;
            Lblbalance.Text= "" + dr.balance;
            Button2.Enabled=true;
            Button1.Enabled=false;
            txtAccountNo.ReadOnly=true;
        }
        catch (Exception ex)
        {
            Lbl1.Text=ex.Message;
            Lblname.Text="";
            Lblbalance.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToInt32(txtAmount.Text) <= 0)
                throw new Exception("Invalid Amount");
           
            DataSet1TableAdapters.accountsTableAdapter da = new DataSet1TableAdapters.accountsTableAdapter();
            da.deposite(Convert.ToInt32(txtAmount.Text),Convert.ToInt32(txtAccountNo.Text));
            Lbl1.Text="Deposited";
            DataSet1.accountsDataTable dt=da.GetDataByaccountno(Convert.ToInt32(txtAccountNo.Text));
            if (dt.Rows.Count <=0)
            {
                throw new Exception("Invalid Account No");
            }
            DataSet1.accountsRow dr =(DataSet1.accountsRow)dt.Rows[0];
            Lblname.Text="";
            Lblbalance.Text="" + dr.balance;
            Button2.Enabled=false;

        }

        catch(Exception ex)
        {
            Lbl1.Text= ex.Message;
        }

    }
}