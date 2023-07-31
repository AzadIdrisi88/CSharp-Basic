<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resturant Info.aspx.cs" Inherits="Resturant_Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>restaurant Info</title>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblRname" runat="server" Text="Restaurant Name--"></asp:Label><br /><br />
        <asp:Label ID="lblnumber" runat="server" Text="Mobile Number--"></asp:Label><br /><br />
        <asp:Label ID="lbladdress" runat="server" Text="Address--"></asp:Label><br /><br />
        <asp:Label ID="lblpin" runat="server" Text="Pincode--"></asp:Label><br /><br />
        <asp:Label ID="lbltag" runat="server" Text=""></asp:Label>

        <br /><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="RestaurantName" HeaderText="RestaurantName" 
                    SortExpression="RestaurantName" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                    SortExpression="PhoneNumber" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                    SortExpression="Pincode" />
                <asp:BoundField DataField="Tagline" HeaderText="Tagline" 
                    SortExpression="Tagline" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ResturantConnectionString %>" 
            SelectCommand="SELECT * FROM [RestaurantInfo]"></asp:SqlDataSource>




    </div>
    </form>
    </center>
</body>
</html>
