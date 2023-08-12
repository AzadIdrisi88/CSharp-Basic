<%@ Page Title="tablelist" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="tablelist.aspx.cs" Inherits="tablelist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="row">
<div class="col-md-12">


   


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-responsive" 
        CellPadding="4" DataKeyNames="tableno" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="tableno" HeaderText="tableno" InsertVisible="False" 
                ReadOnly="True" SortExpression="tableno" />
            <asp:BoundField DataField="tablename" HeaderText="tablename" 
                SortExpression="tablename" />
            <asp:BoundField DataField="seatno" HeaderText="seatno" 
                SortExpression="seatno" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:BoundField DataField="comment" HeaderText="comment" 
                SortExpression="comment" />
                <asp:TemplateField HeaderText="BOOK NOW">
                <ItemTemplate>
                <%#BookingUtilities.getBookingLink(Eval("tableno")) %>
                
                </ItemTemplate>
                
                </asp:TemplateField>
        </Columns>
        
        <HeaderStyle BackColor="Yellow" Font-Bold="True" ForeColor="White" />
        

        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ResturantConnectionString %>" 
        SelectCommand="SELECT * FROM [tabledata] ORDER BY [tablename], [seatno], [comment]">
    </asp:SqlDataSource>
</div>
</div>
</asp:Content>

