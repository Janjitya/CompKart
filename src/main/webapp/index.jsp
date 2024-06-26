<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@page import ="com.compkart.conn.*" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">

  </head>

  <body >
    <%@include file="navbar.jsp" %>
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
            aria-label="Slide 4"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/ASUS-nVidia.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="images/o202010080956262453.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="images/home-banner.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="images/banner-1.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
      <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3"
            aria-label="Slide 4"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active" data-bs-interval="10000">
            <img src="images/1200x200-lianli-deepcool-1-min-1200x200.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">

            </div>
          </div>
          <div class="carousel-item" data-bs-interval="2000">
            <img src="images/1200x200-Nitro-RX-6700XT-no-price-min-1200x200.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">

            </div>
          </div>
          <div class="carousel-item">
            <img src="images/1200x200-RX-6800-16GB-no-price-min-1200x200.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">

            </div>
          </div>
          <div class="carousel-item">
            <img src="images/banner_RTX.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">

            </div>
          </div>

        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

      <div class="img-index">
        <img src="images/geforce-amp-banners-laptops-strip-1024-t@2x.jpg" alt="vga" class="img-fluid ">
      </div>
      <div id ="new-arr" class ="bg-dark text-white text-center my-3 ">
        <h2 class ="text-center">Recently Added</h2>
      </div>
		
      <div class="items">
        <div class="container my-5">
          <div class="row">
            <div class="col">
              <div class="card h-100 gap-3 border-dark" style="width: 16rem; ">
                <img src="images/zt-t16520f-10l-2-1000x1000w.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title text-center">Zotac Gaming GeForce GTX 1650 </h5>
                  <p class="card-text text-center">Zotac Gaming GeForce GTX 1650 OC 4GB GDDR6</p>
                  <p class="card-text text-center fw-bold">&#8377 16,800.00</p>
                  <a href="#" class="btn btn-dark text-center btn-center col-md-12"><span class ="pe-3 text-center"><img src="images/logo/bx-cart.png" ></span>ADD TO CART</a>
                </div>
              </div>
              
            </div>
            <div class="col">
              <div class="card h-100 border-dark" style="width: 16rem;">
                <img src="images/amd1.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title text-center">AMD Ryzen 5 4500 </h5>
                  <p class="card-text text-center">AMD Ryzen 5 4500 Desktop Processor (Upto 4.1GHz 11MB Cache)</p>
                  <p class="card-text text-center fw-bold">&#8377 12,339.00</p>
                  <a href="#" class="btn btn-dark text-center btn-center col-md-12"><span class ="pe-3 text-center"><img src="images/logo/bx-cart.png" ></span>ADD TO CART</a>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100 border-dark" style="width: 16rem;">
                <img src="images/mag-b660-tomahawk-wifi-1-550x550.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title text-center">MAG B660 TOMAHAWK WIFI </h5>
                  <p class="card-text text-center">MSI MAG B660 Tomahawk Wifi Motherboard</p>
                  <p class="card-text text-center fw-bold">&#8377 21,365.00</p>
                  <a href="#" class="btn btn-dark text-center btn-center col-md-12"> <span class ="pe-3 text-center"><img src="images/logo/bx-cart.png" ></span>ADD TO CART</a>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100 border-dark" style="width: 16rem;">
                <img src="images/snvs-2000g-1-550x550.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title text-center">SNVS/2000G</h5>
                  <p class="card-text text-center">Kingston NV1 2TB NVMe PCIe SSD</p>
                  <p class="card-text text-center fw-bold">&#8377 13,850.00</p>
                  <a href="#" class="btn btn-dark text-center btn-center col-md-12"><span class ="pe-3 text-center"><img src="images/logo/bx-cart.png" ></span>ADD TO CART</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
        <hr class="mb-4">


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