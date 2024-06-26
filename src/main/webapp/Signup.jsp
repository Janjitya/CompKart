<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="compcss/Signup.css">

</head>
<body>
    <%@include file="navbar.jsp" %>
    <div class="con">
        <div class="form-header">
	<h2 class="sign">Sign Up</h2>
    <h6 class="compcart">Comp Cart</h6>
</div>

    <form class=" main " method="post" action="SignupServlet">
    <%@include file="components/message.jsp" %>
        <div class="input">
            <input type="text" class="un" name="u_name" required>
            <label for="n">Name</label>
        </div>
        <div class="input">
            <input type="email" class="un" name = "u_email" required>
            <label for="em">Email</label>
        </div>
        <div class="input">
            <input type="password" class="pwd" name = "u_password" required>
            <label for="pwd">Password</label>
        </div>
        
        <div class="fpwd">
            <a href="#">Can't Sign in ? Contact Us</a>
        </div>
        <input type="Submit" class="submit" name="submit" value="Sign Up">
        <div class="login">
            Already have an account ?
            <a href="Login.jsp">Login</a>
        </div>
    </form>

</div>




<script src="js/jquery.js"></script> 
      <script src="bootstrap/js/bootstrap.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
	<script src="compcss/script.js"></script>

</body>

</html>