<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

        <link rel="stylesheet" href="compcss/login.css">
    </head>

    <body>
        <%@include file="navbar.jsp" %>
            <div class="con">
                <div class="form-header">
                <h2 class="login">Login</h2>
                <h6 class="compcart">Comp Cart</h6>
            </div>
            </div>

            <form class="main" method="post" action ="LoginServlet">
                <%@include file ="components/message.jsp" %>
                <div class="input">
                    <input type="email" class="un" name = "email"required>
                    <label for="un">Email</label>
                </div>
                <div class="input">
                    <input type="password" class="pwd" name = "pwd"required>
                    <label for="pwd">Password</label>
                </div>
                <div class="fpwd">Forgot Password ?</div>
                <input type="Submit" class="submit" name="submit" value="Login">
                <div class="signup">
                    Don't have an account ?
                    <a href="Signup.jsp">SignUp</a>
                </div>
            </form>
	
	<%@include file ="components/common_modals.jsp" %>
	<script src="js/jquery.js"></script> 
      <script src="bootstrap/js/bootstrap.js"></script>
      <script src="compcss/script.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    </body>

    </html>