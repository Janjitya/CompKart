
<%@page import="com.compkart.entities.*"%>
<%@page import="com.compkart.Dao.*"%>
<%@page import="com.compkart.conn.*"%>
<%@page import="java.util.*"%>
<%
Users user = (Users) session.getAttribute("current_user");

//if nobody is logged in and trying to access admin page
if (user == null) {

	session.setAttribute("message", "You are not logged in!");
	response.sendRedirect("Login.jsp");
	return;
} else {

	//if the user is logged in and its not admin
	if (!user.getUserEmail().equals("admin@compkart.in")) {
		session.setAttribute("message", "You can't Access this page");
		response.sendRedirect("Login.jsp");
		return;
	}
}
%>

<%
	Productdao pdao = new Productdao(DBconnect.getCon());
	List<Products> plist = pdao.showProducts();
%>
<%
	Userdao udao = new Userdao(DBconnect.getCon());
	List<Users> ulist = udao.getUsers();
%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
 <%@include file="navbar.jsp" %>

 <div class="row m-5">

	<div class="col col-md-4">
 
 	<div class="card mb-3" style="max-width: 350px;">

  <div class="row g-0">
    <div class="col-md-4">
      <img src="images/logo/wallet-solid-120.png" class="img-fluid rounded-start" alt="..." style="width: 190px;">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Total Earnings</h5>
        <p class="card-text"></p>
       
      </div>
    </div>
  </div>
</div>
</div>
<div class="col col-md-4">
 
	<div class="card mb-3" style="max-width: 350px;">

 <div class="row g-0">
   <div class="col-md-4">
	 <img src="images/logo/4965791_50426.jpg" class="img-fluid rounded-start" alt="..." style="width: 190px;">
   </div>
   <div class="col-md-8">
	 <div class="card-body">
	   <h5 class="card-title">Total Users</h5>
	   <p class="card-text"><%=ulist.size() %></p>
	  
	 </div>
   </div>
 </div>
</div>
</div>
<div class="col col-md-4">
 
	<div class="card mb-3" style="max-width: 350px;">

 <div class="row g-0">
   <div class="col-md-4">
	 <img src="images/logo/11235697_10897.jpg" class="img-fluid rounded-start" alt="..." style="width: 190px;">
   </div>
   <div class="col-md-8">
	 <div class="card-body">
	   <h5 class="card-title">Total Products</h5>
	   <p class="card-text"><%=plist.size() %></p>
	  
	 </div>
   </div>
 </div>
</div>
</div>
</div>

 
	<h1 class="text-center text-danger fw-bold">Add Products Here</h1>
	 <%@include file ="components/message.jsp" %>

 <div class="container text-center my-5 col-md-6 border ">
	<form action ="ProductServlet" method="post" enctype="multipart/form-data">
		<div class="mb-3">
		  <label  class="form-label text-danger fw-bold">Title</label>
		  <input type="text" name ="p_title" class="form-control" placeholder="Product Title" >
		  
		</div>
		<div class="mb-3">
		  <label  class="form-label text-danger fw-bold">Description</label>
		  <textarea class="form-control"  name ="p_desc" placeholder="Product Description"></textarea>
		</div>
		
		
		<div class="mb-3">
			<select value="category"  name ="p_cat" class="form-control">
				<option value="Processor">Processor</option>
				<option value="Graphics Card">Graphics Card</option>
				<option value="MotherBoard">MotherBoard</option>
				<option value="SSD">SSD</option>
				<option value="Hard Drive">Hard Drive</option>
				<option value="Power Supply">Power Supply</option>
				<option value="RAM">RAM</option>
				<option value="Cabinet">Cabinet</option>
				<option value="Monitor">Monitor</option>
				<option value="Peripherals">Peripherals</option>
			</select>
			
		  </div>
		  <div class="mb-3">
			<label  class="form-label text-danger fw-bold">Price</label>
			<input type="number"  name ="p_price" class="form-control" placeholder="Product Price" >
			
		  </div>
		  <div class="mb-3">
			<label  class="form-label text-danger fw-bold">Upload Product Image</label>
			<input type="file"  name ="p_img" class="form-control"  >
			
		  </div>
		
		<button type="submit" class="btn btn-danger col-md-6">Add Product</button>
	  </form>
 </div>

	
	<%@include file ="components/common_modals.jsp" %>
  <script src="js/jquery.js"></script> 
 <script src="bootstrap/js/bootstrap.js"></script>
 <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
</body>
</html>