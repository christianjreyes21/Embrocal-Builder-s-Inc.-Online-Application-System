<jsp:useBean id="applicant" type="java.sql.ResultSet" scope="request"/>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Embrocal Builders</title>

		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/main.css" rel="stylesheet">
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
			
		<style>
			@font-face{
				font-family: Bebas Neue Regular;
				src: url("fonts/BebasNeue.otf") format("opentype");
			}
			
		</style>
		
		
		<script>
			function hideModal(){
				$("#deleteModal").modal("hide");
			};
		</script>
		
	</head>
  
	<body>
		<div class="main">
		
			<div class="container-fluid a">
				<img src="images/logo.png" width="250px">
			</div>
			
			<div class="container-fluid b">
				<div class="container" style="width:90%">
					<table width="100%" style="margin-bottom:-5px;">
						<tr>
							<td><a href="adminprofile.html"><div class="h"><img src="glyphicons/glyphicons-user.png" width="20px" style="margin-top:-5px"> &nbsp;Admin info</div></a></td>
							<td><a href="adminapplicantsinfo.html"><div class="g"><img src="glyphicons/glyphicons-paperstack.png" width="20px" style="margin-top:-5px"> &nbsp;Applicants Information</div></a></td>
							<td></td>
							<td><a href="admininterviewsched.html"><div class="h"><img src="glyphicons/glyphicons-calendar.png" width="20px" style="margin-top:-5px"> &nbsp;Interview Scheduling</div></a></td>
							<td><a href="adminstatusupdate.html"><div class="h"><img src="glyphicons/glyphicons-circle-info.png" width="20px" style="margin-top:-5px"> &nbsp;Status Update</div></a></td>
							<td><a href="adminsummary.html"><div class="h"><img src="glyphicons/glyphicons-notes.png" width="20px" style="margin-top:-5px"> &nbsp;Summary</div></a></td>
							
							<td width="20%"></td>
							
							<td><a href="adminsettings.html"><div class="h"><img src="glyphicons/glyphicons-cogwheel2.png" width="20px" style="margin-top:-5px">&nbsp;Settings</div></a></td>
							<td><a href="index.html"><div class="g"><img src="glyphicons/glyphicons-log-out.png" width="20px" style="margin-top:-5px">&nbsp;Log out</div></a></td>
						</tr>
					</table>
				</div>
			</div>
			
			<div class="container c" style="width: 88%;">
				<p align="right"><div><a data-toggle="modal" href="#myModal"><h4>Help &nbsp;<img src="images/help.png" width="30px"></h4></a></div></p>
				
			
				
				<div class="modal fade" id="myModal" role="dialog">
					
					<div class="modal-dialog">

					  <!-- Modal content-->
						<div class="modal-content">
					  
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" style="color:green;">&times;</button>
									<center style="padding-top:40px"><font class="u">NEED HELP WITH THE SYSTEM?</font>
									<br/>
									<font class="t">Here are some instructions to follow in using the system:</font></center>
								</div>
								
								<div class="modal-body" style="padding:40px; background-color:#f0f0f0;">
									<font class="v">Welcome to your Administrator Account - Applicants' Information!
										<br/><br/>As you can see, there are many fields to be answered and here are some important guidelines on this page to help you:
										<br/>
										<ul>
											<li>On this page, you can see the names of the applicants, sorted categories, search bar for the names of the applicants, and two buttons.
											<li>Also, you can see here the other tabs to be viewed later on.
											<li><b>DELETE RECORD button</b> - If you click this, the record of an applicant will be removed.
											<li><b>VIEW APPLICANT DETAILS button</b> - If you click this, you will be directed to a page where you can see the submitted complete resume of the applicants.
											<li><b>SEARCH bar with GO button</b> - If you click this, it will let you search the names of the applicants.
											<li><b>SORT BY field with GO button</b> - If you click this and choose a specific category, the applicants will be sorted according to that category from highest to lowest priorities.

										</ul>
									<br/>
									<p align="right">Thank you!</p></font>

								</div>
								
								<div class="modal-footer">
								  
								</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="container d" style="width: 85%;">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
						<table style="float:left">
							<tr>
								<td><font class="i">Sort by </font>
								<form action="">
								<td>
									<select>
										<option>Years of experience</option>
										<option>Age</option>
										<option>Position</option>
									</select>
								</td>
								<td><input type="submit" value="go" style="padding:3px 5px 3px 5px; border-radius:0px;"></td>
								</form>
							</tr>
						</table>
						
						<table style="float:right">
							<tr>
								<form action="">
								<td>
									<input type="text" value="Search" onblur="if (this.value == '') {this.value = 'Search';}" onfocus="if (this.value == 'Search') {this.value = '';}">
								</td>
								<td><a href=""><div class="button2" style="border-radius:0px"><img src="glyphicons/glyphicons-search.png" width="20px"></div></a></td>
								</form>
							</tr>
						</table>
						</div>
						
						<br/>
						<br/>
						<br/>
						<br/>
						
						<div class="row">
						<table width="100%">
							<tr>
								<th width="10%"></th>
								<th width="35%" style="text-align:left">Name</th>
								<th width="20%">Years of experience</th>
								<th></th>
								<th></th>
							</tr>
							<% 
								while(applicant.next()) {	
							%>
							<tr>
								<td class="l"><%=applicant.getString("iD")%></td>
								<td class="m"><%=applicant.getString("lastName")%>, <%=applicant.getString("firstName")%></td>
								<td class="l"><%=applicant.getString("empTotalExp")%></td>
								<td><a href=""><div class="button2" style="padding:5px; text-transform:none;"> <font color="white"><img src="glyphicons/glyphicons-file.png" width="15px" style="margin-top:-5px"> View applicant details</font></div></a></td>
								<td><a href="applicantdelete.html?id=<%=applicant.getString("iD")%>"><div class="button2" style="padding:5px; text-transform:none;"><font color="white"> <img src="glyphicons/glyphicons-bin.png" width="15px" style="margin-top:-5px"> Delete record</font></div></a></td>
							</tr>
							<%} %>
						</table>
						</div>
					</div>
				</div>
				
				<div class="modal fade" id="deleteModal" role="dialog">
					
								<div class="modal-dialog">

								  <!-- Modal content-->
									<div class="modal-content">
								  
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" style="color:green;">&times;</button>
												<center style="margin-top:40px;"><font class="u">Are you sure you want to delete this record?</font>
												<br/><br/>
													<p align="center"><button class="button2" style="width:100px" onclick="hideModal()">YES</button> <button class="button2" style="width:100px" onclick="hideModal()">NO</button></p>
												<br/><br/>
											</div>
									</div>
								</div>
							</div>
				
			<br/>
			<br/>
			<br/>
			
			</div>

		</div>
	</body>
</html>