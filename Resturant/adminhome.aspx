<%@ Page Title="AdminPage" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="row">
<div class="col-md-12">
 <asp:Label ID="lblusertype" runat="server" Text=""></asp:Label><br /><br />
    <asp:Label ID="lblusername" runat="server" Text=""></asp:Label><br /><br />

   

    <asp:Button ID="Button1" runat="server" Text="LogOut" OnClick="Button1_Click" />


</div>
</div>
</asp:Content>

