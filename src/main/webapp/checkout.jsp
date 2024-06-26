
<%@page import="com.compkart.entities.*"%>
<%

Users user = (Users) session.getAttribute("current_user");

//if nobody is logged in and trying to access admin page
if (user == null) {

	session.setAttribute("message", "Please Login to Checkout");
	response.sendRedirect("Login.jsp");
	return;
}

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
    <div class="container">
        <div class="row my-5">
            <div class="col">
            <div class ="card">
            <div class="card-header">
            <h3 class="text-center fw-bold text-primary">Order Summary</h3>
            </div>
            <div class ="cart-body m-3">
           	
           	
           	
            </div>
            </div>

            </div>
            <div class="col">
                <div class="card">
                    <div class="card-header text-center">
                        <h3>Enter Your Details</h3>
                    </div>

                    <div class="card-body">
                <form action="PlaceOrder" method ="post" class="m-3">
               
                
                
                	 <input type ="hidden" name="pid" id="pid" >
                    <div class="mb-3">
                        <label  class="form-label">Name</label>
                        <input type="text" class="form-control"  aria-describedby="emailHelp" value="<%= user.getUserName()%>">
                    
                  </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email </label>
                        <input type="email" class="form-control" value="<%=user.getUserEmail() %>" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
             
                    
                    <div class="mb-3">
                        <label  class="form-label">Contact Number</label>
                        <input type="number" class="form-control"  aria-describedby="emailHelp">
                    </div>
                    
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Address</label>
                       <textarea class="form-control" placeholder="Enter full Address" id="floatingTextarea2" style="height: 100px"></textarea>
                    </div>
                    <div class ="text-center">
                    <button type = "submit" class="btn btn-outline-success text-center">Place Order</button>
                    <a href="index.jsp" class="btn btn-outline-primary text-center">Continue Shopping</a>
						</div>
                </form>
            </div>
        </div>
    </div>
    </div>
	</div>






    <!-- <==========FOOTER=========> -->
        
    <footer class ="text-white pt-5 pb-4 bg-dark">

        <div class="container text-center text-md-left">
          <div class="row text-center text-md-left">
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
              <h5 class="text-uppercase mb-4 font-weight bold text-warning" >CompKart</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, sequi nisi quos magni quia minus. Autem porro odio doloribus commodi?</p>
            </div>
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
              <h5 class="text-uppercase mb-4 font-weight bold text-warning">Information</h5>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Payment Method</a>
              </p>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Cancellation & Refund</a>
              </p>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Shipping & Delivery</a>
              </p>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Bank Details</a>
              </p>
            </div>
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3 ">
              <h5 class="text-uppercase mb-4 font-weight bold text-warning">Customer Service</h5>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Your Account</a>
              </p>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Order History</a>
              </p>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Returns</a>
              </p>
              <p>
                <a href="#" class="text-white" style="text-decoration: none;">Help</a>
              </p>

            </div>
            
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
              <h5 class="text-uppercase mb-4 font-weight bold text-warning">Contact Us</h5>

              <p>
                <span class="pe-2"><img src="images/logo/marker-free-icon-font(1).png"></span> Sutarwadi, Pashan, Pune-21.
              </p>
              <p>
               <span class="pe-2"><img src="images/logo/envelope-free-icon-font(1).png"></span> compkart.pvt.ltd@gmail.com
              </p>
              <p>
               <span class="pe-2"><img src="images/logo/phone-call-free-icon-font(1).png" ></span> +91 1234567890
              </p>
            </div>
          </div>
          <hr class="mb-4">
          <div class="row align-items-center">
            <div class="col-md-7 col-lg-8">
              <p>Copyright &#169;2022 All rights reserved by:
                <a href="#" style="text-decoration: none;"><strong class="text-warning">CompKart</strong></a> </p>

            </div>
            <div class="col-md-5 col-lg-4">
              <div class="text-center text-md-right">
                <ul class="list-unstyled list-inline">
                  <li class ="list-inline-item">
                    <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><img src="images/logo/twitter-free-icon-font(1).png"></a>

                  </li>
                  <li class ="list-inline-item">
                    <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><img src="images/logo/facebook-free-icon-font(1).png"></a>

                  </li>
                  <li class ="list-inline-item">
                    <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><img src="images/logo/instagram-free-icon-font(1).png"></a>

                  </li>
                  <li class ="list-inline-item">
                    <a href="#" class="btn-floating btn-sm text-white" style="font-size: 23px;"><img src="images/logo/youtube-free-icon-font(1).png"></a>

                  </li>
                </ul>
              </div>
            </div>

          </div>
        </div>

         </footer> 

    <%@include file ="components/common_modals.jsp" %>
		<script src="compcss/script.js"></script>
		  <script src="js/jquery.js"></script> 
      <script src="bootstrap/js/bootstrap.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
</body>
</html>