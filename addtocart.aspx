<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="project.addtocart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        body{
       
        }
    </style>
</head>
<body   >
    <form id="form1" runat="server">

        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
        <div class="container-fluid">
          <img src="images/1234.png" style=" height:115px; width:150px ; margin-top:-25px; margin-bottom:-35px; margin-left: -20px; "/>
           <asp:Label ID="Label4" runat="server" Text="" style="margin-left:80px; margin-top:0px ; font-size:18px ;color:grey ; font-weight:bolder ; text-transform:uppercase"    ></asp:Label>

          <ul class="navbar-nav mr-auto">
        <li>
       <a class="nav-link" href="home.aspx" style="margin-left:150px">Home</a>
      </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <li class="nav-item">
       <a class="nav-link" href="all_product.aspx" style="margin-left:-20px">All Products</a>
      </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-left:-20px">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="margin-left:-20px">
          <a class="dropdown-item" href="#">Vegetables</a>
          <a class="dropdown-item" href="#">Fruits</a>
          <a class="dropdown-item" href="#">Daily Care</a>
      </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <li class="nav-item">
       <a class="nav-link" href="about_us.aspx">About Us</a>
        </li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <li>
        <a class="nav-link" href="contact_us.aspx">Contact Us</a>
      </li>
    </ul>
      <%--<form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="width:300px">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>--%>
            <asp:Button ID="signup" runat="server"  class="text-muted" style="background:unset ; border:hidden ; font-size:19px ; margin-top:-5px" OnClick="signup_Click" />&nbsp&nbsp&nbsp
            <asp:Button ID="login" runat="server"  class="text-muted" style="background:unset ; border:hidden ; font-size:19px ; margin-top:-5px" OnClick="login_Click" />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/a.png" style="height: 35px ; width: 80px; margin-top: 0% " OnClick="ImageButton2_Click" />

    </div>
  </div>
</nav>

        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/your_cart.PNG"  Width="1500px" />

        <div style="align-content:center">



            <%--<h1 style="color: black ; font-family: facon; font-weight: bold ; font-size: 50px ; margin-top: 3%; margin-left: 44% ; margin-bottom: -3% ">MY CART</h1>--%>
            &nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-left:200px ; margin-top:40px"  BorderWidth="1px" EmptyDataText="No Procuct Available in Shopping Cart" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting " BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr No" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="p_id" HeaderText="Product Id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="p_image" HeaderText="Product Image">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="p_name" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="p_price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="p_qty" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="p_totalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buy Now"  OnClick="Button1_Click" style="margin-left:730px; color:saddlebrown "/><br />
                <a href="all_product.aspx" style="color: black ; font-family: facon; font-weight: bold ; font-size: 21px ; margin-top:320px; margin-left: 46%; color:red ">Continue Shopping</a>
            <br /><br /><br />


            <div id="footer" class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div style="width:100% ; ">
        <div  style="width:370px ; margin-left:300px ; margin-top:20px ; height:390px">
            <h4 style="color:white ; text-align:center">GROCERY</h4><br />
            <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >We are designing Grocery to be a brand we all want to consume from. A brand that cares about what we consume, how we consume, where it comes from, who gets affected in the process. A brand that ensures that what we consume is clean, good for our health, gentle on the environment, kind to the animals and conscious about the people involved in the process of production.</p>
             <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >We currently deliver only in Bangalore.</p>
         </div>
        <div style="width:370px ; margin-left:820px ; margin-top:-390px ; height:390px">
            <h4 style="color:white ; ">CONTACT US</h4><br />
            <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >R.L vatika</p>
             <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify ; margin-top:10px" >Salimpur Ahara , patna-800004</p>
             <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >Phone : 12345678</p>
            <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >Email: 1ms19mca06@gmail.com</p>

         </div>
   </div>
</div>

        </div>
    </form>
</body>
</html>
