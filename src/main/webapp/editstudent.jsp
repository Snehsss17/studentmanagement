<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

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

h1 {
	text-align: center;
	margin-top: 35px;
	margin-bottom: 35px;
	color: #333;
}

.container {
	border: 2px solid gold;
	width: 550px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	border-radius: 15px;
	box-shadow: 2px 2px 20px rgba(218,165,32,0.7);
	background-color: #FFE4B5;
	padding: 20px;
	margin-top: 20px;
}

table {
	border-spacing: 15px;
	align-items: center;
	margin: 0 auto;
}

.ipfields {
	height: 40px;
	width: 250px;
	font-size: 16px;
	font-style: italic;
	font-family: Arial, sans-serif;
	border-radius: 10px;
	border: 1px solid gray;
	padding-left: 10px;
	outline: none;
	transition: 0.3s;
}

.ipfields:focus {
	border-color: darkorange;
	box-shadow: 0px 0px 8px rgba(255, 140, 0, 0.8);
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
	padding: 5px;
}
</style>
</head>
<body>

<h1>Edit Student Page</h1>

<% int id = Integer.parseInt(request.getParameter("id")); %>
<% String name = request.getParameter("name"); %>
<% int physics = Integer.parseInt(request.getParameter("physics")); %>
<% int chemistry = Integer.parseInt(request.getParameter("chemistry")); %>
<% int maths = Integer.parseInt(request.getParameter("maths")); %>

<form action="editstudent" method = "post">
	<div class = "container">
			<table>
				<tr>
					<td>Id :</td>
					<td><input type="number" name="id" class="ipfields"
					value = "<%=id %>"	readonly = "readonly"></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name" class="ipfields"
						 value = "<%=name%>"required></td>
				</tr>
				<tr>
					<td>Physics :</td>
					<td><input type="number" name="physics" class="ipfields"
						 value = "<%=physics %>" required></td>
				</tr>
				<tr>
					<td>Chemistry :</td>
					<td><input type="number" name="chemistry" class="ipfields"
						 value = "<%=chemistry %>" required></td>
				</tr>

				<tr>
					<td>Maths :</td>
					<td><input type="number" name="maths" class="ipfields"
						 value = "<%=maths %>" required></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><button type="submit"
							id="submit">Submit</button></td>
				</tr>
			</table>
	</div>
</form>
<script type="text/javascript">
	<% String message = (String) request.getAttribute("message");%>
	<% if (message != null){ %>
	alert("<%=message%>");
	window.location.href = "adminhome.jsp";
	<% } %>
	
</script>



</body>
</html>