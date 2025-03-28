<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<style>
body{
	background-color : #FFEFD5;
}
h1{
	margin-top : 90px;
	padding-left : 41%;
}
.container{
	border : 2px solid gold;
	height : 250px;
	width : 450px;
	margin-left : 36%;	
	margin-top : 6%;	
	border-radius : 28px;
	box-shadow : 2px 2px 90px 2px gold;
	background-color : peach;
	
	
	
}
a{
	text-decoration : none;
	border : 2px solid orange;
	margin-top : 60px;
	margin-left : 180px;
	position : absolute;
	background-color : orange;	
	color : black;
	text: bold;
	height : 50px;
	width : 100px;
	line-height : 35px;
	display :flex;
	align-items : center;
	justify-content : center;
	font-size : 20px;
	border-radius : 18px;
	border-style : solid;
}
a:hover{
	border : 2px solid red;
	background-color : red;	
	color: white;
}


</style>
</head>
<body>

<h1>Student Details Project</h1>	
	<div class = container>
		<a href="adminlogin.jsp" id = "admin">Admin</a> 
			<br> <br> <br> <br>
		<a href="#" id = "student">Student</a>
			<br> <br>
	</div>

</body>
</html>