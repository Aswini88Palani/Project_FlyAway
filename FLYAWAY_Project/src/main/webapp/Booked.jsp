<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url('./images/image6.jpg');
	font-family: 'Calibri';
	color: black;
	text-align:center;
	font-size: 12px;
}
</style>
<title>Booked Ticket</title>
</head>
<body>
	<header>
	<nav style="background-color: gold">
	<h1>FLYAWAY - AN ONLINE TICKET BOOKING PORTAL</h1>
	<h4>***Book tickets at best prices***</h4>
	</nav>
	<div align="left">
	<h3><a href="index.jsp">Home</a></h3>
	<h3><a href="checkout.jsp">Back</a></h3>
	</div>
	</header>

	<h3>Thank You for Booking your ticket from FLYAWAY!</h3>
	
	<div align="center">
	<div style="border:3px solid black;width:50%;border-radius:50px;padding:20px">
	<h3>Ticket Details</h3>
	<table style="width: 90%;">
	<tr>
		<th>Flight Number</th>
		<th>Airline</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Date</th>
		<th>Ticket Price</th>
	</tr>
	<tr align=center>
		<td><%=session.getAttribute("flightNumber")%></td>
		<td><%=session.getAttribute("airline")%></td>
		<td><%=session.getAttribute("source")%></td>
		<td><%=session.getAttribute("destination")%></td>
		<td><%=session.getAttribute("date")%></td>
		<td><%=session.getAttribute("price")%></td>		
	</tr>
	</table>
	
	<h3>Passenger Details</h3>
	<table style="width: 50%;">
	<tr>
		<th>Name</th>
		<th>Email</th>
		<th>Phone No</th>
	</tr>
	<tr align=center>
		<td><%=session.getAttribute("pname")%></td>
		<td><%=session.getAttribute("pemail")%></td>
		<td><%=session.getAttribute("phone")%></td>
	</tr>
	</table>
	
	<h3>Payment Details</h3>
	<table style="width: 50%;">
	<tr>
		<th>Card Name</th>
		<th>Card Number</th>
	</tr>
	<tr align=center>
		<td><%=session.getAttribute("cardname")%></td>
		<td><%=session.getAttribute("cardnum")%></td>
	</tr>
	</table>
	<h3>Total Price: <%= session.getAttribute("total") %> </h3>
	<button class="btn btn-primary mb-3 text-center lead fw-bolder" onclick="window.print()">Print</button>
	</div></div>

	<br/>
	<footer>
		<nav style="background-color: gold">
		<b>Phase 2 Project: FlyAway <br/>
        Developed by: Aswini Palani</b>
        </nav>
	</footer>
</body>
</html>