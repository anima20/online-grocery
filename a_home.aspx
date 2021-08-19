<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a_home.aspx.cs" Inherits="project.a_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>
        

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
          <img src="images/1234.png" style=" height:115px; width:150px ; margin-top:-25px; margin-bottom:-35px; margin-left: -20px; "/>
           <asp:Label ID="Label4" runat="server" Text="" style="margin-left:80px; margin-top:0px ; font-size:18px ;color:grey ; font-weight:bolder ; text-transform:uppercase"    ></asp:Label>

          <ul class="navbar-nav mr-auto">
        <li>
       <a class="nav-link" href="a_home.aspx" style="margin-left:110px">Home</a>
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
           <%--<asp:Button ID="add" runat="server" Text="kjnk"  class="text-muted" style="background:unset ; border:hidden ; font-size:19px ; margin-top:-5px"/>--%>
            <%--<asp:Button ID="update" runat="server"  Text="Update" class="text-muted" style="background:unset ; border:hidden ; font-size:19px ; margin-top:-5px" />&nbsp&nbsp&nbsp
            <asp:Button ID="add" runat="server" Text="Add" class="text-muted" style="background:unset ; border:hidden ; font-size:19px ; margin-top:-5px"  />&nbsp&nbsp&nbsp--%>
            <asp:Button ID="login" runat="server"  class="text-muted" style="background:unset ; border:hidden ; font-size:19px ; margin-top:-5px" OnClick="login_Click" />
           <%-- <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/a.png" style="height: 35px ; width: 80px; margin-top: 0% " OnClick="ImageButton2_Click" />--%>

    </div>
  </div>
</nav>



    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="margin-top: 3% ; width:950px; margin-left:13px ; height:600px">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" style="width:950px; margin-left:23px ; height:600px">
     <div class="carousel-item active" >
        <img src="images/ban2.png" class="d-block w-100" alt="..." style="width: 9500px ; height:600px ;  border-radius:30px ">
     </div>
    <div class="carousel-item">
         <img src="images/ban1.png" class="d-block w-100" alt="..."  style="width: 950px ; height:600px ;  border-radius:30px ">
    </div>
    <div class="carousel-item">
        <img src="images/ban3.png" class="d-block w-100" alt="..."  style="width: 950px ; height:600px ;  border-radius:30px ">
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
  
        
      <%-- <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="images/goffer.jpg" style="margin-left:200px ; Width:1100px ; height:200px  ; margin-top:10px; " OnClick="ImageButton6_Click"  />--%>
 
       <div style="margin-top:10px ; margin-left : 1050px ; margin-top:-600px"  >
           <asp:Button ID="Button1" runat="server" Text="View Products"  class="btn btn-light" style="width:400px ; height:200px ; border-radius:20px ; font-size:30px ; font-family : Arial , Arial, Helvetica, sans-serif "/>
        <asp:Button ID="Button2" runat="server" Text="Add Products"  class="btn btn-light" style="width:400px ; height:200px ; border-radius:20px ; font-size:30px ; margin-top:10px ; font-family : Arial , Arial, Helvetica, sans-serif " OnClick="Button2_Click"  />
           <asp:Button ID="Button3" runat="server" Text="Update Products"  class="btn btn-light" style="width:400px ; height:200px ; border-radius:20px ; font-size:30px ; margin-top:10px ; font-family : Arial , Arial, Helvetica, sans-serif " OnClick="Button3_Click" />
 </div>

        
<table></table>
        </div>



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
    </form>
</body>
</html>
