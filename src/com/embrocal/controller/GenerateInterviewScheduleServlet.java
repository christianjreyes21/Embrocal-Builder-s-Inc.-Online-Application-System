package com.embrocal.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.embrocal.model.ApplicantBean;


@WebServlet("/applicantinterview.html")
public class GenerateInterviewScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	public void init() throws ServletException {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		HttpSession session=request.getSession(false);
		try{
		if(session.getAttribute("applicant")!=null)
		{
			ApplicantBean applicant = (ApplicantBean) session.getAttribute("applicant");
			getServletContext().getRequestDispatcher(
					"/applicantinterview.jsp").forward(request,
					response);
		}
		else
		{  
			getServletContext().getRequestDispatcher(
					"/login.html").include(
					request, response);
		}
		}
		catch(Exception e){getServletContext().getRequestDispatcher(
				"/login.html").include(
				request, response);}
	}

}
