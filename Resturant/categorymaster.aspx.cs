﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class categorymaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.menucategoryTableAdapter da = new DataSet1TableAdapters.menucategoryTableAdapter();
            da.Insert(txtname.Text, txtcomment.Text);
            GridView1.DataBind();
            lbl.Text = "Item Added" + da.maxcategory();

        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtcomment.Text = "";
        lbl.Text = "";
    }

}