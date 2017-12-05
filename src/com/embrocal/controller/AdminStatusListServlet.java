package com.embrocal.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

import com.embrocal.utility.sql.SQLOperations;

@WebServlet("/adminstatusupdate.html")
public class AdminStatusListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
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
		HttpSession session = request.getSession(false);
		try{
		if (session.getAttribute("admin")!=null) {
			try {
				if (connection != null) {
					ResultSet rs = SQLOperations.getAllApplicantEntryStatus(
							connection, "For Review");
					ResultSet rs1 = SQLOperations.getAllApplicantEntryStatus(
							connection, "Hired");
					ResultSet rs2 = SQLOperations.getAllApplicantEntryStatus(
							connection, "Not Hired");
					ResultSet rs3 = SQLOperations.getAllApplicantEntryStatus(
							connection, "For Further Evaluation");
					request.setAttribute("forReview", rs);
					request.setAttribute("hired", rs1);
					request.setAttribute("notHired", rs2);
					request.setAttribute("forFurtherReview", rs3);
					
						getServletContext().getRequestDispatcher(
								"/adminstatusupdate.jsp").forward(request,
								response);
					
				} else {
					System.out.println("Invalid Connection resource");
				}
			} catch (NullPointerException npe) {
				System.err.println("Invalid Connection resource - "
						+ npe.getMessage());
			} catch (Exception e) {
				System.err.println("Exception - " + e.getMessage());
			}
		} else {
			getServletContext().getRequestDispatcher("/login.html")
					.include(request, response);
		}
		}
		catch(Exception e){getServletContext().getRequestDispatcher(
				"/login.html").include(
				request, response);}
	}
	

}
