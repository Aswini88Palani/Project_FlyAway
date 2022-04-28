package com.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.FlightDetailsDao;
import com.dao.FlightDetailsDaoImpl;
import com.dto.FlightDetails;

public class AddFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddFlightServlet() {
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		String flightNumber = request.getParameter("flightNumber");
		String airline = request.getParameter("airline");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String price = request.getParameter("price");
		
		FlightDetails flight = new FlightDetails(flightNumber, airline, source, destination, date, time, price);
		FlightDetailsDao dao = new FlightDetailsDaoImpl();
		Integer flightId = dao.addFlight(flight);
		
		if(flightId!= null)
		{
			request.getRequestDispatcher("FlightAddedSuccessfully.jsp").include(request, response);
		}
}

}