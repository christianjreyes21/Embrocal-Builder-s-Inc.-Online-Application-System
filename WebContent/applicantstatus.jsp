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
							<td><a href="profile.html"><div class="h"><img src="glyphicons/glyphicons-user.png" width="20px" style="margin-top:-5px"> &nbsp;Personal info</div></a></td>
							<td><a href="applicantinterview.html"><div class="h"><img src="glyphicons/glyphicons-calendar.png" width="20px" style="margin-top:-5px"> &nbsp;Interview Schedule</div></a></td>
							<td><a href="applicantstatus.html"><div class="g"><img src="glyphicons/glyphicons-circle-info.png" width="20px" style="margin-top:-5px"> &nbsp;Status</div></a></td>
							<td></td>
							<td><a href="applicantcomments.html"><div class="h"><img src="glyphicons/glyphicons-comments.png" width="20px" style="margin-top:-5px"> &nbsp; Comments & Suggestions</div></a></td>
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
									<font class="v">Welcome to your Personal Account - Status of Application!
										<br/><br/>As you can see, there are many fields to be answered and here are some important guidelines on this page to help you:
										<br/>
										<ul>
											<li>On this page, you can see your desired position or job and the status for it.
											<li>The status here as default is "For Interview" since every applicant is entitled to have an interview with the company first after submitting on-line resumes. This status is subjected to change from time to time.
											<li>Also, you can see here the other tabs to be viewed.

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
			
			<div class="container d" style="width: 50%;">
				<br/>
				<br/>
				<br/>
				<table width="100%">
					<tr>
						<td width="40%"><h6>Position desired:</h6></td>
						<td class="j">${applicant.position}</td>
					</tr>
					<tr>
						<td width="40%"><h6>Status:</h6></td>
						<td class="j">${applicant.status}</td>
					</tr>
				</table>
			
			
			<br/>
			<br/>
			<br/>
			
			</div>

		</div>
	</body>
</html>