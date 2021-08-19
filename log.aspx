<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="project.WebForm5" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://nicesnippets.com/demo/jsCarousel-2.0.0.js" type="text/javascript"></script>
    <link href="custom.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

	<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
	<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image:url(images/screen1.jpg);">
    <form id="form1" runat="server">
         
        <div class="wrapper" style="height:400px">
    <div class="right">
    <div class="tabs">
      <ul>
        <li class="login_li" style="color:yellow ; font-size:22px">login</li>
      </ul>
    </div>
    
   
    <div class="login">
      <div class="input_field">
            <asp:TextBox ID="l_user" runat="server" placeholder="UserName" CssClass="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Username" ControlToValidate="l_user" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
      <div class="input_field" >
          <asp:TextBox ID="l_password" runat="server" placeholder="Password" CssClass="input" type="password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter password" ControlToValidate="l_password" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
        <div style="margin-top:15px "></div>
         <a href ="f_pass.aspx" style="margin-left:32% ; color:red; " >Forget Password</a><br />
        <a href ="signup.aspx" style="margin-left:30% ; color:red;" >Don't have Account</a>

        <asp:Button ID="Button1" runat="server" Text="Login"  style="margin-top:15px" OnClick="Button1_Click" />

       
    </div>
         
        </div>
  </div>
       
    </form>
</body>
</html>
