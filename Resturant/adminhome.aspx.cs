using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["usertype"] != null)
        {

            if (!(Session["usertype"].Equals("Admin")))
                Response.Redirect("dologin.aspx");
        }
          

        LoginManager.protectpage(Session, Response);
        lblusertype.Text = LoginManager.getcurrentusertype(Session);
        lblusername.Text = LoginManager.getcurrentuser(Session);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LoginManager.dologout(Session);
    }
}