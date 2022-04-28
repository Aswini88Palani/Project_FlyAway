<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/image1.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 18px;
}
</style>
<title>Change Admin Password</title>
</head>
<body>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	</header>
	
	<div align=left>
	<a href="dashboard.jsp"><input type=submit value=Back></a>
	</div>
	
	<h3>Change Password</h3>
	
	<div align="center">
	<div style="border:3px solid blue;width:30%;border-radius:50px;padding:20px">
	<form action="ChangePasswordServlet" method="post">
	<div class="mb-3">
	Enter Email address: <input type="text" class="form-control" id="email" name="email" required/>
	</div><br/>
	<div class="mb-3">
	Enter New Password:	<input type="password" class="form-control" id="newpass" name="newpass" required/>
	</div><br/>
	<div class="mb-3">
	Confirm New Password: <input type="password" class="form-control" id="password" name="password" required/>
	</div><br/>
	<input class="btn btn-primary mb-3" type="submit" value="Change">
	</form>
	</div></div>
	
	<br/><br/><br/><br/>
	<footer>
		<nav style="background-color: gold">
		<b>Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>