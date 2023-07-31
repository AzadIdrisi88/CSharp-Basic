<%@ Page Language="C#" AutoEventWireup="true" CodeFile="arithmetic.aspx.cs" Inherits="arithmetic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Arithmetic</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtB" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Max" onclick="Button1_Click" />
    </form>
</body>
</html>
