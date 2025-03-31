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
	display: flex;
	flex-direction: column;
	align-items: center;
	height: 100vh;
}

.container {
	border: 1px solid black;
	height: 480px;
	width: 780px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-contents: center;
	margin-top: 10px;
}

table {
	border-spacing: 25px;
	align-items: center;
	flex-direction: column;
	justify-contents: center;
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
	border: 2px solid olive;
	background-color: olive;
	color: white;
}

#submit:hover {
	border: 2px solid gray;
	background-color: gray;
	color: black;
}

td {
	text-align: center;
	vertical-align: middle;
	padding: 2px;
}
</style>
</head>
<body>
	<h1>Add Student</h1>

	<form action="addstudent" method="post">
		<div class="container">
			<table>
				<tr>
					<td>Id :</td>
					<td><input type="number" name="id" class="ipfields"
						placeholder="Enter Id here" required></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name" class="ipfields"
						placeholder="Enter Name here" required></td>
				</tr>
				<tr>
					<td>Physics :</td>
					<td><input type="number" name="physics" class="ipfields"
						placeholder="Enter Physics marks" required></td>
				</tr>
				<tr>
					<td>Chemistry :</td>
					<td><input type="number" name="chemistry" class="ipfields"
						placeholder="Enter Chemistry marks" required></td>
				</tr>

				<tr>
					<td>Maths :</td>
					<td><input type="number" name="maths" class="ipfields"
						placeholder="Enter Maths marks" required></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><button type="submit"
							id="submit">Submit</button></td>
				</tr>
			</table>
		</div>
	</form>

	<script type="text/javascript">
	<%String msg = (String) request.getAttribute("msg");%>
	<%if (msg != null) {%>
	 alert("<%=msg%>");
		window.location.href = "adminhome.jsp";
	<%}%>
		
	</script>

</body>
</html>