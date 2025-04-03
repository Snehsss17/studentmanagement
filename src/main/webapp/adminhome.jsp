<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	
<%@ page import="java.util.List" %>
<%@ page import="DTO.Student_Dto" %>
<%@ page import="DAO.Student_Dao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page - Admin</title>
<style>

body {
    background: linear-gradient(to right, #FFDAB9, #FFA07A);
    font-size: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
    justify-content: center;
    margin : 0;
}

h1 {
	text-align: center;
	padding-bottom: 30px;
	color: #333;
}

table {
    border: 2px solid black;
    border-collapse: collapse;
    width: 750px;
    background-color: white;
    margin: auto; 
    box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
}

th, td {
    border: 1px solid black;
    padding: 10px;
    text-align: center;
}

th {
    background-color: #ffcc99;
}

td a {
    text-decoration: none;
    font-weight: bold;
}

td a:hover {
    text-decoration: underline;
}

.buttons {
    display: flex;
    justify-content: space-between;
    width: 750px; 
    margin-top: 20px;
}

#add, #lout {
    text-decoration: none;
    padding: 10px 20px;
    border-radius: 18px;
    font-size: 18px;
    font-weight: bold;
    color: white;
    transition: 0.3s;
    text-align: center;
}

#add {
    background-color: green;
    border: 2px solid green;
}

#add:hover {
    background-color: darkgreen;
    border-color: darkgreen;
}

#lout {
    background-color: red;
    border: 2px solid red;
}

#lout:hover {
    background-color: darkred;
    border-color: darkred;
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
					<td><a href="editstudent.jsp?id=<%=s.getId()%>&name=<%=s.getName()%>&physics=<%=s.getPhysics()%>
					&chemistry=<%=s.getChemistry()%>&maths=<%=s.getMaths()%>">edit</a></td>
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