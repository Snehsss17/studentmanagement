<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
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
	padding-bottom: 30px;
	color: #333;
}

.container {
	border: 2px solid gold;
	width: 480px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	box-sizing: border-box;
	position: relative;
	border-radius: 15px;
	box-shadow: 2px 2px 20px rgba(218,165,32,0.7);
	background-color: #FFE4B5;
	padding: 20px;
}

table {
	border-spacing: 15px; 
	margin: 0 auto;
}

td {
	text-align: center;
	vertical-align: middle;
	padding: 4px;
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
	width: 100%;
	font-size: 18px;
	border-radius: 18px;
	border: 2px solid orange;
	background-color: orange;
	color: black;
	margin-top: 10px;
	cursor: pointer;
	transition: 0.3s;
}

#submit:hover {
	border: 2px solid red;
	background-color: red;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px red;
}

.suphere {
	padding-top: 15px;
	text-align: center;
	width: 100%;
}

#sup {
	text-decoration: none;
	padding: 10px;
	border-radius: 18px;
	border: 2px solid green;
	background-color: green;
	color: white;
	transition: 0.3s;
}

#sup:hover {
	border: 2px solid darkgreen;
	background-color: darkgreen;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px darkgreen;
}

#error {
	min-height: 20px;
	visibility: hidden;
	color: red;
	font-size: 20px;
	text-align: center;
	width: 100%;
}

.message {
	font-size: 18px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 10px;
}

.error {
	color: red;
}

.success {
	color: green;
}
</style>
</head>
<body>

	
		<h1>Admin Login</h1>
		<div id = "message" class = "message">
		<%
		String message = (String) request.getAttribute("message");
		%>
		<%
		if (message != null) {
		%>
		<%=message%>
		<%
		}
		%>
	</div>


	<div class=container>
		<form action="adminlogin" method="post">
			<table>

				<tr>
					<td colspan="2" align="center"><p id="error"></p></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><input type="text" name="email" class="ipfields"
						placeholder="Enter Email here" id="ipfield1" required></td>
				</tr>

				<tr>
					<td>Password :</td>
					<td><input type="password" name="password" class="ipfields"
						placeholder="Enter Password here" id="ipfield2" required></td>
				</tr>
				<tr>

					<td colspan = "2" align="center"><input type="submit"
						id="submit"></td>
				</tr>

			</table>

			<div class="suphere">
				Not a user? <a href="adminsignup.jsp" id="sup"> SignUp Here!</a> <br>
				<br>
			</div>
		</form>

	</div>

	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function() {
			var field = document.getElementById("ipfield1");
			var para = document.getElementById("error");

			field.addEventListener("focusout", function checkip() {
				let field1 = field.value.trim();
				if (field1 === "") {
					para.textContent = "Please enter the Email !";
					para.style.visibility = "visible";
					para.style.color = "red";
				}
				if (field1 !== "") {
					para.style.visibility = "hidden";
				}
			});
		});

		document.addEventListener("DOMContentLoaded", function() {
			var field22 = document.getElementById("ipfield2");
			var para = document.getElementById("error");

			field22.addEventListener("focusout", function checkip() {
				let field2 = field22.value.trim();
				if (field2 === "") {
					para.textContent = "Please enter the Password !";
					para.style.visibility = "visible";
					para.style.color = "red";
				}
				if (field2 !== "") {
					para.style.visibility = "hidden";
				}
			});
		});
		
			
	</script>

</body>
</html>