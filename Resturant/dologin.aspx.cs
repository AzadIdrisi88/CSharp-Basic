using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dologin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string username = txtusrname.Text;
            string password = txtpsswrd.Text;
            bool result = LoginManager.dologin(username, password, Response, Session);
            if (!result)
                lbl.Text = "Invalid Username and Password";
        }

        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
    
}