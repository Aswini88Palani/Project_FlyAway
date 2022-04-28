package com.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dao.AdminDaoImpl;

public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ChangePasswordServlet() {
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
	
		AdminDao dao = new AdminDaoImpl();
		dao.updateAdminPassword(email, password);
		
		request.getRequestDispatcher("login.jsp").include(request, response);
		writer.println("<h2 style='color:red;'> Password updated successfully!</h2>");
	}

}