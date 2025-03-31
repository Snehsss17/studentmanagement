<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background-color: #FFEFD5;
	font-size: 20px;
}

h1 {
	margin-left: 43%;
	margin-top: 35px;
	margin-bottom : 35px;
}
.container {
	border: 1px solid black;
	height: 580px;
	width: 780px;
	display: flex;
	align-items: center;
	justify-contents: center;
	margin-left : 400px;
}
table{
	border-spacing : 25px;
	align-items: center;
	margin-left: 150px;
	padding-top : 10px;
}
.ipfields{
	height : 30px;
	width : 205px;
	font-size : 16px;
	font-style : italic;
	font-family : Arial,sans-serif;
}

#submit{
	height: 50px;
	width : 100px;
	font-size : 18px;
	border-radius :  18px;
	border-style : solid;	
	border : 2px solid orange;
	background-color : orange;	
	color: white;

}
#submit:hover{
	border : 2px solid darkorange;
	background-color : darkorange;	
	color: white;
}
td{
	 text-align: center;
    vertical-align: middle;
    padding: 2px; 
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
				<td>Id : </td>
				<td><input type ="number" name ="id" class="ipfields" placeholder = "Enter Id here" required></td>
			</tr>
			<tr>
				<td>Name : </td>
				<td><input type ="text" name ="name" class="ipfields" placeholder = "Enter Name here" required></td>
			</tr>
			<tr>
				<td>Contact : </td>
				<td><input type ="tel" name ="contact" class="ipfields" placeholder = "Enter Contact here" required></td>
			</tr>
			<tr>
				<td>Email : </td>
				<td><input type ="text" name ="email" class="ipfields" placeholder = "Enter Email here" required></td>
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
				<td colspan="2" align="center"><p id ="errormsg"></p></td>		
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
				errormsg.style.display = "block";
				  errormsg.style.color = "red";
				event.preventDefault(); 
				return false;
			}
			else {
				errormsg.style.display = "none";
				return true;
			}
		}
	</script>

	

</body>
</html>