<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Withdraw.aspx.cs" Inherits="Withdraw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Lbl1" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Account No."></asp:Label> 
        <asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="GET" OnClick="Button1_Click" /><br /><br />

        <asp:Label ID="Lblname" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="Lblbalance" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="Label2" runat="server" Text="Amount Withdraw"></asp:Label><asp:TextBox
            ID="txtwithdraw" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Withdraw" OnClick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
