<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/image2.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 18px;
}
</style>
<title>Add Flights</title>
</head>
<body>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	</header>
	
	<div align="left">
	<a href="dashboard.jsp"><input type=submit value=Back></a>
	</div>
	
	<h2>Add Flight</h2>
	
	<div align="center">
	<div style="border:4px solid blue;width:50%;border-radius:50px;padding:20px">
	<form action=AddFlightServlet method=post>
	<h3>
		Flight Number: <input type="text" name="flightNumber" required>
		Airline: <input type="text" name="airline" required><br/><br/>
		Source: <input type="text" name="source" required>
		Destination: <input type="text" name="destination" required><br/><br/>
		Date: <input type="text" name="date" required>
		Time: <input type="text" name="time" required><br/><br/>
		Ticket Price: <input type="text" name="price" required>
		<input type="submit" value="Add Flight">
	</h3>
	</form>
	</div>
	</div>
	
	
	<br/>
	<footer>
		<nav style="background-color: gold">
		Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani
        </nav>
	</footer>
</body>
</html>