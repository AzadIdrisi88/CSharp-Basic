﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edititemsincategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (Page.IsPostBack)
            return;
        
        LblName.Text = Utilities.getcategorynameBycategorynumber(Request.QueryString["categoryno"]);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Labl.Text = "";
            DataSet1TableAdapters.itemmenuTableAdapter da = new DataSet1TableAdapters.itemmenuTableAdapter();
            da.Insert(Convert.ToInt32(Request.QueryString["categoryno"]), txtname.Text, Convert.ToInt32(txtprice.Text), txtpacking.Text);
            Labl.Text = "Item Number is " + da.maxitem();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Labl.Text = ex.Message;

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        txtname.Text = "";
        txtprice.Text = "";
        txtpacking.Text = "";
        Labl.Text = "";
    }

}