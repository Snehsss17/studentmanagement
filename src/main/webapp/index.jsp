<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<style>

body{
	background: linear-gradient(to right, #FFDAB9, #FFA07A);
	font-family: Arial, sans-serif;
	margin : 0;
}
h1{
	margin-top: 90px;
	text-align: center;
	color: #444;
	font-size: 38px;
}
.container{
	border: 2px solid gold;
	height: 250px;
	width: 450px;
	margin: 6% auto;
	border-radius: 28px;
	box-shadow: 2px 2px 30px rgba(218,165,32,0.7);
	background-color: #FFE4B5;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}
a{
	text-decoration: none;
	border: 2px solid orange;
	background-color: orange;
	color: black;
	font-weight: bold;
	height: 50px;
	width: 120px;
	line-height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 18px;
	border-radius: 18px;
	margin: 10px;
	transition: 0.3s;
}
a:hover{
	border: 2px solid red;
	background-color: red;
	color: white;
	transform: scale(1.1);
	box-shadow: 0px 0px 10px red;
}
</style>




</head>
<body>

<h1>Student Details Project</h1>	
	<div class = container>
		<a href="adminlogin.jsp" id = "admin">Admin</a> 
		
		<a href="studentlogin.jsp" id = "student">Student</a>
			
	</div>

</body>
</html>