using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Accounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn1_Click(object sender, EventArgs e)
    {
        string name = Txt1.Text;
        int amount = Convert.ToInt32(Txt2.Text);
        DataSet1TableAdapters.accountTableAdapter bd = new DataSet1TableAdapters.accountTableAdapter();
        bd.createaccount(name, amount);
        Lbl1.Text = "account created.your account no is: " + bd.findMax();
        


      

    }
}