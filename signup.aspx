<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="project.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register-login Form</title>
	

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://nicesnippets.com/demo/jsCarousel-2.0.0.js" type="text/javascript"></script>
    <link href="custom.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image:url(images/screen1.jpg);">
    <form id="form1" runat="server">
        <div class="wrapper">
    <div class="right">
    <div class="tabs">
      <ul>
        <li class="register_li" style="color:yellow">Register</li>
      </ul>
    </div>
    
    <div class="register">
      <div class="input_field"  >
          <asp:TextBox ID="r_user" runat="server" CssClass="input" placeholder="Username"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter user name" ControlToValidate="r_user" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
      <div class="input_field" >
          <asp:TextBox ID="r_email" runat="server" placeholder="E-mail" CssClass="input"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Propper Data" ControlToValidate="r_email" Display="Dynamic" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Green"></asp:RegularExpressionValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email" ControlToValidate="r_email" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
      <div class="input_field">
            <asp:TextBox ID="r_phone" runat="server" placeholder="Phone No." CssClass="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter phone" ControlToValidate="r_phone" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Propper Data" ControlToValidate="r_phone" Display="Dynamic" SetFocusOnError="true" ValidationExpression="[0-9]{10}" ForeColor="Green"></asp:RegularExpressionValidator>        
      </div>
      <div class="input_field">
         <asp:TextBox ID="r_password" runat="server" placeholder="Password" CssClass="input" type="password" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter password" ControlToValidate="r_password" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="provide valid password" Display="Dynamic" SetFocusOnError="true" ForeColor="Green" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$" ControlToValidate="r_password"></asp:RegularExpressionValidator>
      </div>

      <div class="input_field">
          <asp:TextBox ID="r_c_password" runat="server" placeholder="Confirm Password" CssClass="input" type="password"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Choose password and Confirm password should be same.!!!" ControlToValidate="r_c_password" ControlToCompare="r_password" Operator="Equal" Type="String" SetFocusOnError="true" ForeColor="Red"></asp:CompareValidator>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter confirm password" ControlToValidate="r_c_password" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
    </div>
    
         
        </div>
  </div>
    </form>
</body>
</html>
