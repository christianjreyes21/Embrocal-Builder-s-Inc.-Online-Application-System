
<jsp:useBean id="forReview" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="hired" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="notHired" type="java.sql.ResultSet" scope="request"/>
<jsp:useBean id="forFurtherReview" type="java.sql.ResultSet" scope="request"/>
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
							<td><a href="adminapplicantsinfo.html"><div class="h"><img src="glyphicons/glyphicons-paperstack.png" width="20px" style="margin-top:-5px"> &nbsp;Applicants Information</div></a></td>
							<td><a href="admininterviewsched.html"><div class="h"><img src="glyphicons/glyphicons-calendar.png" width="20px" style="margin-top:-5px"> &nbsp;Interview Scheduling</div></a></td>
							<td><a href="adminstatusupdate.html"><div class="g"><img src="glyphicons/glyphicons-circle-info.png" width="20px" style="margin-top:-5px"> &nbsp;Status Update</div></a></td>
							<td></td>
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
									<font class="v">Welcome to your Administrator Account -  Status Update!
										<br/><br/>As you can see, there are many fields to be answered and here are some important guidelines on this page to help you:
										<br/>
										<ul>
											<li>On this page, you can set/update the application status of an applicant.
											<li>Also, you can see here the other tabs to be viewed later on.
											<li><b>SEARCH bar with GO button</b> - If you click this, it will let you search the names of the applicants.
											<li>Below, you can see the summary of those who are hired, not hired and for further evaluation.
											<li><b>HIRED button </b>- when pressed, it means that the applicant is accepted.
											<li><b>NOT HIRED button </b>- when pressed, it means that the applicant is not accepted.
											<li><b>FOR FURTHER EVALUATION button </b>- when pressed, it means that the applicant is accepted but for reserve only like a wait-listed and can get the job if someone backs out for example.
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
						
						
						<table style="float:right">
							<tr>
								<form action="">
								<td>
									<input type="text" style="width:400px; font-size:20px;" value="Search name of interviewed applicant" onblur="if (this.value == '') {this.value = 'Search name of interviewed applicant';}" onfocus="if (this.value == 'Search name of interviewed applicant') {this.value = '';}">
								</td>
								<td><a href=""><div class="button2" style="border-radius:0px"><img src="glyphicons/glyphicons-search.png" width="20px"></div></a></td>
								</form>
							</tr>
						</table>
						</div>
						
						<br/>
						<br/>
						<br/>
						
						<div class="row">
						<table align="center">
							
							<% 
								while(forReview.next()) {	
							%>
							<tr>
								<td><a href="update.html?id=<%=forReview.getString("iD")%>&status=Hired"><div class="button2" style="padding:5px; margin-left:6px; text-transform:none;"><font color="white"><img src="glyphicons/glyphicons-hired.png" width="20px" style="margin-top:-5px">&nbsp;Hired</font></div></a><a href="update.html?id=<%=forReview.getString("iD")%>&status=Not%20Hired"><div class="button2" style="padding:5px; margin-left:6px; text-transform:none;"><font color="white"><img src="glyphicons/glyphicons-nothired.png" width="20px" style="margin-top:-5px">&nbsp;Not Hired</font></div></a><a href="update.html?id=<%=forReview.getString("iD")%>&status=For%20Further%20Evaluation"><div class="button2" style="padding:5px; margin-left:6px; text-transform:none;"><font color="white">For further evaluation</font></div></a></td>
								<td class="l"><%=forReview.getString("iD")%></td>
								<td class="m"><%=forReview.getString("lastName")%>, <%=forReview.getString("firstName")%></td>
								
							</tr>
							
							
							<% } %>
						</table>
						<br/>
						<hr/>
						<br/>
						<table align="center" width="70%">
							<tr>
								<td class="k" width="33%">HIRED</td>
								<td class="k" width="33%">NOT HIRED</td>
								<td class="k" width="33%">FOR FURTHER EVALUATION</td>
							</tr>
							
							
							<tr>
								<td class="m">
									<ol>
											<% while(hired.next()) {	%>
											<li>
											<%=hired.getString("lastName")%>, <%=hired.getString("firstName")%>
											</li>
											<% } %>
									</ol>
								</td>
								
								<td class="m">
									<ol>	
											<% while(notHired.next()) {	%>
											<li>
											<%=notHired.getString("lastName")%>, <%=notHired.getString("firstName")%>
											</li>
											<% } %>
									</ol>
								</td>
								
								<td class="m">
									<ol>	
											<% while(forFurtherReview.next()) {	%>
											<li>
											<%=forFurtherReview.getString("lastName")%>, <%=forFurtherReview.getString("firstName")%>
											</li>
											<% } %>
									</ol>
								</td>
							</tr>
							
							
						</table>
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