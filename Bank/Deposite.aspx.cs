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
    
    protected void Btn1_Click(object sender, EventArgs e)
    {
        DataSet1TableAdapters.accountTableAdapter bd = new DataSet1TableAdapters.accountTableAdapter();
        DataSet1.accountDataTable dtl = bd.GetDataByAccNO(Convert.ToInt32(Txt1.Text));
        if(dtl.Rows.Count<=0) 
        {
            throw new Exception("Invalid Account Number");
        }
        DataSet1.accountRow bd  = (DataSet1.accountRow )dtl.Rows[0];
        Lbl1.Text=bd.Name;
        Lbl2.Text= ""+ bd.Ba
        
           

    
    protected void Btn2_Click(object sender, EventArgs e)
    {

    }
}