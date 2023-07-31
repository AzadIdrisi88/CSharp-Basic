<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="edititemsincategory.aspx.cs" Inherits="edititemsincategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="itemnumber" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="itemnumber" HeaderText="itemnumber" 
                InsertVisible="False" ReadOnly="True" SortExpression="itemnumber" />
            <asp:BoundField DataField="categorynumber" HeaderText="categorynumber" 
                SortExpression="categorynumber" />
            <asp:BoundField DataField="itemname" HeaderText="itemname" 
                SortExpression="itemname" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="packing" HeaderText="packing" 
                SortExpression="packing" />
        </Columns>
    </asp:GridView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ResturantConnectionString %>" 
    SelectCommand="SELECT * FROM [itemmenu] WHERE ([categorynumber] = @categorynumber) ORDER BY [itemname]">
    <SelectParameters>
        <asp:QueryStringParameter Name="categorynumber" QueryStringField="categorynumber" 
            Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>


</asp:Content>

