<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="project.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        #ver {
  
  width: 25%;
  position: fixed;
  height: 100%;
  list-style-type: none;
  background-color: white;
}

#ver a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

#ver a:hover:not(.active) {
  background-color: #555;
  color: white;
}





.myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

.myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}

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

    
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <form id="form1" runat="server">
      


        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
        <div class="container-fluid">
          <img src="images/1234.png" style=" height:100px; width:150px ; margin-top:-25px; margin-bottom:-35px; margin-left: -20px; "/>
           <asp:Label ID="Label4" runat="server" Text="Label" style="margin-left:80px; margin-top:0px ; font-size:18px " class="text-muted"  ></asp:Label>

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
             
            <input type="button" id="b1" value="Sign Up" class="text-muted" onclick="location.href='signup.aspx'" style="margin-top: -5px;"> &nbsp&nbsp
	        <input type="button" id="b1" value="login" class="text-muted" onclick="location.href='log.aspx'" style="margin-top: -5px;">   
	<a href=""><img src="images/a.png" style="height: 35px ; width: 80px; margin-top: -30% ; margin-bottom: -19% ; margin-left: 3   0%;"></a>

    </div>
  </div>
</nav>



    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="margin-top: 1% ; ">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" style="width:1435px; margin-left:33px">
     <div class="carousel-item active" >
        <img src="images/banner3.jpg" class="d-block w-100" alt="..." style="width: 400px ; height:370px">
     </div>
    <div class="carousel-item">
         <img src="images/banner2.png" class="d-block w-100" alt="..." style="width: 400px ; height:370px">
    </div>
    <div class="carousel-item">
        <img src="images/banner1.jpg" class="d-block w-100" alt="..." style="width: 400px ; height:370px">
    </div>
    
  </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
    </a>
</div>
  
        
       <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="images/goffer.jpg" style="margin-left:200px ; Width:1100px ; height:200px  ; margin-top:10px; " OnClick="ImageButton6_Click"  />
 
       <div style="margin-top:10px ; margin-left : 100px">
         <asp:ImageButton class="myImg" runat="server"  ImageUrl="images/covid.jpg" style="border-radius:20px; width:305px ; height:200px" OnClick="Unnamed1_Click" />
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        
         <asp:ImageButton class="myImg" runat="server"  ImageUrl="images/daily.jpg" style="border-radius:20px; width:305px ; height:200px" />
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <asp:ImageButton class="myImg" runat="server"  ImageUrl="images/veg.jpg" style="border-radius:20px; width:305px ; height:200px" />
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <asp:ImageButton class="myImg" runat="server"  ImageUrl="images/groc.jpg" style="border-radius:20px; width:305px ; height:200px" />
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <a href="login.aspx" style="margin-left:53px; Font-Size:30px ; color:black ; opacity:0.5">Covid Essential</a>
              <a href="login.aspx" style="margin-left:150px ;Font-Size:30px ; color:black ; opacity:0.5">Daily Essential</a>
              <a href="login.aspx" style="margin-left:115px ;Font-Size:30px ; color:black ;opacity:0.5">Vegetables & Fruits</a>
              <a href="login.aspx" style="margin-left:130px ;Font-Size:30px ; color:black ;opacity:0.5">Groceries</a>
 </div>

        <div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>

        <script>
            // Get the modal
            var modal = document.getElementById("myModal");

            // Get the image and insert it inside the modal - use its "alt" text as a caption
            var img = document.getElementById("myImg");
            var modalImg = document.getElementById("img01");
            var captionText = document.getElementById("caption");
            img.onclick = function () {
                modal.style.display = "block";
                modalImg.src = this.src;
                captionText.innerHTML = this.alt;
            }

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            }
        </script>

        
<table></table>
<asp:DataList ID="DataList1" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource1" Height="293px" Width="310px"  RepeatColumns="4" RepeatDirection="Horizontal"  style="margin-left:150px ; margin-top: 40px ">
<ItemTemplate>
    <table  style="margin-left:20px ; ">
           <tr>
               <td style="text-align:center ; background-color: #5f98f3">
                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_name") %>' Font-Bold="True" Font-Names="Arial" ForeColor="White" ></asp:Label>
               </td>
           </tr>
           <tr>
               <td style="text-align:center">
                   <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BorderWidth="1px" Height="279px" Width="278px" ImageUrl='<%# Eval("p_image") %>' />
               </td>
           </tr>
           <tr>
               <td style="text-align:center ; background-color: #5f98f3">
                   <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                   <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_price") %>' Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="center">Quantity
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                       <asp:ListItem></asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td  style="text-align:center">
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/add_cart.jpg" Width="165px" CommandArgument='<%# Eval("p_id") %>' CommandName="AddToCart"/>
               </td>
           </tr>

       </table>
        <br />
        <br />
</ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>

<label style="font-size:40px ; margin-left:150px ; opacity:0.5">Our Best Deal</label><br />
<hr / style="margin-left:150px ; width:1240px">
<asp:DataList ID="DataList2" runat="server" DataKeyField="p_id" DataSourceID="SqlDataSource2" Height="293px" Width="310px"  RepeatColumns="4" RepeatDirection="Horizontal"  style="margin-left:150px ; margin-top: 40px ">
<ItemTemplate>
   <table  style="margin-left:20px ; ">
           <tr>
               <td style="text-align:center ; background-color: #5f98f3">
                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_name") %>' Font-Bold="True" Font-Names="Arial" ForeColor="White" ></asp:Label>
               </td>
           </tr>
           <tr>
               <td style="text-align:center">
                   <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BorderWidth="1px" Height="279px" Width="278px" ImageUrl='<%# Eval("p_image") %>' />
               </td>
           </tr>
           <tr>
               <td style="text-align:center ; background-color: #5f98f3">
                   <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                   <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_price") %>' Font-Bold="True" Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="center">Quantity
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                       <asp:ListItem></asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td  style="text-align:center">
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/add_cart.jpg" Width="165px" CommandArgument='<%# Eval("p_id") %>' CommandName="AddToCart"/>
               </td>
           </tr>

       </table>
        <br />
        <br />
</ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [p_id], [p_name], [p_image], [p_price] FROM [product] WHERE ([p_price] &lt; @p_price)">
    <SelectParameters>
        <asp:Parameter DefaultValue="15" Name="p_price" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>



<div id="footer" class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div style="width:100% ; height">
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

