<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	background-color: #FFEFD5;
	font-size: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 100vh;
}

h1 {
	text-align: center;
	padding-bottom: 30px;
}

.container {
	border: 1px solid black;
	width: 650px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	box-sizing: border-box;
	position: relative;
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

#submit {
	height: 50px;
	width: 100px;
	font-size: 18px;
	border-radius: 18px;
	border: 2px solid red;
	background-color: red;
	color: white;
	margin-top: 10px;
}

#submit:hover {
	border: 2px solid darkred;
	background-color: darkred;
	color: white;
}

#cancel {
	height: 50px;
	width: 100px;
	font-size: 18px;
	border-radius: 18px;
	border: 2px solid yellow;
	background-color: yellow;
	color: black;
	margin-top: 10px;
}

#cancel:hover {
	border: 2px solid gold;
	background-color: gold;
	color: black;
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
		<td>Confirm Deletion !</td>
		
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