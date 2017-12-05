package com.embrocal.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.embrocal.utility.sql.SQLOperations;

@WebServlet("/viewcomments.html")
public class ListComments extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private Connection connection;
	
    public void init() throws ServletException {
    	connection = (Connection)getServletContext().getAttribute("dbConnection");
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResultSet rs = SQLOperations.getComments(connection);
		
		request.setAttribute("rs", rs);
		getServletContext().getRequestDispatcher("/comments.jsp").forward(request, response);
	}

}