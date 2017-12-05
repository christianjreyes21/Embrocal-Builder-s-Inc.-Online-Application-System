package com.embrocal.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.embrocal.model.AdminBean;
import com.embrocal.utility.Security;
import com.embrocal.utility.sql.SQLOperations;

@WebServlet("/admininfo.html")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Connection connection;
	
    public void init() throws ServletException {
    	if (connection == null) {
    		connection = SQLOperations.getConnection();
    		getServletContext().setAttribute("dbConnection", connection);
    	}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String)request.getAttribute("username");
		String password = (String)request.getAttribute("password");
		
		if(password.endsWith("=="));
		String encrypted = Security.encrypt(password);
		System.out.println(encrypted);
		
		boolean isValidUser = SQLOperations.isValidUser(connection, username, password);

		if (isValidUser) {
			boolean isAdmin = username.substring(0, 5).equals("admin");
			AdminBean admin = SQLOperations.retrieveAdmin(username, connection);
			AdminBean ub = null;
			
			System.out.println("yehey nakalogin na!!!");
			
			ub = SQLOperations.updateUserBean(connection, username, isAdmin);
			getServletContext().setAttribute("ub", ub);

			HttpSession session=request.getSession();
			session.setAttribute("admin",admin);
			getServletContext().getRequestDispatcher("/adminprofile.html").include(request, response);
		}
		else {
			getServletContext().getRequestDispatcher("/index.html").include(request, response);
		}
	}

}
