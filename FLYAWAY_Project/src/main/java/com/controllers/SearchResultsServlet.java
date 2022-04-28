package com.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FlightDetailsDao;
import com.dao.FlightDetailsDaoImpl;
import com.dto.FlightDetails;

public class SearchResultsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SearchResultsServlet() {
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String date = request.getParameter("date");
		String passengers = request.getParameter("passengers");
		
		HttpSession session = request.getSession();
		session.setAttribute("source", source);
		session.setAttribute("destination", destination);
		session.setAttribute("date", date);
		session.setAttribute("passengers", passengers);
		
		
		FlightDetailsDao dao = new FlightDetailsDaoImpl();
		List<FlightDetails> flights = dao.searchFlights(source, destination);
		session.setAttribute("flights", flights);
		response.sendRedirect("searchresults.jsp");
		}

}