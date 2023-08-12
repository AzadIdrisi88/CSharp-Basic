using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class waiterhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoginManager.protectpage(Session, Response);
        lblusertype.Text = LoginManager.getcurrentusertype(Session);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LoginManager.dologout(Session);
    }
}