<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="DTO.Student_Dto"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
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


table {
	width: 700px;
	border : 1px solid black;
	border-collapse: collapse;
	box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
	background-color: #FFE4B5;
	border-radius: 10px;
	border-style :solid;
	overflow: hidden;
}

th, td {
	padding: 12px;
	border: 1px solid black;
	text-align: center;
}

th {
	background-color: gold;
	color: black;
}


.msgs {
	text-align: center;
	font-weight: bold;
	display: none;
	margin-top: 10px;
	font-size: 22px;
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
	margin-top: 20px;
	margin-left : 290px;
}

#submit:hover {
	border: 2px solid darkorange;
	background-color: darkorange;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px darkorange;
}

</style>
</head>
<body>
	<h1>Student Home Page</h1>

	<div class="container">
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Physics</th>
					<th>Chemistry</th>
					<th>Maths</th>
					<th>Percentage</th>

				</tr>
			</thead>
			<tbody>

				<%
				Student_Dto s = (Student_Dto) request.getAttribute("student");
				%>
				<%
				if (s != null) {
				%>

				<tr>
					<td><%=s.getId()%></td>
					<td><%=s.getName()%></td>
					<td><%=s.getPhysics()%></td>
					<td><%=s.getChemistry()%></td>
					<td><%=s.getMaths()%></td>
					<td id="percentage">
						<%
						int percentage = ((s.getPhysics() + s.getChemistry() + s.getMaths()) * 100) / 300;
						%><%=percentage + " %"%></td>
				</tr>
			</tbody>
		</table>
		<p id="msg1" class="msgs" style="color: green">"Great job! You've
			earned this!"</p>
		<p id="msg2" class="msgs" style="color: blue">"Nice progress! Keep
			improving."</p>
		<p id="msg3" class="msgs" style="color: red">"You can bounce back!
			just keep going!"</p>
			
		<div>
		<button id = "submit" onclick = "goback()">Go back</button>
		</div>
	</div>
	<%
	}
	%>

	<script type="text/javascript">
		var percentage = document.getElementById("percentage");
		var msg1 = document.getElementById("msg1");
		var msg2 = document.getElementById("msg2");
		var msg3 = document.getElementById("msg3");

		if (percentage) {
			var percent = parseInt(percentage.innerText);
			if (percent > 80) {
				msg1.style.display = "block";
			}
			else if (percent >= 40 && percent <= 80) {
				msg2.style.display = "block";
			}
			else if (percent <= 40) {
				msg3.style.display = "block";
			}
		}
		
		function goback()
		{
			window.location.href = "studentlogin.jsp";
		}
	</script>




</body>
</html>