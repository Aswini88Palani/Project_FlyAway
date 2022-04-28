<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
<style>
body {
	background-image: url('./images/flight2.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 15px;
}
</style>
</head>
<body>
<body>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	<div align="left">
	<h3><a href="index.jsp">Home</a></h3><br/>
	</div>
	</header>
	
	<div align="right">
	<h3>Admin Login Page</h3>
	<div style="border:3px solid blue;width:20%;border-radius:50px;padding:20px">
	<form action=ValidateAdminServlet method=post>
		<label for=email>Enter Email address:</label> <input type="email" name=email id=email required/><br><br>
		<label for=password>Enter Password:</label> <input type="password" name=password id=password required/><br><br>
		<input type=submit value=Submit /> <input type=reset value=Reset />
	</form>
	</div>
	</div>
	
	<br/><br/><br/>
	<footer>
		<nav style="background-color: gold">
		<b>Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>

</body>
</html>