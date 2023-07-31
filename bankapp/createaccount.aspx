<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createaccount.aspx.cs" Inherits="createaccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Account</title>
</head>
<body>
     <center>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Lbl1" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>  <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
        
        <br /><br />
        <asp:Label ID="Label3" runat="server" Text="Balance"></asp:Label>  <asp:TextBox ID="Txtbalance" runat="server"></asp:TextBox>
     <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Create" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Clear"  OnClick="Button2_Click"/>
            

    
    </div>
    </form>
    </center>
</body>
</html>
