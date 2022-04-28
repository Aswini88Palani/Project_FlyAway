<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/image3.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 18px;
}
</style>
<title>Search Flight</title>
</head>
<body>
	
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	</header>
	
	<div align="left">
	<a href="index.jsp">Back</a>
	</div>
				
	<h2>Search for a flight</h2>
			
	<div align="center">
	<div style="border:4px solid blue;width:30%;border-radius:50px;padding:20px">
	
	<form action="SearchResultsServlet" method=post>
	Date: <input type="date" min="2022-05-01" max="2022-08-31" class="form-control" id="date" name="date" required><br><br/>
	Source: 
		<select class="form-select" name="source" required>
		<option selected>Select Source</option>
		<option value="Bangalore">Bangalore</option>
		<option value="Kozhikode">Kozhikode</option>
		<option value="Jaipur">Jaipur</option>
		<option value="Cochin">Cochin</option>
		<option value="Chennai">Chennai</option>
		</select><br><br/>
	Destination:
		<select class="form-select" name="destination" required>
		<option selected>Select Destination</option>
		<option value="Coimbatore">Coimbatore</option>
		<option value="Mysore">Mysore</option>
		<option value="Delhi">Delhi</option>
		<option value="Hyderabad">Hyderabad</option>
		<option value="Mangalore">Mangalore</option>
		</select><br><br/>
	No. of Passengers: <input type="number" min="01" max="1000" class="form-control" id="source" name="passengers" required><br><br/>
	<input type="submit" class="btn btn-info mb-3 text-light" value="Search Flights">
	</form>
	</div>
	</div>
	
	<br/><br/>
	<footer>
		<nav style="background-color: gold">
		<b>Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>