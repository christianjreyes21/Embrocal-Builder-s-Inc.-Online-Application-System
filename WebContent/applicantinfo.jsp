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
							<td><a href="profile.html"><div class="g"><img src="glyphicons/glyphicons-user.png" width="20px" style="margin-top:-5px"> &nbsp;Personal info</div></a></td>
							<td></td>
							<td><a href="applicantinterview.html"><div class="h"><img src="glyphicons/glyphicons-calendar.png" width="20px" style="margin-top:-5px"> &nbsp;Interview Schedule</div></a></td>
							<td><a href="applicantstatus.html"><div class="h"><img src="glyphicons/glyphicons-circle-info.png" width="20px" style="margin-top:-5px"> &nbsp;Status</div></a></td>
							<td><a href="applicantcomments.html"><div class="h"><img src="glyphicons/glyphicons-comments.png" width="20px" style="margin-top:-5px"> &nbsp;Comments & Suggestions</div></a></td>
							<td width="30%"></td>
							<td><a href="applicantsettings.html"><div class="h"><img src="glyphicons/glyphicons-cogwheel2.png" width="20px" style="margin-top:-5px">&nbsp;Settings</div></a></td>
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
									<font class="v">Welcome to your Personal Account - Personal Information!
										<br/><br/>As you can see, there are many fields to be answered and here are some important guidelines on this page to help you:
										<br/>
										<ul>
											<li>On this page, you can see your main and most important personal details.
											<li>Also, you can see here your uploaded image & the other tabs to be viewed.
											<li><b>LOG OUT button</b> - If you click this, it means that you want to go back to homepage and end your session for a mean time.

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
			
			<div class="container d" style="width: 80%;">
			
			<!-- N A M E -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Name</td>
						<td class="j">${applicant.lastName}, ${applicant.firstName} ${applicant.middleName}</td>
					</tr>
				</table>
			
			<!-- C I T Y A D D-->
				<table width="100%">
					<tr>
						<td width="20%" class="e">City address</td>
						<td class="j">${applicant.cityAddress}</td>
					</tr>
				</table>
				
			<!-- P R O V A D D-->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Provincial address</td>
						<td class="j">${applicant.provincialAddress}</td>
					</tr>
				</table>
				
			<!-- C O N T A C T-->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Contact no.</td>
						<td class="j">${applicant.contactNumber}</td>
					</tr>
				</table>
				
			<!-- D O B & P O B -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Date of birth</td>
						<td width="30%" class="j">${applicant.dateOfBirth}</td>
						<td width="20%" class="e">Place of birth</td>
						<td width="30%" class="j">${applicant.placeOfBirth}</td>
					</tr>
				</table>
				
			<!-- C I V & C I T -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Civil Status</td>
						<td width="30%" class="j">${applicant.civilStatus}</td>
						<td width="20%" class="e">Citizenship</td>
						<td width="30%" class="j">${applicant.citizenship}</td>
					</tr>
				</table>

			<!-- H T & W T -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Height</td>
						<td width="30%" class="j">${applicant.height}</td>
						<td width="20%" class="e">Weight</td>
						<td width="30%" class="j">${applicant.weight}kg</td>
					</tr>
				</table>

			<!-- R E L & S E X -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Religion</td>
						<td width="30%" class="j">${applicant.religion}</td>
						<td width="20%" class="e">Sex</td>
						<td width="30%" class="j">${applicant.sex}</td>
					</tr>
				</table>
			
			<!-- S P O U S E -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Name of Spouse</td>
						<td class="j">${applicant.spouse}</td>
					</tr>
					<tr>
						<td width="20%" class="e">His/her occupation</td>
						<td class="j">${applicant.spouseOccupation}</td>
					</tr>
				</table>

			<!-- T H E I R A D D-->
				<table width="100%">
					<tr>
						<td width="20%" class="e">City address</td>
						<td width="15%" class="j">${applicant.address}</td>
						<td width="40%"></td>
						<td width="25%" class="j"></td>
					</tr>
				</table>
				
			<!-- L A N G -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Languages/Dialects</td>
						<td class="j">${applicant.language}</td>
					</tr>
				</table>	

			<br/>
			<br/>
			<br/>
			
			<!-- MOM AND FATHER -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Father's name</td>
						<td width="30%" class="j">${applicant.fatherName}</td>
						<td width="20%" class="e">Occupation</td>
						<td width="30%" class="j">${applicant.fatherOccupation}</td>
					</tr>
					<tr>
						<td width="20%" class="e">Mother's name</td>
						<td width="30%" class="j">${applicant.motherName}</td>
						<td width="20%" class="e">Occupation</td>
						<td width="30%" class="j">${applicant.motherOccupation}</td>
					</tr>
				</table>
				<table width="100%">
					<tr>
						<td width="20%" class="e">Their address</td>
						<td width="15%" class="j">${applicant.parentAddress}</td>
						<td width="40%"></td>
						<td width="25%"></td>
					</tr>
				</table>
			
			<br/>
			<br/>
			<br/>
			
			<!-- E M E R G E N C Y -->
				<table width="100%">
					<tr>
						<td width="20%"></td>
						<td class="f">In case of emergency</td>
					</tr>
				</table>
			
			<!-- L A N G -->
				<table width="100%">
					<tr>
						<td width="20%" class="e">Person to notify</td>
						<td class="j">${applicant.emgPerson}</td>
					</tr>
					<tr>
						<td width="20%" class="e">Relation</td>
						<td class="j">${applicant.emgRelation}</td>
					</tr>
				</table>
				<table width="100%">
					<tr>
						<td width="20%" class="e">His/her address</td>
						<td width="80%" class="j">${applicant.emgAddress}</td>
					</tr>
				</table>
				<table width="100%">
					<tr>
						<td width="20%" class="e">Contact no.</td>
						<td class="j">${applicant.emgContactNumber}</td>
					</tr>
				</table>
			
			<br/>
			<br/>
			<br/>
			
			</div>

		</div>
	</body>
</html>