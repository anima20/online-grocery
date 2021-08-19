<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="all_product.aspx.cs" Inherits="project.WebForm1" %>

<!DOCTYPE html>
<head runat="server">
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <style>
        #b1{
	 	border-style: none;
	 	background: none;
		font-size: 19px;
		margin-top: -9px;
	}
	#b1:hover{
				color: red;
	}

    </style>

</head>
<body >
    <form id="form1" runat="server">
    <div>


        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
        <div class="container-fluid">
            <img src="images/1234.png" style="margin-right: ; height:115px; width:150px ; margin-top:-25px; margin-bottom:-35px; margin-right; margin-left: -20px; "/>
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
    </ul>s
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


        
    <table style=" margin-top:10px ; margin-left:1210px">
        <tr >
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="174px" placeholder="search" ></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/images/search.jpg" Width="25px"  style="margin-top:10px" OnClick="ImageButton1_Click"/>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource1" Height="293px" Width="200px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" RepeatDirection="Horizontal"  style="margin-left:65px ; margin-top: 20px " OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
         <table  style="margin-left:5px ">
           <tr>

               <td>
                   <div class="card" style="width: 330px ; height:500px">
                    <img src='<%# Eval("p_image") %>'  class="card-img-top" style="height:300px" >
                            <div class="card-body">
                            <h5 class="card-title" align="center"><%# Eval("p_name") %> </h5>
                            <p class="card-text" style="text-align:center ; font-size:20px"><%# Eval("p_desc") %> </p>
                                <div style="margin-bottom:5px ; margin-top:-10px ; font-size:17px ; margin-left:70px">
                                <asp:Label ID="Label2" runat="server" Text="Price : " ></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text='Rs.' style="margin-left:0px ; text-decoration:line-through"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_price") %>' style="margin-left:-5px ; text-decoration:line-through"></asp:Label>
                                <asp:Label ID="Label5" runat="server" Text='Rs.' style="margin-left:5px ;" ></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("p_price") %>' style="margin-left:-1px ;" ></asp:Label>
                                <br />
                                    </div>
                                <asp:Label ID="Label1" runat="server" Text="Qty : " style="margin-left:45px"></asp:Label>
                             <asp:DropDownList ID="qty" runat="server" style="margin-left:1px ; height:33px">
                               <asp:ListItem>1</asp:ListItem>
                               <asp:ListItem>2</asp:ListItem>
                               <asp:ListItem>3</asp:ListItem>
                               <asp:ListItem>4</asp:ListItem>
                               <asp:ListItem>5</asp:ListItem>
                               <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="Button1" runat="server" Text="Add to cart" class="btn btn-primary" style="margin-left:10px ; margin-top:-5px"  CommandArgument='<%# Eval("p_id") %>' CommandName="addtocart"/>
                            
                            </div>
                    </div>
               </td>

              
           </tr>
           

       </table>
        <br />
        <br />
    </ItemTemplate>
        

    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:animaConnectionString %>" SelectCommand="SELECT [p_id], [p_name], [p_image], [p_price], [p_desc], [p_cat] FROM [product]"></asp:SqlDataSource>
    </div>



        <div id="footer" class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div style="width:100% ; height">
        <div  style="width:370px ; margin-left:300px ; margin-top:20px ; height:250px">
            <h4 style="color:white ; text-align:center">GROCERY</h4><br />
            <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >We are designing Grocery to be a brand we all want to consume from. A brand that cares about what we consume, how we consume, where it comes from, who gets affected in the process. A brand that ensures that what we consume is clean, good for our health, gentle on the environment, kind to the animals and conscious about the people involved in the process of production.</p>
             <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >We currently deliver only in Bangalore.</p>
         </div>
        <div style="width:370px ; margin-left:820px ; margin-top:-250px ; height:350px">
            <h4 style="color:white ; ">CONTACT US</h4><br />
            <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >R.L vatika</p>
             <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify ; margin-top:10px" >Salimpur Ahara , patna-800004</p>
             <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >Phone : 12345678</p>
            <p style="color:white ; opacity:0.4 ; font-size:18px ; text-align:justify" >Email: 1ms19mca06@gmail.com</p>

         </div>
   </div>
</div>



    </form>
</body>
</html>
