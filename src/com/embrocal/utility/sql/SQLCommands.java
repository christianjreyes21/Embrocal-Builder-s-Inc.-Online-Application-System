package com.embrocal.utility.sql;

public interface SQLCommands {

	/*Client Side*/
	String INSERT_APPLICANT_ENTRY = "insert into Applicant([LastName],[FirstName],[MiddleName],[CityAddress],[ProvincialAddress],[ContactNumber],[DateOfBirth],[PlaceOfBirth],[CivilStatus],[Citizenship],[Height],[Weight],[Religion],[Sex],[Spouse],[SpouseOccupation],[Address],[Language],[FatherName],[FatherOccupation],[MotherName],[MotherOccupation],[ParentAddress],[EmgPerson],[EmgRelation],[EmgAddress],[EmgContactNumber],[ElemSchool],[ElemYear],[HighSchool],[HighYear],[College] ,[CollegeYear],[Course],[VocationalCourse],[VocationalYear],[EmpFrom],[EmpTo],[EmpPosition] ,[EmpCompany] ,[EmpTotalExp],[RefName],[RefOccupation],[RefAddress],[SSSNumber],[LatestResCert],[TIN],[DateIssued],[PagIbigNumber],[PlaceIssued],[Q1],[RelName],[RelPosition],[Position],[Username],[Password],[Status],[Schedule]) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String GET_ALL_APPLICANT_ENTRY = "select * from Applicant";
	String GET_ALL_APPLICANT_ENTRY_SCHEDULE = "select * from Applicant where Schedule = ?";
	String GET_ALL_APPLICANT_ENTRY_STATUS = "select * from Applicant where Status = ?";
	
	String UPDATE_APPLICANT_STATUS = "update Applicant set Status = ? where ID = ?";
	String UPDATE_APPLICANT_SCHEDULE = "update Applicant set Schedule = ? where ID = ?";
	String UPDATE_APPLICANT_PASSWORD = "update Applicant set Password = ? where Username = ?";
	String RETRIEVE_APPLICANT_MEMBER = "select * from Applicant where Username=?";
	String DELETE_APPLICANT_ENTRY = "delete from Applicant where ID = ?";
	
	/*Admin Side*/
	String updateUsername = "update accounts set username = ? where username = ?";
	String updatePassword = "update accounts set password = ? where username = ?";
	String updateDetails = "update adminDetails set name = ?, position = ?, age = ?, contact = ? where username = ?";
	String getUsername = "select username from accounts where username = ?";
	String getPassword = "select password from accounts where password = ?";
	String getUser = "select * from accounts where username = ?";
	String getAdminUser = "select a.*, ad.name, ad.position, ad.age, ad.contact from accounts a "
			+ "INNER JOIN adminDetails ad on a.username = ad.username where a.username = ?";
	String getComments = "select * from comments";
	String confirmUser = "select * from accounts where username = ? and password = ?";
	String deleteUser = "delete from accounts where username = ?";	
}
