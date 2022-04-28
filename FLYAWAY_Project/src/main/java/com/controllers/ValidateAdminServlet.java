package com.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;
import com.dao.AdminDaoImpl;
import com.dto.Admin;

public class ValidateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ValidateAdminServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Admin admin = new Admin(email, password);
		AdminDao dao = new AdminDaoImpl();
		
		boolean isAdminValid = dao.validateAdmin(admin);
		
		if(isAdminValid)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", admin.getEmail());
			session.setAttribute("password", admin.getPassword());
			response.sendRedirect("dashboard.jsp");
		} else {
			request.getRequestDispatcher("login.jsp").include(request, response);
			out.print("<h2 style='color:red;'> Incorrect email address or password! </h2>");
		}
	}

}