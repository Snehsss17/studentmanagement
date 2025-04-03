<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Student</title>

<style type="text/css">
body {
	background: linear-gradient(to right, #FFDAB9, #FFA07A);
	font-family: Arial, sans-serif;
	font-size: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.container {
	border: 2px solid red;
	width: 500px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	border-radius: 15px;
	box-shadow: 2px 2px 20px rgba(255, 0, 0, 0.5);
	background-color: #FFE4B5;
	padding: 30px;
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 15px;
}

td {
	text-align: center;
	padding: 10px;
	font-size: 18px;
}

.buttons {
	display: flex;
	justify-content: center;
	gap: 20px;
	margin-top: 20px;
}

#submit {
	height: 50px;
	width: 130px;
	font-size: 18px;
	border-radius: 18px;
	border: 2px solid red;
	background-color: red;
	color: white;
	cursor: pointer;
	transition: 0.3s;
}

#submit:hover {
	border: 2px solid darkred;
	background-color: darkred;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px darkred;
}

#cancel {
	height: 50px;
	width: 130px;
	font-size: 18px;
	border-radius: 18px;
	border: 2px solid gray;
	background-color: gray;
	color: white;
	cursor: pointer;
	transition: 0.3s;
}

#cancel:hover {
	border: 2px solid black;
	background-color: black;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px black;
}

#confirm{
	margin-left : 100px;
}
</style>
</head>
<body>

<h1>Delete Student</h1>
<% 
   String id = request.getParameter("id");   
%>


<form action="deletestudent" method = "post">
	
	<table class = "container">
	<tr>
		<td colspan = "2" id = "confirm">Confirm Deletion !</td>
		
	</tr>
	
	<tr>
		<td><input type="hidden" name="id" value="<%= id %>"></td>
		<td><input type ="submit" id = "submit" value = "Delete"></td>
		<td><a href="adminhome.jsp"><button type="button" id="cancel">Cancel</button></a></td>
	</tr>
	</table>
</form>

<script type="text/javascript">
    <% String message = (String) request.getAttribute("message"); %>
    <% if (message != null) { %>
        alert("<%= message %>");
    <% } %>
</script>




</body>
</html>