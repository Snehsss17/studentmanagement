<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp - Admin</title>
<style>
body {
	background: linear-gradient(to right, #FFDAB9, #FFA07A);
	font-family: Arial, sans-serif;
	font-size: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 100vh;
	margin : 0;
}

h1 {
	text-align: center;
	margin-top: 35px;
	margin-bottom: 35px;
	color: #333;
}

.container {
	border: 2px solid gold;
	height: 520px;
	width: 680px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 15px;
	box-shadow: 2px 2px 20px rgba(218,165,32,0.7);
	background-color: #FFE4B5;
	padding: 20px;
}

table {
	border-spacing: 20px;
	align-items: center;
	margin: 0 auto;
	padding-top: 10px;
}

.ipfields {
	height: 35px;
	width: 220px;
	font-size: 16px;
	font-style: italic;
	font-family: Arial, sans-serif;
	border-radius: 10px;
	border: 1px solid gray;
	padding-left: 10px;
}

#submit {
	height: 50px;
	width: 120px;
	font-size: 18px;
	border-radius: 18px;
	border: 2px solid orange;
	background-color: orange;
	color: white;
	cursor: pointer;
	transition: 0.3s;
}

#submit:hover {
	border: 2px solid darkorange;
	background-color: darkorange;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px darkorange;
}

td {
	text-align: center;
	vertical-align: middle;
	padding: 2px;
}

#error {
	color: red;
	font-size: 18px;
	text-align: center;
}
#errormsg{

}


</style>
</head>
<body>

	<form action = "adminsignup" method = "post" onsubmit="return validatepass(event)">
	<h1>Admin SignUp</h1>
	
	<% String message = (String) request.getAttribute("message"); %>
<% if (message != null) { %>
    <p style="color:red; text-align:center; font-weight:bold;"><%= message %></p>
<% } %>

	<div class = "container">
		<table>
			<tr>
				<td colspan="2" align="center"><p id ="errormsg"></p></td>		
			</tr>
			<tr>
				<td>Id : </td>
				<td><input type ="number" name ="id" class="ipfields" id="ipfield1" placeholder = "Enter Id here" required></td>
			</tr>
			<tr>
				<td>Name : </td>
				<td><input type ="text" name ="name" class="ipfields" id="ipfield2" placeholder = "Enter Name here" required></td>
			</tr>
			<tr>
				<td>Contact : </td>
				<td><input type ="tel" name ="contact" class="ipfields" id="ipfield3" placeholder = "Enter Contact here" required></td>
			</tr>
			<tr>
				<td>Email : </td>
				<td><input type ="text" name ="email" class="ipfields" id="ipfield4" placeholder = "Enter Email here" required></td>
			</tr>
			<tr>
				<td>Password : </td>
				<td><input type ="password" name ="password" id = "password" class="ipfields" placeholder = "Enter Password here" required></td>
			</tr>
			<tr>
				<td>Re-Enter Password : </td>
				<td><input type ="password" name ="repassword"  id = "repassword" class="ipfields" placeholder = "Re-Enter Password here" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><button type="submit" id ="submit">Submit</button></td>		
			</tr>	
			
			
				
		</table>
		</div>
	</form>
	
	<script>
		function validatepass(event) {
			var password = document.getElementById("password").value;
			var repassword = document.getElementById("repassword").value;
			var errormsg = document.getElementById("errormsg");

			if (password !== repassword) {
				errormsg.textContent = "Passwords do not match!";
				errormsg.style.visibility = "visible";
				  errormsg.style.color = "red";
				event.preventDefault(); 
				return false;
			}
			else {
				errormsg.style.visibility = "hidden";
				return true;
			}
		}
		document.addEventListener("DOMContentLoaded", function () {
		    var errormsg = document.getElementById("errormsg");

		    function validatefield(field, message, regex = null) {
		        field.addEventListener("focusout", function () {
		            let value = field.value.trim();
		            if (value === "") {
		                errormsg.textContent = message;
		                errormsg.style.visibility = "visible";
		                errormsg.style.color = "red";
		            } else if (regex && !regex.test(value)) {
		                errormsg.textContent = "Invalid input format!";
		                errormsg.style.visibility = "visible";
		                errormsg.style.color = "red";
		            } else {
		                errormsg.style.visibility = "hidden";
		            }
		        });
		    }


		    validatefield(document.getElementById("ipfield1"), "Please enter the Id!");
		    validatefield(document.getElementById("ipfield2"), "Please enter the Name!");
		    validatefield(document.getElementById("ipfield3"), "Please enter the Contact!", /^\d{10}$/);
		    validatefield(document.getElementById("ipfield4"), "Please enter a valid Email!", /^[^\s@]+@[^\s@]+\.[^\s@]+$/);
		    validatefield(document.getElementById("password"), "Please enter the Password!");
		    validatefield(document.getElementById("repassword"), "Please Re-Enter the Password!");
		});

	</script>

	

</body>
</html>