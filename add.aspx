<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>add</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        a<asp:TextBox ID="TxtA" runat="server"></asp:TextBox>
        b<asp:TextBox ID="TxtB" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1"
            runat="server" Text="submit" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
