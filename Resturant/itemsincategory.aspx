<%@ Page Title="Itemlist" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="itemsincategory.aspx.cs" Inherits="itemsincategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div class="row">
<div class="col-md-12">
 

    <asp:Label ID="Lbl" runat="server" Text="Item List" Font-Bold="true" Font-Size="XX-Large"></asp:Label><br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-responsive table-striped"
    DataKeyNames="itemnumber" DataSourceID="SqlDataSource1" CellPadding="5" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            
            <asp:BoundField DataField="itemname" HeaderText="itemname" 
                SortExpression="itemname" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="packing" HeaderText="packing" 
                SortExpression="packing" />
        </Columns>
        
        <HeaderStyle BackColor="Yellow" Font-Bold="True" ForeColor="White" />
        
        
    </asp:GridView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ResturantConnectionString %>" 
    
        SelectCommand="SELECT * FROM [itemmenu] WHERE ([categorynumber] = @categorynumber2) ORDER BY [itemname], [price]">
    <SelectParameters>
        <asp:QueryStringParameter Name="categorynumber2" QueryStringField="categoryno" 
            Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</div>
</div>


</asp:Content>

