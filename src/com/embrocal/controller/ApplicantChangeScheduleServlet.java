package com.embrocal.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.embrocal.utility.sql.SQLOperations;

import java.sql.*;

@WebServlet("/updateschedule.html")
public class ApplicantChangeScheduleServlet extends HttpServlet {
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
		String date = request.getParameter("date");
		String time = request.getParameter("Time");
		System.out.println(date);
		System.out.println(time);
		
		
			if(connection != null)
				{
					SQLOperations.updateApplicantSchedule(id, date+" at "+time, connection);
					System.out.println(id + " has been sucessfully updated!");
					getServletContext().getRequestDispatcher(
							"/admininterviewsched.html").forward(request,
							response);
				}
				else {
					System.out.println("invalid connection");
				}
			
		
		
		
		
	}

}
