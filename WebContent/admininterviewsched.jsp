<jsp:useBean id="schedule" type="java.sql.ResultSet" scope="request"/>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Embrocal Builders</title>

		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/main.css" rel="stylesheet">
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		<style>
			@font-face{
				font-family: Bebas Neue Regular;
				src: url("fonts/BebasNeue.otf") format("opentype");
			}
			
			.ui-datepicker th {
				text-transform: normal;
				font-size: 20px;
				padding: 5px 0;
				font-family: 'trebuchet ms';
				font-weight: normal;
				color:white;
			}
			
			.ui-datepicker-prev {
				display: inline-block;
				background-size: 20px;
				text-align: center;
				cursor: pointer;
				background-image: url('images/leftarrow.png');
				background-repeat: no-repeat;
				background-position:center;
				line-height: 600%;
				overflow: hidden;
				margin-top:3px;
			}
			
			.ui-datepicker-header {
				border: 0px;
				width:102%;
				margin-left:-1%;
				margin-top:-1%;
				background-color: #f0f0f0;
				font-weight: normal;
				font-family: Bebas Neue Regular;
				font-size: 30px;
			}
			
			.ui-datepicker-next {
				display: inline-block;
				background-position:center;
				background-size: 20px;
				text-align: center;
				cursor: pointer;
				background-image: url('images/rightarrow.png');
				background-repeat: no-repeat;
				line-height: 600%;
				overflow: hidden;
				margin-top:3px;
			}
			
			.ui-datepicker tbody td {
				padding: 0;
				border-right: 1px solid #bbb;
				color:white;
			}
			
			.ui-datepicker tbody td:last-child {
				color:white;
			}

			.ui-datepicker tbody tr {
				color:white;
			}
			.ui-datepicker tbody tr:last-child {
				color:white;
			}


			.ui-datepicker-next:hover{
				display: inline-block;
				background-position:center;
				background-size: 20px;
				text-align: center;
				cursor: pointer;
				background-image: url('images/rightarrow.png');
				background-repeat: no-repeat;
				line-height: 600%;
				overflow: hidden;
				border: 2px;
				background-color:none;
			}
			
			.ui-datepicker-prev:hover{
				display: inline-block;
				background-position:center;
				background-size: 20px;
				text-align: center;
				cursor: pointer;
				background-image: url('images/leftarrow.png');
				background-repeat: no-repeat;
				line-height: 600%;
				overflow: hidden;
				border: 2px;
				background-color:none;
			}
			.ui-datepicker {
				border: 0px;
				width: 400px;
				background-color:#026995;
			}
			
			.ui-datepicker tbody td {
				text-align:center;
				border:none;
				padding: 5px;
			}

			.ui-datepicker td span, .ui-datepicker td a {
				display: inline-block;
				font-weight: bold;
				text-align: center;
				width: 30px;
				height: 30px;
				line-height: 30px;
				color: white;
			}
			
			.ui-datepicker-calendar .ui-state-default {
				background-color: transparent;
				color: white;
				font-family: 'trebuchet ms';
				border:none;
			}
			
			.ui-datepicker-unselectable .ui-state-default {
				color: #f0f0f0;
			}

			.ui-datepicker-calendar .ui-state-hover {
				background-color: #007cb1;
			}

			.ui-datepicker-calendar .ui-state-active {
				background-color: #007cb1;
				color: #e0e0e0;
			}


		</style>
		
		<script>
			$(function() {
				$("#datepicker").datepicker({
						inline: true,
						dateFormat: 'MM d, yy',
						showOtherMonths: true,
						dayNamesMin: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
				});

				$( "#datepicker1" ).datepicker();
			});
			
			
			$(document).on("change", "#datepicker", function () {
				var currentDate = $( "#datepicker" ).datepicker().val();
				$('#notice').val(currentDate);
				$('#date').val(currentDate);
			});
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
							<td><a href="adminapplicantsinfo.html"><div class="h"><img src="glyphicons/glyphicons-paperstack.png" width="20px" style="margin-top:-5px"> &nbsp;Applicants Information</div></a></td>
							<td><a href="admininterviewsched.html"><div class="g"><img src="glyphicons/glyphicons-calendar.png" width="20px" style="margin-top:-5px"> &nbsp;Interview Scheduling</div></a></td>
							<td></td>
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
									<font class="v">Welcome to your Administrator Account - Interview Scheduling!
										<br/><br/>As you can see, there are many fields to be answered and here are some important guidelines on this page to help you:
										<br/>
										<ul>
											<li>On this page, you can set the interview schedule of an applicant.
											<li>Also, you can see here the other tabs to be viewed later on.
											<li><b>CALENDAR</b> - If you use this, it will set an interview date for the applicant/s. 
											<li><b>SEARCH bar with GO button</b> - If you click this, it will let you search the names of the applicants.
											<li><b>ADD button</b> - this will be seen together with the applicant's name when you search it. If you click this, the applicant will be set on a specific date of your choice and will be put on the bottom part of the page.
											<li><b>TIME dropdown button</b> - this will let you choose an interview time for the applicant.
											<li><b>SAVE button</b> - this will save the chosen date and time of interview of the applicant.

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
			
			<div class="container d" style="width: 70%;" align="center">
				<div class="row">
					<div style="float:left">
						<div id="datepicker"></div>
						<div id="datepicker1" class="hasDatepicker"></div>
						<br/>
						<a href=""><div class="button2" style="border-radius:0px; padding:8px 16px 8px 16px">View list of applicants to interview</div></a>
					</div>

						
					<div  style="float:right">
						<table>
							<tr>
								<form action="">
								<td>
									<input type="text" style="width:400px; font-size:20px;" value="Search name of interviewed applicant" onblur="if (this.value == '') {this.value = 'Search name of interviewed applicant';}" onfocus="if (this.value == 'Search name of interviewed applicant') {this.value = '';}">
								</td>
								<td><a href=""><div class="button2" style="border-radius:0px"><img src="glyphicons/glyphicons-search.png" width="20px"></div></a></td>
								</form>
							</tr>
						</table>
						<br/><br/><br/><br/>
						<p align="left" style="padding: 0px; margin: 0px; margin-left:-20px;"><font class="t">Date:</font> 
						<input type="text" class="notice" id="notice" style="width:50%; color: black; font-size:20px;background-color: white; border:0px;" value="" disabled>
						</p>
						<hr style="padding: 0px; margin: 0px;">
						<br/>
							<table width="105%">
							<% 
								while(schedule.next()) {	
							%>
								<tr>
									<form action="updateschedule.html"/>
									<input type="hidden" name="date" id="date"/>
									<input type="hidden" name="id" value="<%=schedule.getString("iD")%>"/>
									<td><select name="Time" style="font-size:15px; width:100px">
											<option value="9-10 AM">9-10 AM</option>
											<option value="10-11 AM">10-11 AM</option>
											<option value="11-12 NN">11-12 NN</option>
											<option value="1-2 PM">1-2 PM</option>
											<option value="2-3 PM">2-3 PM</option>
											<option value="3-4 PM">3-4 PM</option>
											<option value="4-5 PM">4-5 PM</option>
										</select></td>
									<td width="60%" style="padding:10px; font-family: 'trebuchet ms'"><%=schedule.getString("lastName")%>, <%=schedule.getString("firstName")%></td>
									<td><input type="submit" value="save" class="button2" style="padding: 3px 10px 3px 10px; font-size:15px;"><img src="glyphicons/glyphicons-save.png"  width="15px" style="margin-top:-5px">&nbsp;</a></td>
									</form>
								</tr>
						<% } %>
							</table>
					</div>	
				</div>
						
				
			<br/>
			<br/>
			<br/>
			
			</div>

		</div>
	</body>
</html>