<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.compkart.conn.*"%>
<%@page import="com.compkart.Dao.*"%>
<%@page import="com.compkart.entities.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="compcss/mystyle.css">

</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container-fluid">

		<div class="row my-5 mx-5">

			<!-- categories -->
			<div class="col-md-2">
				<div class="list-group hover">
					<a href="products.jsp?category=all"
						class="list-group-item list-group-item-action active bg-dark border-dark"
						aria-current="true"> All Products </a> <a
						href="products.jsp?category=MotherBoard"
						class="list-group-item list-group-item-action">MotherBoard</a> <a
						href="products.jsp?category=Processor"
						class="list-group-item list-group-item-action">Processor</a> <a
						href="products.jsp?category=RAM"
						class="list-group-item list-group-item-action">RAM</a> <a
						href="products.jsp?category=SSD"
						class="list-group-item list-group-item-action">SSD</a> <a
						href="products.jsp?category=Hard Drive"
						class="list-group-item list-group-item-action">Hard Drive</a> <a
						href="products.jsp?category=Graphics Card"
						class="list-group-item list-group-item-action">Graphics Card</a> <a
						href="products.jsp?category=Power Supply"
						class="list-group-item list-group-item-action">Power Supply</a> <a
						href="products.jsp?category=Cabinet"
						class="list-group-item list-group-item-action">Cabinet</a> <a
						href="products.jsp?category=Monitor"
						class="list-group-item list-group-item-action">Monitor</a> <a
						href="products.jsp?category=Peripherals"
						class="list-group-item list-group-item-action">Peripherals</a>




				</div>

				<%
				Productdao pdao = new Productdao(DBconnect.getCon());
				List<Products> plist = null;

				String cat = request.getParameter("category");

				if (cat.equals("all")) {
					plist = pdao.showProducts();
				} else {
					plist = pdao.getProductByCategory(cat);
				}
				%>
			</div>
			<!-- products -->
			<div class="col-md-10  ">
				<div class="row ms-5">
					<%
					for (Products product : plist) {
					%>



					<div class="card me-3 border-secondary mb-3 " style="width: 19rem; ">
						<img src="images/products/<%=product.getP_image()%>"
							class="card-img-top " alt="..." >
						<div class="card-body">
							<h5 class="card-title text-center"><%=product.getP_name()%></h5>
							<p class="card-text text-center"><%=product.getP_desc()%></p>
							<p class="card-text text-center fw-bold">
								&#8377;
								<%=product.getP_price()%></p>
							<a  onclick="add_to_cart(<%=product.getP_id()%>, '<%=product.getP_name()%>',<%=product.getP_price()%>)" href ="#!"
								class="btn btn-dark col-md-12 text-center" id="add"><span class="pe-3 text-center"></span><img
									src="images/logo/bx-cart.png"
									>ADD
									TO CART</a>
						</div>
					</div>





					<%
					}
					%>
				</div>
			</div>
		</div>
	</div>
	

	<!--------------- FOOTER ----------------->

	<footer class="text-white pt-5 pb-4 bg-dark">

		<div class="container text-center text-md-left">
			<div class="row text-center text-md-left">
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
					<h5 class="text-uppercase mb-4 font-weight bold text-warning">CompKart</h5>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At,
						sequi nisi quos magni quia minus. Autem porro odio doloribus
						commodi?</p>
				</div>
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
					<h5 class="text-uppercase mb-4 font-weight bold text-warning">Information</h5>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Payment
							Method</a>
					</p>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Cancellation
							& Refund</a>
					</p>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Shipping
							& Delivery</a>
					</p>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Bank
							Details</a>
					</p>
				</div>
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3 ">
					<h5 class="text-uppercase mb-4 font-weight bold text-warning">Customer
						Service</h5>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Your
							Account</a>
					</p>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Order
							History</a>
					</p>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Returns</a>
					</p>
					<p>
						<a href="#" class="text-white" style="text-decoration: none;">Help</a>
					</p>

				</div>

				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
					<h5 class="text-uppercase mb-4 font-weight bold text-warning">Contact
						Us</h5>

					<p>
						<span class="pe-2"><img
							src="images/logo/marker-free-icon-font(1).png"></span> Sutarwadi,
						Pashan, Pune-21.
					</p>
					<p>
						<span class="pe-2"><img
							src="images/logo/envelope-free-icon-font(1).png"></span>
						compkart.pvt.ltd@gmail.com
					</p>
					<p>
						<span class="pe-2"><img
							src="images/logo/phone-call-free-icon-font(1).png"></span> +91
						1234567890
					</p>
				</div>
			</div>
			<hr class="mb-4">
			<div class="row align-items-center">
				<div class="col-md-7 col-lg-8">
					<p>
						Copyright &#169;2022 All rights reserved by: <a href="#"
							style="text-decoration: none;"><strong class="text-warning">CompKart</strong></a>
					</p>

				</div>
				<div class="col-md-5 col-lg-4">
					<div class="text-center text-md-right">
						<ul class="list-unstyled list-inline">
							<li class="list-inline-item"><a href="#"
								class="btn-floating btn-sm text-white" style="font-size: 23px;"><img
									src="images/logo/twitter-free-icon-font(1).png"></a></li>
							<li class="list-inline-item"><a href="#"
								class="btn-floating btn-sm text-white" style="font-size: 23px;"><img
									src="images/logo/facebook-free-icon-font(1).png"></a></li>
							<li class="list-inline-item"><a href="#"
								class="btn-floating btn-sm text-white" style="font-size: 23px;"><img
									src="images/logo/instagram-free-icon-font(1).png"></a></li>
							<li class="list-inline-item"><a href="#"
								class="btn-floating btn-sm text-white" style="font-size: 23px;"><img
									src="images/logo/youtube-free-icon-font(1).png"></a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>

	</footer>

	<script src="js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<script src="compcss/script.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
	<%@include file ="components/common_modals.jsp" %>
	
	
</body>
</html>