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

@WebServlet("/deactivate.html")
public class DeactivateAccountServlet extends HttpServlet {
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
		String password = request.getParameter("password");
		
		if (password.equals(ub.getPassword())) {
			SQLOperations.deactivateAccount(connection, ub.getUsername());
				getServletContext().getRequestDispatcher("/adminsettingsdeact3.html").forward(request, response);
		} //else {
			//System.out.println("Wrong password");
		//	getServletContext().getRequestDispatcher("/adminsettingsdeact.jsp").forward(request, response);
	//	}
	}

}