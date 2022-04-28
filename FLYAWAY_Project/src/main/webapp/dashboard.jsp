<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="com.dto.FlightDetails" %>
<%@ page import="com.dao.FlightDetailsDaoImpl" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/flight3.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  background-color: aqua;
}
</style>
<title>Admin Dashboard</title>
</head>
<body>
	<%
	if(session.getAttribute("email") == null)
		response.sendRedirect("login.jsp");
	%>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	</header>
				
	<h1>Admin Dashboard</h1>
	
	<div align="right">
	<a href="addflights.jsp"><button type="button" class="btn btn-primary">Add Flight</button></a>
 	<a href="changepassword.jsp"><button type="button" class="btn btn-primary">Change Password</button></a>
	<a href="LogoutServlet"><button class="btn btn-danger">Logout</button></a>
	</div>

	<h1 align=left>Flight List</h1>
	<div align="center">
	<table border="1" style="width: 100%;">
		<tr>
		<th>Id</th>
		<th>Flight Number</th>
		<th>Airline</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Date</th>
		<th>Time</th>
		<th>Ticket Price</th>
		</tr>
		<%
		FlightDetailsDaoImpl dao = new FlightDetailsDaoImpl();
		List<FlightDetails> flights = dao.getAllFlights();
		for(FlightDetails flight : flights)
		{
		out.print("<tr align=center>");
		out.print("<td>"+ flight.getFlightId() + "</td>");
		out.print("<td>"+ flight.getFlightNumber() +"</td>");
		out.print("<td>"+ flight.getAirline() +"</td>");
		out.print("<td>"+ flight.getSource() +"</td>");
		out.print("<td>"+ flight.getDestination() +"</td>");
		out.print("<td>"+ flight.getDate() + "</td>");
		out.print("<td>"+ flight.getTime() + "</td>");
		out.print("<td>"+ flight.getPrice() +"</td>");
		out.print("</tr>");
		}
		%>
	</table>
	</div>
	
	<br/><br/><br/><br/><br/><br/>
	<footer>
		<nav style="background-color: gold">
		<b>Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>