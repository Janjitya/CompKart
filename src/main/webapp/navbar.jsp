

<%@page import="com.compkart.entities.*"%>
<%
	Users user1 = (Users) session.getAttribute("current_user");

%>






<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy | PC Parts </title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="mystyle/style.css">

</head>
<body >
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp">CompKart</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse  justify-content-end" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp"><span class="pe-3 text-center"><img src="images/logo/home-free-icon-font(1).png"></span>Home</a>
          </li>
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           PC Components
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            <li><a class="dropdown-item" href="products.jsp?category=all">All Products</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=MotherBoard">MotherBoard</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=Processor">Processor</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=RAM">RAM </a></li>
            <li><a class="dropdown-item" href="products.jsp?category=SSD">SSD</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=Hard Drive">Hard Drive</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=Graphics Card">Graphics Card</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=Power Supply">Power Supply</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=Cabinet">Cabinet</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=Monitor">Monitor</a></li>
            <li><a class="dropdown-item" href="products.jsp?category=Peripherals">Peripherals</a></li>
          </ul>
          </li>
          
          
          <%
          	if(user1==null){
          	%>
          	
          	
          	<li class="nav-item order-2">
            <a class="nav-link" href="Login.jsp">Login</a>
          </li>
          <li class="nav-item order-3">
            <a class="nav-link" href="Signup.jsp">Sign Up</a>
          </li>
          
          		
          	<%}else{ %>
          	
          		
          	<li class="nav-item">
            <a class="nav-link" href="#!">Welcome! <%=user1.getUserName() %></a>
          </li>
          <li class="nav-item d-flex justify-content-end order-2">
            <a class="nav-link  justify-content-end" href="LogoutServlet">Logout</a>
          </li>
          		
          		
         <%  	}
          %>
          <li class="nav-item d-flex justify-content-end order-1">
            <a class="nav-link  " href="#!" data-bs-toggle="modal" data-bs-target="#cart">Cart <span class ="badge  bg-danger cart-item">0</span></a>
          </li>
         
          
        </ul>
        
      </div>
    </div>
  </nav>
        
    <script src="js/jquery.js"></script>        
<script src="js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
 <script src="compcss/script.js"></script>
     
</body>
</html>