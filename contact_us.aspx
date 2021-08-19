<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="project.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/contact_us.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://nicesnippets.com/demo/jsCarousel-2.0.0.js" type="text/javascript"></script>
    <link href="custom.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

	<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
	<script>
        $(document).ready(function () {
            $(".login").hide();
            $(".register_li").addClass("active");

            $(".login_li").click(function () {
                $(this).addClass("active");
                $(".register_li").removeClass("active");
                $(".login").show();
                $(".register").hide();
            })

            $(".register_li").click(function () {
                $(this).addClass("active");
                $(".login_li").removeClass("active");
                $(".register").show();
                $(".login").hide();
            })
        });
    </script>
</head>
<body>
    <body style="background-image:url(images/screen1.jpg);">
    <form id="form1" runat="server">
    <div class="wrapper">
    <div class="right">
    <div class="tabs">
      <ul>
        <li class="register_li" style="color:yellow ; font-size:20px;">Contact Us</li>
        
      </ul>
    </div>
    
    <div class="register">
      <div class="input_field">
 
          <asp:TextBox ID="r_user" runat="server" CssClass="input" placeholder="Username"></asp:TextBox>
      </div>
      <div class="input_field">
          <asp:TextBox ID="r_email" runat="server" placeholder="E-mail" CssClass="input"></asp:TextBox>
      </div>
      <div class="input_field">
            <asp:TextBox ID="r_phone" runat="server" placeholder="Phone No." CssClass="input"></asp:TextBox>
      </div>
      <div class="input_field">
         
      </div>

  
      
          <asp:Button ID="Button1" runat="server" Text="Contact Us"  />
    </div>
    
  </div>
</div>
</form>
</body>
</html>
