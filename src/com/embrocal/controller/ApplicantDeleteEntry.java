package com.embrocal.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.embrocal.utility.sql.SQLOperations;

import java.sql.*;

@WebServlet("/applicantdelete.html")
public class ApplicantDeleteEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	
	public void init() throws ServletException {
		connection = SQLOperations.getConnection();
		
		if (connection != null) {
			getServletContext().setAttribute("dbConnection", connection);
			System.out.println("connection is READY.");
		} else {
			System.err.println("connection is NULL.");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		
			if(connection != null)
				{
					SQLOperations.deleteApplicantEntry(id, connection);
					System.out.println(id + " has been sucessfully deleted!");
					getServletContext().getRequestDispatcher(
							"/adminapplicantsinfo.html").forward(request,
							response);
				}
				else {
					System.out.println("invalid connection");
				}
			
		
		
		
		
	}

}
