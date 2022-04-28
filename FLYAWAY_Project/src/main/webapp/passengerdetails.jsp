<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/image5.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 20x;
}
</style>
<title>Passenger Details</title>
</head>
<body>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	</header>
	
	<div align="left">
	<h2><a href="searchresults.jsp">Back</a></h2>
	</div><br/>
	<div align="center">
	<h1>Passenger Details</h1>
	</div>
	<div align="center">
	<div style="border:3px solid blue;width:35%;border-radius:50px;padding:20px">
	<form action="PassengerDetailServlet" method="post">
	<b>
	Passenger Name: <input type="text" class="form-control" id="pname" name="pname" required><br/><br/>
	Email Address: <input type="text" class="form-control" id="pemail" name="pemail" required><br/><br/>
	Phone Number: <input type="number" class="form-control" id="phone" name="phone" required><br/><br/>
	</b>
	<input type="submit" class="btn btn-primary mb-3" value="Submit">					
	</form>
	</div>
	</div>
	
	<br/>
	<footer>
		<nav style="background-color: gold">
		<b>Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>