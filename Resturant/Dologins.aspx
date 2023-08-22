<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dologins.aspx.cs" Inherits="Dologins" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
<title>LoginPage</title>
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
     rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" 
     crossorigin="anonymous">

<style>
.btn1
{
padding:4px 220px;
background-color:#fa61a3;
font-size: 18px;
color: white;
outline: none;
border-radius: 12px;
font-family: Cursive;
}
.btn1:hover
{
background-color: #fa61a3;
color: black;
}
.btn1:active
{
    transform: translateY(2px);
    /* transform: translateX(2px); */
    /* transform: scale(1.1); */
}
.lbl
{
   
    color:red;
} 
div
{
    border:
    }    
 
     
     
</style>

    
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
<div class="row" >
<div class="col-md-4" style="background-color:#f266d9;"></div>

<div class="col-md-4">
    <center>
    <asp:Label ID="Label3" runat="server" Text="Login" Font-size="X-Large" Font-Bold="true" Font-Names="verdana" ></asp:Label><br/>
    <asp:Label ID="lbl" runat="server" Text="" Font-size="X-Large" Class="lbl"></asp:Label><br/>
    
    <asp:Label ID="Label1" runat="server" Text="Username"  Font-Italic="true" Font-size="X-Large" ></asp:Label>
    <asp:TextBox ID="txtusrname" runat="server" CssClass="form-control"></asp:TextBox><br />

    <asp:Label ID="Label2" runat="server" Text="Password" Font-Italic="true" Font-size="X-Large"></asp:Label>
    <asp:TextBox ID="txtpsswrd" runat="server" TextMode="password" CssClass="form-control"></asp:TextBox><br />
    
   
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  class="btn1" /><br /><br />
    </center>
   



</div>
<div class="col-md-4" style="background-color:#f266d9;">
</div>
</div>

<div class="row" >
<div class="col-md-4"  style="background-color:#f266d9;"></div>
<div class="col-md-4">
    <div class="row" style="padding:0px;" ><img src="pics/restro4.jpg" width="100%" height="200px" ></div>
    <div class="row"  style="padding:0px;"><img src="pics/restro6.jpg" width="100%" height="200px"></div>
</div>
<div class="col-md-4" style="background-color:#f266d9;"></div>
</div>
</div>



    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
             integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
             crossorigin="anonymous"></script>
</body>
</html>
