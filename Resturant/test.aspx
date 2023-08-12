<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblusertype" runat="server" Text=""></asp:Label><br /><br />
        <asp:Button ID="Button1" runat="server" Text="click" OnClick="Button1_Click" 
            style="height: 29px" />
    </div>
    </form>
</body>
</html>
