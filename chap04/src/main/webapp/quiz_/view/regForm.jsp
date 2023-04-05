<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>Register Form</h3>
	
	<form action="/chap04/memo/register_" method="POST">
		Name : <input type="text" name="name" /> <br>
		ID :  <input type="text" name="id" /> <br>
		Password : <input type="text" name="pwd" /> <br>
		Password Confirm : <input type="text" /> (Javascript) <br>
		Birthday : <input type="date" name="birthday" /> <br>
		<input type="submit" value="Register" />
	</form>




</body>
</html>