<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="project.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://nicesnippets.com/demo/jsCarousel-2.0.0.js" type="text/javascript"></script>
    <link href="custom.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

	<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>

    <link rel="stylesheet" href="css/style.css" />
</head>
<body  style="background-image:url(images/screen1.jpg);">
    <form id="form1" runat="server">


    <div class="wrapper" style="height:300px">
    <div class="right">
    <div class="tabs">
      <ul>
        <li class="login_li" style="color:yellow ; font-size:22px">Forget your password?</li>
      </ul>
    </div>
    
   
    <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>

    <div class="login" style="margin-top:0px">
      <div class="input_field">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter activation code" CssClass="input"></asp:TextBox>
      </div>

        <div style="margin-top:-15px "></div>

        <asp:Button ID="Button1" runat="server" Text="Verify"  style="margin-top:35px" OnClick="Button1_Click" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 
        
       
    </div>
         
        </div>
  </div>
       







        
        
    </form>
</body>
</html>
