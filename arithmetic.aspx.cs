using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class arithmetic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtA.Text);
        int b = Convert.ToInt32(txtB.Text);
        int max;
        if (a >= b)
            max = a;
        else
            max = b;
        lblResult.Text = "" + max;

    }
} 