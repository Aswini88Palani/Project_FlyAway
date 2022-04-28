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
	background-image: url('./images/image4.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 18px;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  background-color: aqua;
}
</style>
<title>Search Results</title>
</head>
<body>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	</header>
	
	<div align="left">
	<a href="search.jsp">Back</a>
	</div>

	<h2>Search Results</h2>
    <h4>Available flights from <%= session.getAttribute("source") %> to <%= session.getAttribute("destination") %><br/>
    Date of Travel: <%= session.getAttribute("date") %> <br/>
    No. of Passengers: <%= session.getAttribute("passengers") %> </h4>

	<div align="center">
	<div style="border:5px solid magenta;width:70%;border-radius:50px;padding:20px">
	<table border="1" style="width: 100%;">
	<tr>
		<th>Flight Number</th>
		<th>Airline</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Date</th>
		<th>Time</th>
		<th>Ticket Price</th>
		<th>Select</th>
	</tr>
	<%
	List<FlightDetails> flights = (List<FlightDetails>) session.getAttribute("flights");
	for(FlightDetails flight : flights)
	{
	out.print("<tr align=center>");
	out.print("<td>"+ flight.getFlightNumber() +"</td>");
	out.print("<td>"+ flight.getAirline() +"</td>");
	out.print("<td>"+ flight.getSource() +"</td>");
	out.print("<td>"+ flight.getDestination() +"</td>");
	out.print("<td>"+ session.getAttribute("date") + "</td>");
	out.print("<td>"+ flight.getTime() + "</td>");
	out.print("<td>"+ flight.getPrice() +"</td>");
	out.print("<td><a href='passengerdetails.jsp' class='btn btn-primary'>"+ "Book This Flight" +"</a></td>");
	out.print("</tr>");
	}
	%>
	</table>
	</div></div>
	
	<br/><br/><br/>
	<footer>
		<nav style="background-color: gold">
		<b>Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>