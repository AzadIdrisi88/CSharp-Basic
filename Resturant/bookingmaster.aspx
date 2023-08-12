<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="bookingmaster.aspx.cs" Inherits="bookingmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
<div class="col-md-12">

   <asp:Label ID="Label5" runat="server" Text=" For Booking " Font-Bold="true" Font-Size="X-Large"></asp:Label><br /><br />
    
    <asp:Label ID="lbl" runat="server" Text="" Font-Bold="true"></asp:Label><br /><br />
    
    <asp:Label ID="Label2" runat="server" Text="Booking Time" Font-Bold="true">
    <asp:TextBox TextMode="DateTimeLocal" ID="txtbooktime" runat="server"></asp:TextBox></asp:Label><br /><br />
    
    
    <asp:Label ID="Label3" runat="server" Text="Booking End" Font-Bold="true">
    <asp:TextBox  TextMode="DateTimeLocal" ID="txtend" runat="server"></asp:TextBox></asp:Label><br /><br />
    
    
    
    
   
    <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"/>
    <asp:Button ID="Button2" runat="server" Text="Clear"  OnClick="Button2_Click"/>
</div>
</div>  

     <div class="row">
     <div class="col-md-12">
         <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
             AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bookingno" 
             DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="bookingno" HeaderText="bookingno" 
                     InsertVisible="False" ReadOnly="True" SortExpression="bookingno" />
                 <asp:BoundField DataField="tableno" HeaderText="tableno" 
                     SortExpression="tableno" />
                 <asp:BoundField DataField="bookingtime" HeaderText="bookingtime" 
                     SortExpression="bookingtime" />
                 <asp:BoundField DataField="bookingend" HeaderText="bookingend" 
                     SortExpression="bookingend" />
             </Columns>
             <EditRowStyle BackColor="#2461BF" />
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#EFF3FB" />
             <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F5F7FB" />
             <SortedAscendingHeaderStyle BackColor="#6D95E1" />
             <SortedDescendingCellStyle BackColor="#E9EBEF" />
             <SortedDescendingHeaderStyle BackColor="#4870BE" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ResturantConnectionString %>" 
             SelectCommand="SELECT * FROM [booking] WHERE ([tableno] = @tableno)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="tableno" QueryStringField="tableno" 
                     Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
     </div>
     </div>  
</asp:Content>

