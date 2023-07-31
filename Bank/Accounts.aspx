<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accounts.aspx.cs" Inherits="Accounts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name <asp:TextBox ID="Txt1" runat="server"></asp:TextBox><br /><br />
        Amount <asp:TextBox ID="Txt2" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="Btn1" runat="server" Text="Create Account" 
            onclick="Btn1_Click" /><br /><br />
        
        <asp:Label ID="Lbl1" runat="server" Text="Detail"></asp:Label>

    </div>
    </form>
</body>
</html>
