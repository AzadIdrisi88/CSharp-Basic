﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class clerkhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoginManager.protectClerk(Session, Response);
        
        
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        LoginManager.dologout(Session);
    }
}