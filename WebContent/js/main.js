function validateLogin() {

	var unBox = document.querySelector("#un");
	var pwBox = document.querySelector("#pw");
	var a = document.getElementById("notice").value;
	var b = document.getElementById("un").value;
	var c = document.getElementById("pw").value;
			
	var count = 0;
				
	// U S E R N A M E
	if (b==null || b== "") {
		unBox.style.backgroundColor = "#B40431";
		unBox.style.color = "white";
		unBox.style.border = "1px solid black";
		document.getElementById("notice").value = "Enter username.";
		return false;
	}
			
			
	// P A S S W O R D 
	if (c==null || c== "") {
		unBox.style.backgroundColor = "#F7F6F6";
		unBox.style.color = "grey";
		unBox.style.border = "none";
		pwBox.style.backgroundColor = "#B40431";
		pwBox.style.color = "white";
		pwBox.style.border = "1px solid black";
		document.getElementById("notice").value = "Enter password.";
		return false;
	}
				
	alert("Success");
	return true;
		
}

		