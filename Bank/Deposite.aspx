<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deposite.aspx.cs" Inherits="Deposite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Enter Account No.<asp:TextBox ID="Txt1" runat="server"></asp:TextBox>
        <asp:Button
            ID="Btn1" runat="server" Text="Enter" onclick="Btn1_Click" /><br /><br />
        Name<asp:Label ID="Lbl1" runat="server" Text=""></asp:Label><br /><br />
         Amount<asp:Label ID="Lbl2" runat="server" Text=""></asp:Label><br /><br />
        Deposite Amount<asp:TextBox ID="Txt2" runat="server"></asp:TextBox>
        <asp:Button ID="Btn2"
            runat="server" Text="Submit" onclick="Btn2_Click" />
            
    </div>
    </form>
</body>
</html>
