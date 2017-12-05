package com.embrocal.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.embrocal.model.ApplicantBean;
import com.embrocal.utility.Security;
import com.embrocal.utility.sql.SQLOperations;

import java.sql.*;

@WebServlet("/apply.html")
public class ProcessRegistrationServlet extends HttpServlet {
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
		String form = request.getParameter("form");
		
		if(form.equals("1"))
		{
			String LastName = request.getParameter("LastName");
			String FirstName = request.getParameter("FirstName");
			String MiddleName = request.getParameter("MiddleName");
			String CityAddress = request.getParameter("CityAddress1")+", "+request.getParameter("CityAddress2")+", "+request.getParameter("CityAddress3");
			String ProvincialAddress = request.getParameter("ProvincialAddress1")+", "+request.getParameter("ProvincialAddress2")+", "+request.getParameter("ProvincialAddress3");
			String ContactNumber = request.getParameter("ContactNumber");
			String DateOfBirth = request.getParameter("DateOfBirth");
			String PlaceOfBirth = request.getParameter("PlaceOfBirth");
			String CivilStatus = request.getParameter("CivilStatus");
			String Citizenship = request.getParameter("Citizenship");
			String Height = request.getParameter("Height1")+"' "+request.getParameter("Height2")+"''";
			String Weight = request.getParameter("Weight");
			String Religion = request.getParameter("Religion");
			String Sex = request.getParameter("Sex");
			String Spouse = request.getParameter("Spouse");
			String SpouseOccupation = request.getParameter("SpouseOccupation");
			String Address = request.getParameter("Address1")+", "+request.getParameter("Address2")+", "+request.getParameter("Address3");
			String Language = request.getParameter("Language");
			String FatherName = request.getParameter("FatherName");
			String FatherOccupation = request.getParameter("FatherOccupation");
			String MotherName = request.getParameter("MotherName");
			String MotherOccupation = request.getParameter("MotherOccupation");
			String ParentAddress = request.getParameter("ParentAddress1")+", "+request.getParameter("ParentAddress2")+", "+request.getParameter("ParentAddress3");
			String EmgPerson = request.getParameter("EmgPerson");
			String EmgRelation = request.getParameter("EmgRelation");
			String EmgAddress = request.getParameter("EmgAddress1")+", "+request.getParameter("EmgAddress2")+", "+request.getParameter("EmgAddress3");
			String EmgContactNumber = request.getParameter("EmgContactNumber");
			
			ApplicantBean applicant = new ApplicantBean();
			applicant.setLastName(LastName);
			applicant.setFirstName(FirstName);
			applicant.setMiddleName(MiddleName);
			applicant.setCityAddress(CityAddress);
			applicant.setProvincialAddress(ProvincialAddress);
			applicant.setContactNumber(ContactNumber);
			applicant.setDateOfBirth(DateOfBirth);
			applicant.setPlaceOfBirth(PlaceOfBirth);
			applicant.setCivilStatus(CivilStatus);
			applicant.setCitizenship(Citizenship);
			applicant.setHeight(Height);
			applicant.setWeight(Weight);
			applicant.setReligion(Religion);
			applicant.setSex(Sex);
			applicant.setSpouse(Spouse);
			applicant.setSpouseOccupation(SpouseOccupation);
			applicant.setAddress(Address);
			applicant.setLanguage(Language);
			applicant.setFatherName(FatherName);
			applicant.setFatherOccupation(FatherOccupation);
			applicant.setMotherName(MotherName);
			applicant.setMotherOccupation(MotherOccupation);
			applicant.setParentAddress(ParentAddress);
			applicant.setEmgPerson(EmgPerson);
			applicant.setEmgRelation(EmgRelation);
			applicant.setEmgAddress(EmgAddress);
			applicant.setEmgContactNumber(EmgContactNumber);
			
			HttpSession session=request.getSession();
			session.setAttribute("applicant",applicant);
			
			getServletContext().getRequestDispatcher(
					"/form2.html").include(request,
					response);
		}
		else if(form.equals("2"))
		{
			String ElemSchool = request.getParameter("ElemSchool");
			String ElemYear = request.getParameter("ElemYear");
			String HighSchool = request.getParameter("HighSchool");
			String HighYear = request.getParameter("HighYear");
			String College = request.getParameter("College");
			String CollegeYear = request.getParameter("CollegeYear");
			String Course = request.getParameter("Course");
			String VocationalCourse = request.getParameter("VocationalCourse");
			String VocationalYear = request.getParameter("VocationalYear");
			
			HttpSession session=request.getSession(false);
			ApplicantBean applicant = (ApplicantBean) session.getAttribute("applicant");
			applicant.setElemSchool(ElemSchool);
			applicant.setElemYear(ElemYear);
			applicant.setHighSchool(HighSchool);
			applicant.setHighYear(HighYear);
			applicant.setCollege(College);
			applicant.setCollegeYear(CollegeYear);
			applicant.setCourse(Course);
			applicant.setVocationalCourse(VocationalCourse);
			applicant.setVocationalYear(VocationalYear);
			
			session.setAttribute("applicant",applicant);
			
			getServletContext().getRequestDispatcher(
					"/form3.html").forward(request,
					response);
		}
		else if(form.equals("3"))
		{
			String EmpFrom = request.getParameter("EmpFrom");
			String EmpTo = request.getParameter("EmpTo");
			String EmpPosition = request.getParameter("EmpPosition");
			String EmpCompany = request.getParameter("EmpCompany");
			String EmpTotalExp = request.getParameter("EmpTotalExp");
			
			HttpSession session=request.getSession(false);
			ApplicantBean applicant = (ApplicantBean) session.getAttribute("applicant");
			applicant.setEmpFrom(EmpFrom);
			applicant.setEmpTo(EmpTo);
			applicant.setEmpPosition(EmpPosition);
			applicant.setEmpCompany(EmpCompany);
			applicant.setEmpTotalExp(EmpTotalExp);
			
			session.setAttribute("applicant",applicant);
			
			getServletContext().getRequestDispatcher(
					"/form4.html").forward(request,
					response);
		}
		else if(form.equals("4"))
		{
			String RefName = request.getParameter("RefName");
			String RefOccupation = request.getParameter("RefOccupation");
			String RefAddress = request.getParameter("RefContact");
			
			HttpSession session=request.getSession(false);
			ApplicantBean applicant = (ApplicantBean) session.getAttribute("applicant");
			applicant.setRefName(RefName);
			applicant.setRefOccupation(RefOccupation);
			applicant.setRefAddress(RefAddress);
			
			session.setAttribute("applicant",applicant);
			
			getServletContext().getRequestDispatcher(
					"/form5.html").forward(request,
					response);
		}
		else if(form.equals("5"))
		{
			String SSSNumber = request.getParameter("SSSNumber");
			String LatestResCert = request.getParameter("LatestResCert");
			String TIN = request.getParameter("TIN");
			String DateIssued = request.getParameter("DateIssued");
			String PagIbigNumber = request.getParameter("PagIbigNumber");
			String PlaceIssued = request.getParameter("PlaceIssued");
			String Q1 = request.getParameter("Q1");
			String RelName = request.getParameter("RelName");
			String RelPosition = request.getParameter("RelPosition");
			String Position = request.getParameter("Position");
			
			HttpSession session=request.getSession(false);
			ApplicantBean applicant = (ApplicantBean) session.getAttribute("applicant");
			applicant.setSSSNumber(SSSNumber);
			applicant.setLatestResCert(LatestResCert);
			applicant.setTIN(TIN);
			applicant.setDateIssued(DateIssued);
			applicant.setPagIbigNumber(PagIbigNumber);
			applicant.setPlaceIssued(PlaceIssued);
			applicant.setQ1(Q1);
			applicant.setRelName(RelName);
			applicant.setRelPosition(RelPosition);
			applicant.setPosition(Position);
			
			session.setAttribute("applicant",applicant);
			
			getServletContext().getRequestDispatcher(
					"/form6.html").forward(request,
					response);
		}
		else if(form.equals("6"))
		{
			String Username = request.getParameter("Username");
			String Password = request.getParameter("Password");
			String Status = "For Review";
			String Schedule = "UNAVAILABLE";
			String Comment;
			
			HttpSession session=request.getSession(false);
			ApplicantBean applicant = (ApplicantBean) session.getAttribute("applicant");
			applicant.setUsername(Username);
			applicant.setPassword(Security.encrypt(Password));
			applicant.setStatus(Status);
			applicant.setSchedule(Schedule);
			
			session.setAttribute("applicant",applicant);
			System.out.println(applicant.getLastName()+" : "+applicant.getPassword());
			
			if (connection != null) {
				
				if (SQLOperations.addApplicantEntry(applicant, connection)){
					System.out.println("successful insert");
					request.setAttribute("applicant", applicant);
					getServletContext().getRequestDispatcher("/login.html").forward(request, response);
				} else {
					System.out.println("failed insert");
					getServletContext().getRequestDispatcher("/index.html").forward(request, response);
				}
			} else {
				System.out.println("invalid connection");
			}
		}
		
		
		
	}

}
