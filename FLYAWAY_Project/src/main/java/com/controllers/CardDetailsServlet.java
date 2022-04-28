package com.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CardDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CardDetailsServlet() {
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String cardname = request.getParameter("cardname");
			String cardnum = request.getParameter("cardnum");
			
			HttpSession session = request.getSession();
			session.setAttribute("cardname", cardname);
			session.setAttribute("cardnum", cardnum);
			
			response.sendRedirect("Booked.jsp");
	}

}