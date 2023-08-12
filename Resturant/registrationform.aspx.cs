using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registrationform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (!txtpsswrd.Text.Equals(txtcnfrmpsswrd.Text))
                throw new Exception("Password did not match");
            DataSet1TableAdapters.usersTableAdapter da = new DataSet1TableAdapters.usersTableAdapter();
            da.Insert(txtusrname.Text, txtname.Text, Convert.ToInt32(ddl.SelectedValue), txtpsswrd.Text);
            lbl.Text = "Registration Successfully";

        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }

    protected void Buuton2_Click(object sender, EventArgs e)
    {
        lbl.Text = "";
        txtusrname.Text = "";
        txtname.Text = "";
        txtpsswrd.Text = "";
        txtcnfrmpsswrd.Text = "";
    }
}