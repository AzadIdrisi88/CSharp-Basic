<%@ Page Title="dologin" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="dologin.aspx.cs" Inherits="dologin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="row">
<div class="col-md-12">
    <asp:Label ID="lbl" runat="server" Text="" ></asp:Label><br/><br />
    
    <asp:Label ID="Label1" runat="server" Text="Username" ></asp:Label>
    <asp:TextBox ID="txtusrname" runat="server" CssClass="form-control"></asp:TextBox><br /><br />

    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtpsswrd" runat="server" TextMode="password" CssClass="form-control"></asp:TextBox><br /><br />
    
    <center>
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  />
    </center>





</div>
</div>
</asp:Content>

