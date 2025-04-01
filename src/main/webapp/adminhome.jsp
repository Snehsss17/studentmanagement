<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	
<%@ page import="java.util.List" %>
<%@ page import="DTO.Student_Dto" %>
<%@ page import="DAO.Student_Dao" %>
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
table{
	border: 1px solid black;
	border-collapse: collapse;
	
	width: 700px;
}
th,td{
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

.buttons{
	
	display: flex;
	flex-direction: row;
	align-items: center;
	position: absolute;
	justify-content: space-between;
	margin-top : 500px;
	width: 700px;
}

#add{
	text-decoration: none;
	padding: 10px;
	border-radius: 18px;
	border: 2px solid green;
	background-color: green;
	color: white;
}

#add:hover {
	border: 2px solid darkgreen;
	background-color: darkgreen;
	color: white;
}
#lout{
	text-decoration: none;
	padding: 10px;
	border-radius: 18px;
	border: 2px solid red;
	background-color: red;
	color: white;
}
#lout:hover {
	border: 2px solid darkred;
	background-color: darkred;
	color: white;
}
</style>


</head>
<body>

	<h1>Welcome to the Home Page</h1>
	
	
<div class = "container">
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Physics</th>
				<th>Chemistry</th>
				<th>Maths</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<% List<Student_Dto> lists = Student_Dao.findAllStudent(); %>
			<%	for(Student_Dto s : lists) {%>
			
				<tr>
					<td><%=s.getId()%></td>
					<td><%=s.getName()%></td>
					<td><%=s.getPhysics()%></td>
					<td><%=s.getChemistry()%></td>
					<td><%=s.getMaths()%></td>
					<td><a href="editstudent.jsp?id=<%=s.getId()%>&name=<%=s.getName()%>&physics=<%=s.getPhysics()%>&chemistry=<%=s.getChemistry()%>&maths=<%=s.getMaths()%>">edit</a></td>
				<td><a href="deletestudent.jsp?id=<%=s.getId()%>" style="color: red;">delete</a></td>
				</tr>
			<%}	%>
			
		</tbody>
	</table>
</div>

<div class = "buttons">
	<a href ="addstudent.jsp" id ="add">Add Student</a>
	<a href ="adminlogin.jsp" id = "lout">Logout</a>
</div>
	
</body>
</html>