<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

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

.container {
    border: 2px solid gold;
    background-color: #FFE4B5;
    border-radius: 15px;
    box-shadow: 2px 2px 20px rgba(218,165,32,0.7); 
    height: 450px;
    width: 620px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 10px;
    padding: 20px;
}


table {
    border-spacing: 15px;
}

.ipfields {
    height: 35px;
    width: 250px;
    font-size: 16px;
    font-style: italic;
    font-family: Arial, sans-serif;
    border-radius: 8px;
    border: 1px solid gray;
    padding-left: 10px;
}

#submit {
    height: 45px;
    width: 120px;
    font-size: 18px;
    border-radius: 15px;
    border: 2px solid olive;
    background-color: olive;
    color: white;
    cursor: pointer;
    transition: 0.3s;
}

#submit:hover {
    border: 2px solid gray;
    background-color: gray;
    color: black;
    transform: scale(1.1);
    box-shadow: 0px 0px 10px gray;
}

td {
    text-align: center;
    padding: 5px;
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