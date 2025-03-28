<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
body {
	background-color: #FFEFD5;
	font-size: 20px;
}

h1 {
	margin-left: 43%;
	margin-top: 35px;
	margin-bottom: 35px;
}

.container {
	border: 1px solid black;
	height: 350px;
	width: 650px;
	display: flex;
	padding-top: 60px;
	margin-top: 6px;
	margin-left: 440px;
}

table {
	border-spacing: 25px;
	align-items: center;
	margin-left: 145px;
}

td {
	text-align: center;
	vertical-align: middle;
	padding: 4px;
}

.ipfields {
	height: 30px;
	width: 205px;
	font-size: 16px;
	font-style: italic;
	font-family: Arial, sans-serif;
}

#submit {
	height: 50px;
	width: 100px;
	font-size: 18px;
	border-radius: 18px;
	border-style: solid;
	border: 2px solid orange;
	background-color: orange;
	color: black;
}

#submit:hover {
	border: 2px solid red;
	background-color: red;
	color: white;
}

.suphere {
	padding-left: 180px;
}

#sup:hover {
	border: 2px solid darkgreen;
	background-color: darkgreen;
	color: white;
}

#sup {
	text-decoration: none;
	border: 1px solid black;
	padding: 12px;
	border-radius: 18px;
	border: 2px solid green;
	background-color: green;
	color: white;
}
</style>
</head>
<body>
	<h1>Admin Login</h1>
	<div class=container>
		<form action="adminlogin" method="post">
			<table>
				<tr>
					<td>Email :</td>
					<td><input type="text" name="email" class="ipfields"
						placeholder="Enter Email here" required></td>
				</tr>

				<tr>
					<td>Password :</td>
					<td><input type="password" name= "password" class="ipfields"
						placeholder="Enter Password here" required></td>
				</tr>
				<tr>

					<td colspan="2" align="center"><input type="submit"
						id="submit"></td>
				</tr>
			</table>
			<br>

			<div class="suphere">
				Not a user? <a href="adminsignup.jsp" id="sup"> SignUp Here!</a>
			</div>
		</form>
		<%
		String message = (String) request.getAttribute("message");
		%>
		<%
		if (message != null) {
		%>
		<script type="text/javascript">
		alert("<%=message%>");
		</script>
		<%
		}
		%>
	</div>

</body>
</html>