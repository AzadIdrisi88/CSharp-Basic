<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="registrationform.aspx.cs" Inherits="registrationform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="row">
<div class="col-md-12">
    <asp:Label ID="lbl" runat="server" Text=""></asp:Label><br /><br />
    <asp:DropDownList ID="ddl" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="usertype" 
        DataValueField="usetypeno">
    </asp:DropDownList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ResturantConnectionString %>" 
        SelectCommand="SELECT * FROM [usertype] ORDER BY [usertype], [usetypeno]">
    </asp:SqlDataSource><br /><br />
    
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="txtusrname" runat="server" CssClass="form-control"></asp:TextBox><br /><br />

    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br /><br />


   <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtpsswrd" runat="server" TextMode="Password"></asp:TextBox><br /><br />

    <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="txtcnfrmpsswrd" runat="server"></asp:TextBox><br /><br />

    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Buuton2_Click" />








</div>
</div>
</asp:Content>

