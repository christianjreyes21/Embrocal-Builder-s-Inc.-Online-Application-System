package com.embrocal.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.embrocal.utility.Security;
import com.embrocal.utility.sql.SQLOperations;
import com.embrocal.model.ApplicantBean;

import java.sql.*;

@WebServlet("/processlogin.html")
public class ApplicantLoginServlet extends HttpServlet {
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
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		

		
		try {
			if (connection != null) {
				ApplicantBean applicant = SQLOperations.retrieveApplicantMember(username,
						connection);
				if (applicant.getUsername().equals(username)
						&& password.equals(Security.decrypt(applicant.getPassword()))) {
					System.out.println("successful login");
					//request.setAttribute("applicant", applicant);
					HttpSession session=request.getSession();
					session.setAttribute("applicant",applicant);
					getServletContext().getRequestDispatcher(
							"/profile.html").forward(request,
							response);
				}else {
					System.out.println("Check If Admin");
					getServletContext().getRequestDispatcher(
							"/admininfo.html").forward(
							request, response);
				}
			} else {
				System.out.println("invalid connection");
			}
		} catch (Exception e) {
			System.out.println("username does not exist");
			request.setAttribute("username", username);
			request.setAttribute("password", password);
			getServletContext().getRequestDispatcher(
					"/admininfo.html").include(
					request, response);
		}
	}

}
