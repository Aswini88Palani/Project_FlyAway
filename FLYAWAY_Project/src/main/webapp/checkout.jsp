<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dto.FlightDetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/flight5.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 20x;
}
</style>
<title>CheckOut</title>
</head>
<body>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	</header>
	
	<div align="left">
	<h3><a href="passengerdetails.jsp">Back</a></h3>
	</div> 
	
	<% 	List<FlightDetails> flights = (List<FlightDetails>) session.getAttribute("flights"); 
		for(FlightDetails flight : flights){
		session.setAttribute("price", flight.getPrice());
		session.setAttribute("flightNumber", flight.getFlightNumber());
		session.setAttribute("airline", flight.getAirline());
		}
		Integer n = Integer.parseInt((String)session.getAttribute("passengers"));
		Integer p = Integer.parseInt((String)session.getAttribute("price"));
		Integer total = n*p;
		session.setAttribute("total", total);
	%>
	<div align="right">
	<h2 style=color:blue>CheckOut - Card Details</h2>
	</div>
	<div align="right">
	<div style="border:3px solid blue;width:25%;border-radius:50px;padding:20px">
	<form action="CardDetailsServlet" method="post">
	<h3 style=color:blue>
	Card Name: <input type="text" class="form-control" id="cardname" name="cardname" required><br/><br/>
	Card Number: <input type="number" class="form-control" id="card-num" name="cardnum" required><br/><br/>
	<p>Total: <%= session.getAttribute("passengers") %> x <%= session.getAttribute("price") %> = Rs. <%= total %></p>
	<input type="submit" class="btn btn-primary mb-3" value="Checkout">	
	</h3>			
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