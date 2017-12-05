package com.embrocal.utility.sql;

//import java.io.FileInputStream;
import java.sql.*;

import javax.sql.*;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.embrocal.model.AdminBean;
import com.embrocal.model.ApplicantBean;
import com.embrocal.utility.BeanFactory;
//import com.embrocal.utility.Security;
import com.embrocal.utility.sql.SQLCommands;

public class SQLOperations implements SQLCommands {

	private static Connection connection;
	
	private SQLOperations() {
	}
	// NEW CONNECTION
	private static Connection getDBConnection() {
		try {
		    InitialContext context = new InitialContext();
		    DataSource dataSource = (DataSource) 
		     context.lookup("java:comp/env/jdbc/EMBROCAL-DS");
		    
		    if (dataSource != null) {
		    	connection = dataSource.getConnection();
		    } else {
		    	System.err.println("DataSource is NULL.");
		    }
		} catch (NamingException e) {
		    e.printStackTrace();
		} catch (SQLException e) {
		    e.printStackTrace();
		}
		return connection;
	 }
	
	public static Connection getConnection() {
		return (connection!=null)?connection:getDBConnection();
	}
	// ADD APPLICANT ENTRY
	public static boolean addApplicantEntry(ApplicantBean applicant, 
		Connection connection) {
		
		try {
	        PreparedStatement pstmt = connection.prepareStatement(INSERT_APPLICANT_ENTRY);
	        pstmt.setString(1, applicant.getLastName());
	        pstmt.setString(2, applicant.getFirstName());
	        pstmt.setString(3, applicant.getMiddleName());
	        pstmt.setString(4, applicant.getCityAddress());
	        pstmt.setString(5, applicant.getProvincialAddress());
	        pstmt.setString(6, applicant.getContactNumber());
	        pstmt.setString(7, applicant.getDateOfBirth());
	        pstmt.setString(8, applicant.getPlaceOfBirth());
	        pstmt.setString(9, applicant.getCivilStatus());
	        pstmt.setString(10, applicant.getCitizenship());
	        pstmt.setString(11, applicant.getHeight());
	        pstmt.setString(12, applicant.getWeight());
	        pstmt.setString(13, applicant.getReligion());
	        pstmt.setString(14, applicant.getSex());
	        pstmt.setString(15, applicant.getSpouse());
	        pstmt.setString(16, applicant.getSpouseOccupation());
	        pstmt.setString(17, applicant.getAddress());
	        pstmt.setString(18, applicant.getLanguage());
	        pstmt.setString(19, applicant.getFatherName());
	        pstmt.setString(20, applicant.getFatherOccupation());
	        pstmt.setString(21, applicant.getMotherName());
	        pstmt.setString(22, applicant.getMotherOccupation());
	        pstmt.setString(23, applicant.getParentAddress());
	        pstmt.setString(24, applicant.getEmgPerson());
	        pstmt.setString(25, applicant.getEmgRelation());
	        pstmt.setString(26, applicant.getEmgAddress());
	        pstmt.setString(27, applicant.getEmgContactNumber());
	        pstmt.setString(28, applicant.getElemSchool());
	        pstmt.setString(29, applicant.getElemYear());
	        pstmt.setString(30, applicant.getHighSchool());
	        pstmt.setString(31, applicant.getHighYear());
	        pstmt.setString(32, applicant.getCollege());
	        pstmt.setString(33, applicant.getCollegeYear());
	        pstmt.setString(34, applicant.getCourse());
	        pstmt.setString(35, applicant.getVocationalCourse());
	        pstmt.setString(36, applicant.getVocationalYear());
	        pstmt.setString(37, applicant.getEmpFrom());
	        pstmt.setString(38, applicant.getEmpTo());
	        pstmt.setString(39, applicant.getEmpPosition());
	        pstmt.setString(40, applicant.getEmpCompany());
	        pstmt.setString(41, applicant.getEmpTotalExp());
	        pstmt.setString(42, applicant.getRefName());
	        pstmt.setString(43, applicant.getRefOccupation());
	        pstmt.setString(44, applicant.getRefAddress());
	        pstmt.setString(45, applicant.getSSSNumber());
	        pstmt.setString(46, applicant.getLatestResCert());
	        pstmt.setString(47, applicant.getTIN());
	        pstmt.setString(48, applicant.getDateIssued());
	        pstmt.setString(49, applicant.getPagIbigNumber());
	        pstmt.setString(50, applicant.getPlaceIssued());
	        pstmt.setString(51, applicant.getQ1());
	        pstmt.setString(52, applicant.getRelName());
	        pstmt.setString(53, applicant.getRelPosition());
	        pstmt.setString(54, applicant.getPosition());
	        pstmt.setString(55, applicant.getUsername());
	        pstmt.setString(56, applicant.getPassword());
	        pstmt.setString(57, applicant.getStatus());
	        pstmt.setString(58, applicant.getSchedule());
	        pstmt.executeUpdate(); // execute insert statement  
		} catch (SQLException sqle) {
			System.out.println("SQLException - addApplicant: " + sqle.getMessage());
			return false; 
		}	
		return true;
	}
	/*// SEARCH STUDENT ENTRY
	public static StudentEntryBean searchStudentEntry(String complaint, Connection connection) {
		StudentEntryBean studentEntry = new StudentEntryBean();
		try {
	        PreparedStatement pstmt = 
	        	connection.prepareStatement(SEARCH_STUDENT_ENTRY);
	        pstmt.setString(1, complaint);          
	        ResultSet rs  = pstmt.executeQuery();
	        
	        while (rs.next()) { 
	        	studentEntry.setLastName(rs.getString("LastName"));
	        	studentEntry.setFirstName(rs.getString("FirstName"));
	        	studentEntry.setMiddleName(rs.getString("MiddleName"));
	        	studentEntry.setYearLevelAndSection(rs.getString("YearLevelAndSection"));
	        	studentEntry.setStudentNumber(rs.getString("StudentNumber"));
	        	studentEntry.setEmailAddress(rs.getString("EmailAddress"));
	        	studentEntry.setCategory(rs.getString("Category"));
	        	studentEntry.setConcernsAndComplaints(rs.getString("ConcernsAndComplaints"));
	        }
		} catch (SQLException sqle) {
			System.out.println("SQLException - searchStudentEntry: " 
					+ sqle.getMessage());
			return studentEntry; 
		}	
		return studentEntry;
	}*/
	// GET APPLICANT ENTRIES BY SCHEDULE
	public static ResultSet getAllApplicantEntrySchedule(Connection connection,String schedule) {
		ResultSet rs = null;
		try {
			PreparedStatement pstmt = connection.prepareStatement(GET_ALL_APPLICANT_ENTRY_SCHEDULE);
			pstmt.setString(1, schedule);
			rs = pstmt.executeQuery();
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllApplicantEntrySchedule: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	// GET ALL APPLICANTS
	public static ResultSet getAllApplicants(Connection connection) {
		ResultSet rs = null;
		try {
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery(GET_ALL_APPLICANT_ENTRY);  
		} catch (SQLException sqle) {
			System.out.println("SQLException - GET_ALL_APPLICANT_ENTRY: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	// GET APPLICANT ENTRIES BY STATUS
	public static ResultSet getAllApplicantEntryStatus(Connection connection,String status) {
		ResultSet rs = null;
		try {
			PreparedStatement pstmt = connection.prepareStatement(GET_ALL_APPLICANT_ENTRY_STATUS);
			pstmt.setString(1, status);
			rs = pstmt.executeQuery();
		} catch (SQLException sqle) {
			System.out.println("SQLException - getAllApplicantEntryStatus: " 
			  + sqle.getMessage());
			return rs; 
		}	
		return rs;
	}
	
	// CHANGE APPLICANT STATUS
	public static int updateApplicantStatus(String id, String status, Connection connection) {
		int updated = 0;
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = 
	        	connection.prepareStatement(UPDATE_APPLICANT_STATUS);
	        pstmt.setString(1, status); 
	        pstmt.setInt(2, Integer.parseInt(id));
	        updated = pstmt.executeUpdate();   
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - updateApplicantStatus: " 
				+ sqle.getMessage());
			
			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Update Connection Rollback - " 
					+ sql.getMessage());
			}
			return updated; 
		}	
		return updated;
	}
	
	// CHANGE APPLICANT STATUS
		public static int updateApplicantSchedule(String id, String schedule, Connection connection) {
			int updated = 0;
			try {
				connection.setAutoCommit(false);
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(UPDATE_APPLICANT_SCHEDULE);
		        pstmt.setString(1, schedule); 
		        pstmt.setInt(2, Integer.parseInt(id));
		        updated = pstmt.executeUpdate();   
		        connection.commit();
			} catch (SQLException sqle) {
				System.out.println("SQLException - updateApplicantStatus: " 
					+ sqle.getMessage());
				
				try {
					connection.rollback();
				} catch (SQLException sql) {
					System.err.println("Error on Update Connection Rollback - " 
						+ sql.getMessage());
				}
				return updated; 
			}	
			return updated;
		}
	
	// CHANGE ANDMINISTRATOR PASSWORD
	public static int updateApplicantPassword(String username, String newPassword, Connection connection) {
		int updated = 0;
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = 
	        	connection.prepareStatement(UPDATE_APPLICANT_PASSWORD);
	        pstmt.setString(1, newPassword);
	        pstmt.setString(2, username);
	        updated = pstmt.executeUpdate();   
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - updateAdministratorPassword: " 
				+ sqle.getMessage());
			
			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Update Connection Rollback - " 
					+ sql.getMessage());
			}
			return updated; 
		}	
		return updated;
	}
	
	// DELETE APPLICANT ENTRY
	public static synchronized int deleteApplicantEntry(String id, 
			Connection connection) {
		int updated = 0;
		
		try {
			connection.setAutoCommit(false);
	        PreparedStatement pstmt = connection.prepareStatement(DELETE_APPLICANT_ENTRY);
	        pstmt.setInt(1, Integer.parseInt(id));
	        updated  = pstmt.executeUpdate();
	        connection.commit();
		} catch (SQLException sqle) {
			System.out.println("SQLException - deleteApplicanttEntry: " + sqle.getMessage());
			
			try {
				connection.rollback();
			} catch (SQLException sql) {
				System.err.println("Error on Delete Connection Rollback - " + sql.getMessage());
			}
			return updated; 
		}	
		return updated;
	}
	/*
	public static boolean addAdministratorMember(MemberBean member, 
			Connection connection) {
			
			try {
		        PreparedStatement pstmt = connection.prepareStatement(INSERT_ADMINISTRATOR_MEMBER);
		        pstmt.setString(1, member.getUsername());
		        pstmt.setString(2, Security.encrypt(member.getPassword())); 
		        pstmt.setString(3, member.getFirstName());
		        pstmt.setString(4, member.getLastName());
		        pstmt.setString(5, member.getPosition());
		        pstmt.setString(6, member.getEmail());  
		        //pstmt.setString(6, member.getPicture());
		        //FileInputStream fin=new FileInputStream(member.getPicture());
		        //pstmt.setBinaryStream(6, fin, fin.available());
		        pstmt.executeUpdate(); // execute insert statement  
			} catch (Exception e) {
				System.out.println("SQLException - addMember: " + e.getMessage());
				return false; 
			}	
			return true;
		}*/
		
		public static AdminBean retrieveAdmin(String username, Connection connection){
			AdminBean admin = new AdminBean();
			
			try{
				PreparedStatement pstmt = connection.prepareStatement(getAdminUser);
				pstmt.setString(1, username);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()){
					admin.setName(rs.getString("name"));
					admin.setPosition(rs.getString("position"));
					admin.setAge(rs.getInt("age"));
					admin.setContact(rs.getString("contact"));
					admin.setPassword(rs.getString("password"));
				}
			} catch (SQLException sqle) {
				System.out.println("SQLException - retrieveMember: " 
						+ sqle.getMessage());
				return admin; 
			}	
			return admin;
		}
	
		public static ApplicantBean retrieveApplicantMember(String username, 
			Connection connection) {
			ApplicantBean applicant = new ApplicantBean();
			 
			try {
		        PreparedStatement pstmt = 
		        	connection.prepareStatement(RETRIEVE_APPLICANT_MEMBER);
		        pstmt.setString(1, username);             
		        ResultSet rs  = pstmt.executeQuery();
		        
		        while (rs.next()) { 
		        	applicant.setLastName(rs.getString("LastName"));
					applicant.setFirstName(rs.getString("FirstName"));
					applicant.setMiddleName(rs.getString("MiddleName"));
					applicant.setCityAddress(rs.getString("CityAddress"));
					applicant.setProvincialAddress(rs.getString("ProvincialAddress"));
					applicant.setContactNumber(rs.getString("ContactNumber"));
					applicant.setDateOfBirth(rs.getString("DateOfBirth"));
					applicant.setPlaceOfBirth(rs.getString("PlaceOfBirth"));
					applicant.setCivilStatus(rs.getString("CivilStatus"));
					applicant.setCitizenship(rs.getString("Citizenship"));
					applicant.setHeight(rs.getString("Height"));
					applicant.setWeight(rs.getString("Weight"));
					applicant.setReligion(rs.getString("Religion"));
					applicant.setSex(rs.getString("Sex"));
					applicant.setSpouse(rs.getString("Spouse"));
					applicant.setSpouseOccupation(rs.getString("SpouseOccupation"));
					applicant.setAddress(rs.getString("Address"));
					applicant.setLanguage(rs.getString("Language"));
					applicant.setFatherName(rs.getString("FatherName"));
					applicant.setFatherOccupation(rs.getString("FatherOccupation"));
					applicant.setMotherName(rs.getString("MotherName"));
					applicant.setMotherOccupation(rs.getString("MotherOccupation"));
					applicant.setParentAddress(rs.getString("ParentAddress"));
					applicant.setEmgPerson(rs.getString("EmgPerson"));
					applicant.setEmgRelation(rs.getString("EmgRelation"));
					applicant.setEmgAddress(rs.getString("EmgAddress"));
					applicant.setEmgContactNumber(rs.getString("EmgContactNumber"));
					applicant.setElemSchool(rs.getString("ElemSchool"));
					applicant.setElemYear(rs.getString("ElemYear"));
					applicant.setHighSchool(rs.getString("HighSchool"));
					applicant.setHighYear(rs.getString("HighYear"));
					applicant.setCollege(rs.getString("College"));
					applicant.setCollegeYear(rs.getString("CollegeYear"));
					applicant.setCourse(rs.getString("Course"));
					applicant.setVocationalCourse(rs.getString("VocationalCourse"));
					applicant.setVocationalYear(rs.getString("VocationalYear"));
					applicant.setEmpFrom(rs.getString("EmpFrom"));
					applicant.setEmpTo(rs.getString("EmpTo"));
					applicant.setEmpPosition(rs.getString("EmpPosition"));
					applicant.setEmpCompany(rs.getString("EmpCompany"));
					applicant.setEmpTotalExp(rs.getString("EmpTotalExp"));
					applicant.setRefName(rs.getString("RefName"));
					applicant.setRefOccupation(rs.getString("RefOccupation"));
					applicant.setRefAddress(rs.getString("RefAddress"));
					applicant.setSSSNumber(rs.getString("SSSNumber"));
					applicant.setLatestResCert(rs.getString("LatestResCert"));
					applicant.setTIN(rs.getString("TIN"));
					applicant.setDateIssued(rs.getString("DateIssued"));
					applicant.setPagIbigNumber(rs.getString("PagIbigNumber"));
					applicant.setPlaceIssued(rs.getString("PlaceIssued"));
					applicant.setQ1(rs.getString("Q1"));
					applicant.setRelName(rs.getString("RelName"));
					applicant.setRelPosition(rs.getString("RelPosition"));
					applicant.setPosition(rs.getString("Position"));
					applicant.setUsername(rs.getString("Username"));
					applicant.setPassword(rs.getString("Password"));
					applicant.setStatus(rs.getString("Status"));
					applicant.setSchedule(rs.getString("Schedule"));
		        }
			} catch (SQLException sqle) {
				System.out.println("SQLException - retrieveMember: " 
						+ sqle.getMessage());
				return applicant; 
			}	
			return applicant;
		}
		
		/*ADMIN SIDE*/
		public static int update(Connection connection, String toUpdate, String user,  String updated) {
			int update = 0;
			
			try {
				connection.setAutoCommit(false);
				
				PreparedStatement ps = null;
				
				if (toUpdate.equals("username")) ps = connection.prepareStatement(updateUsername);
				else if (toUpdate.equals("password")) ps = connection.prepareStatement(updatePassword);
				
				ps.setString(1, updated);
				ps.setString(2, user);
				update = ps.executeUpdate();
				connection.commit();
			} catch (SQLException sqle) {
				System.out.println("SQLException - update: " + sqle.getMessage());
			}
			
			return update;
		}
		
		public static int update(Connection connection, String toUpdate, String user,
				String name, String position, int age, String contact) {
			int update = 0;
			
			try {
				connection.setAutoCommit(false);
				
				PreparedStatement ps = connection.prepareStatement(updateDetails);
				ps.setString(1, name);
				ps.setString(2, position);
				ps.setInt(3, age);
				ps.setString(4, contact);
				ps.setString(5, user);
				
				update = ps.executeUpdate();
				connection.commit();
			} catch (SQLException sqle) {
				System.out.println("SQLException - updateUsername: " + sqle.getMessage());
			}
			
			return update;
		}
		
		public static AdminBean updateUserBean(Connection connection, String username, boolean isAdmin) {
			AdminBean ub = null;
			
			try {
				PreparedStatement ps = null;
				ResultSet rs = null;
				
				ps = connection.prepareStatement((isAdmin ? getAdminUser : getUser));
				ps.setString(1, username);
				
				rs = ps.executeQuery();
				
				ub = BeanFactory.setValues(rs, isAdmin);
			} catch (SQLException sqle) {
				System.out.println("SQLException - updateUserBean: " + sqle.getMessage());
			}
			
			return ub;
		}
		
		public static boolean isValidUser(Connection connection, String username, String password) {
			boolean isValid = false;
			
			try {
				PreparedStatement ps = connection.prepareStatement(confirmUser);
				ps.setString(1, username);
				ps.setString(2, password);
				
				ResultSet rs = ps.executeQuery();
				
				if (rs.next()) isValid = true;
			} catch (SQLException sqle) {
				System.out.println("SQLException - isValidUser: " + sqle.getMessage());
			} catch (NullPointerException npe) {
				System.out.println("NullPointException - isValidUser: " + npe.getMessage());
			}
			
			return isValid;
		}
		
		public static ResultSet getComments(Connection connection) {
			ResultSet rs = null;
			
			try {
				Statement s = connection.createStatement();
				rs = s.executeQuery(getComments);
			} catch (SQLException sqle) {
				System.out.println("SQLException - getComments: " + sqle.getMessage());
			}
			
			return rs;
		}
		
		public static int deactivateAccount(Connection connection, String username) {
			int updated = 0;
			
			try {
				PreparedStatement ps = connection.prepareStatement(deleteUser);
				ps.setString(1, username);
				
				updated = ps.executeUpdate();
			} catch (SQLException sqle) {
				System.out.println("SQLException - deactivateAccount: " + sqle.getMessage());
			}
			
			return updated;
		}
}
