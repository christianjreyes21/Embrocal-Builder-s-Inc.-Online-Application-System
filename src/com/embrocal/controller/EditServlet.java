package com.embrocal.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.embrocal.model.AdminBean;
import com.embrocal.utility.sql.SQLOperations;


@WebServlet("/edit.html")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Connection connection;
	private AdminBean ub;
	
    public void init() throws ServletException {
		connection = (Connection)getServletContext().getAttribute("dbConnection");
		ub = (AdminBean)getServletContext().getAttribute("ub");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int updated = 0;
		String newUsername = request.getParameter("newUsername"),
			oldUsername = request.getParameter("oldUsername");
		if (request.getParameter("change").equals("username") && 
				oldUsername.equals(ub.getUsername())) {
			updated = SQLOperations.update(connection, "username", ub.getUsername(), newUsername);
		} else if (request.getParameter("change").equals("password") &&
				request.getParameter("oldPassword").equals(ub.getPassword()) &&
				request.getParameter("initialPassword").equals(request.getParameter("newPassword"))) {
			updated = SQLOperations.update(connection, "password", ub.getUsername(), request.getParameter("newPassword"));
		} else if (request.getParameter("change").equals("details")) {
			updated = SQLOperations.update(connection, "details", ub.getUsername(), request.getParameter("name"),
					request.getParameter("position"), Integer.parseInt(request.getParameter("age")),
					request.getParameter("contact"));
		}
		
		/*System.out.println(updated);
		System.out.println("Old password: " + ub.getPassword());
		System.out.println("New password: " + request.getParameter("newPassword"));
		System.out.println("New passwords match: " +
				request.getParameter("initialPassword").equals(request.getParameter("newPassword")));*/
		if (updated >= 1) {
			ub = ((newUsername == null) ?
					SQLOperations.updateUserBean(connection, ub.getUsername(), ub.isAdmin())
					: SQLOperations.updateUserBean(connection, newUsername, ub.isAdmin()));
			getServletContext().setAttribute("ub", ub);
			if (request.getParameter("newPassword") != null)
				getServletContext().getRequestDispatcher("/adminsettings2.html").forward(request, response);
			else if (newUsername != null)
				getServletContext().getRequestDispatcher("/adminsettingschangeun2.html").forward(request, response);
			else if (request.getParameter("name") != null)
				getServletContext().getRequestDispatcher("/adminsettingseditacc2.html").forward(request, response);
		}
	}

}