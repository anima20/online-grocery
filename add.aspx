<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="project.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://nicesnippets.com/demo/jsCarousel-2.0.0.js" type="text/javascript"></script>
    <link href="custom.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

	<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
	<style>

     * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
    text-decoration: none;
    list-style: none;
    font-family: 'Nunito', sans-serif;
}

body {
   
    
    background-repeat: no-repeat;
    object-fit: cover;
    
   
  
}

.wrapper {
   
    display: flex;
    
    width: 60%;
    height: 465px;
    position: absolute;
    top: 50%;
    left: 70%;
    transform: translate(-50%,-50%);
    opacity:0.7;
}

    
    .wrapper .right {
        width: 55%;
        height: 110%;
        padding: 30px;

    }

   

      
        .wrapper .left .img {
            display: block;
            width: 300px;
            margin: 0px auto 0;
        }

    .wrapper .right {
        background: black;
        margin-left: 290px;
    }

        .wrapper .right .tabs ul {
            text-align: center;
        }

            .wrapper .right .tabs ul li {
                display: inline-block;
                margin: 5px;
                padding: 5px 10px;
                font-size: 24px;
                color: #494f57;
                text-transform: uppercase;
                letter-spacing: 2px;
                cursor: pointer;
            }

                .wrapper .right .tabs ul li.active {
                    border-bottom: 2px solid #494f57;
                }

        .wrapper .right .register,
        .wrapper .right .login {
            margin-top: 20px;
        }


        .wrapper .right .input_field .input {
            width: 50%;
            margin-top:     0px;
            padding: 10px 15px;
            border: 0;
          
            font-size: 15px;
            background: #ecebeb;
        }

#Button1 {
    width: 100%;
    background: #494f57;
    height : 40px;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 3px;
    font-weight: bold;
    border-radius: 20px;
    border: none;
    outline: none;
    color:yellow;
    margin-top:20px;
}


	</style>
</head>
<body style="background-image:url(images/screen1.jpg);">
    <form id="form1" runat="server">
        
        <div class="wrapper" >
    <div class="right">
    <div class="tabs">
      <ul>
        <li class="login_li" style="color:yellow ; font-size:22px">Add Product</li>
      </ul>
    </div>
    
   
    <div class="login"  >
      <div class="input_field" style="margin-left:10%">
          <asp:Label ID="Label1" runat="server" Text="Product Id" style="color:white ; font-size:20px"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Product Id" CssClass="input"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Product Id" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
      <div class="input_field" style="margin-left:10%">
          <asp:Label ID="Label2" runat="server" Text="Product Name" style="color:white ; font-size:20px"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Product Name" CssClass="input"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Product Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>  
      <div class="input_field" style="margin-left:10%">
          <asp:Label ID="Label3" runat="server" Text="Product Desc" style="color:white ; font-size:20px"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Product Desc" CssClass="input"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Product Desc" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
        <div class="input_field" style="margin-left:10% ;">
          <asp:Label ID="Label4" runat="server" Text="Product Image" style="color:white ; font-size:20px ;"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:FileUpload ID="FileUpload1" runat="server" style="background-color:white ; width:197px ; height:30px" />
      </div>
        <div class="input_field" style="margin-left:10% ; margin-top:18px ">
          <asp:Label ID="Label5" runat="server" Text="Product Price" style="color:white ; font-size:20px ; "></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Product Price" CssClass="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Product Price" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
        <div class="input_field" style="margin-left:10% ; margin-top:0px ">
          <asp:Label ID="Label6" runat="server" Text="Product Price" style="color:white ; font-size:20px ; "></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:DropDownList ID="DropDownList1" runat="server" style="background-color:white ; width:197px ; height:35px" >
                               <asp:ListItem >covid</asp:ListItem>
                               <asp:ListItem>vegetable</asp:ListItem>
                               <asp:ListItem>fruit</asp:ListItem>
                               
            </asp:DropDownList>
            
      </div>
      
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br /><br />
        <a href ="a_home.aspx" style="margin-left:42% ; color:red; " >Back to Home</a><br />
            

       
    </div>
         
        </div>
  </div>
       

    </form>
</body>
</html>
