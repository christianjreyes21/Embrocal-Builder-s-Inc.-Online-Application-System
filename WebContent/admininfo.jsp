<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
		
		<jsp:useBean id="ub" type="com.embrocal.model.AdminBean" scope="application"/>
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
							<td><a href="adminprofile.html"><div class="g"><img src="glyphicons/glyphicons-user.png" width="20px" style="margin-top:-5px"> &nbsp;Admin info</div></a></td>
							<td></td>
							<td><a href="adminapplicantsinfo.html"><div class="h"><img src="glyphicons/glyphicons-paperstack.png" width="20px" style="margin-top:-5px"> &nbsp;Applicants Information</div></a></td>
							<td><a href="admininterviewsched.html"><div class="h"><img src="glyphicons/glyphicons-calendar.png" width="20px" style="margin-top:-5px"> &nbsp;Interview Scheduling</div></a></td>
							<td><a href="adminstatusupdate.html"><div class="h"><img src="glyphicons/glyphicons-circle-info.png" width="20px" style="margin-top:-5px"> &nbsp;Status Update</div></a></td>
							<td><a href="adminsummary.html"><div class="h"><img src="glyphicons/glyphicons-notes.png" width="20px" style="margin-top:-5px"> &nbsp;Summary</div></a></td>
							
							<td width="20%"></td>
							
							<td><a href="adminsettings.html"><div class="h"><img src="glyphicons/glyphicons-cogwheel2.png" width="20px" style="margin-top:-5px"> &nbsp;Settings</div></a></td>
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
									<font class="v">Welcome to your Administrator Account - Personal Details!
										<br/><br/>As you can see, there are many fields to be answered and here are some important guidelines on this page to help you:
										<br/>
										<ul>
											<li>On this page, you can see your main and most important admin details.
											<li>Also, you can see here your image & the other tabs to be viewed later on.
											<li><b>SETTINGS button </b>- If you click this, you will be directed to the page where you can change your username, password, admin details and deactivate account.
											<li><b>VIEW COMMENTS/SUGGESTIONS button </b>- If you click this, you will be directed to the page where you can see the submitted comments and suggestions of the applicants regarding the system being used.
											<li><b>LOG OUT button </b>- If you click this, it means that you want to go back to homepage and end your session for a mean time.
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
			
			<div class="container d" style="width: 70%;">
				<div class="row">
					<div class="col-lg-12">
						<table width="70%">
							<TD><img src="images/icon.png" width="220"></TD>
							<TD>
								<table width="100%">
									<tr>
									<td width="40%" class="e">Name</td>
									<td class="k">${ub.name}</td>
									</tr>
									<tr>
									<td width="40%" class="e">Age</td>
									<td class="k">${ub.age}</td>
									</tr>
									<tr>
									<td width="40%" class="e">Position</td>
									<td class="k">${ub.position}</td>
									</tr>
									<tr>
									<td width="40%" class="e">Contact no.</td>
									<td class="k">${ub.contact}</td>
									</tr>
								</TABLE>

							</TD>
						</TABLE> 
					</div>
				</div>
				<div class="col-lg-3"></div>
				<div class="col-lg-2"></div>
				<div class="col-lg-7">
					<p align="right">
						<a href="adminsettings.html">
							<div class="button2"><font color="white"><img src="glyphicons/glyphicons-cogwheel.png" width="20px"> Settings</font></div>
						</a>
						<a href="comments.jsp">
							<div class="button2"><font color="white"><img src="glyphicons/glyphicons-comments2.png" width="20px"> View comments/suggestions</font></div>
						</a>
					</p>
				</div>
			<br/>
			<br/>
			<br/>
			
			</div>

		</div>
	</body>
</html>