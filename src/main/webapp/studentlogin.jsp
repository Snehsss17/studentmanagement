<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: linear-gradient(to right, #FFDAB9, #FFA07A);
	font-family: Arial, sans-serif;
	font-size: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 100vh;
	margin: 0;
}

/* Title */
h1 {
	text-align: center;
	margin-top: 35px;
	margin-bottom: 35px;
	color: #333;
}

/* Container */
.container {
	border: 2px solid gold;
	height: 220px;
	width: 400px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	border-radius: 15px;
	box-shadow: 2px 2px 20px rgba(218,165,32,0.7);
	background-color: #FFE4B5;
	padding: 20px;
}

/* Table */
table {
	border-spacing: 15px;
	align-items: center;
	margin: 0 auto;
}

/* Input Fields */
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

/* Submit Button */
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

/* Go Back Button */
#goback {
	height: 50px;
	width: 120px;
	font-size: 18px;
	border-radius: 18px;
	border: 2px solid gray;
	background-color: gray;
	color: black;
	cursor: pointer;
	margin-top: 20px;
	transition: 0.3s;
}

#goback:hover {
	border: 2px solid olive;
	background-color: olive;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px olive;
}

td {
	text-align: center;
	vertical-align: middle;
	padding: 5px;
}
</style>
</head>
<body>

<h1>Student Login page</h1>

<form action="studentlogin" method = "get">
	<div class= "container">
	<table>
		<tr>
			<td>Enter Id : </td>
			<td><input type = "number" name = "id" id = "input" class = "ipfields" placeholder = "Enter Id" required></td>
		</tr>
		<tr>
			
			<td colspan = "2" align = "center"><input type = "submit"id = "submit" value = "View Results"></td>
		</tr>
	</table>	
	</div>
</form>
<br> <br> 
		<div>
		<button id = "goback" onclick = "goback()">Go back</button>
		</div>
<script type="text/javascript">
<% String message = (String) request.getAttribute("message");%>
<% if(message != null) { %>
alert("<%=message %>")
<%} %>

function goback()
{
	window.location.href = "index.jsp";
}
</script>
</body>
</html>