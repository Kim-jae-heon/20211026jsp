<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로그인</h1>

<!-- form>{id}+input+br+{pw}+input+br+input:s -->
<form action="" method="post"> <!-- post방식으로 전송이 된 것. 쿼리스트링에 기록되지는 않는다. -->
id<input type="text" name="userid">
	<br>
pw<input type="password" name="password">
	<br>
	<input type="submit" value="로그인">
</form>

<hr>

userid: <%= request.getParameter("userid") %> <br>
password: <%= request.getParameter("password") %> <br>

<!-- 전송방식이 2가지가 있다는 것. get방식과 post방식. -->
</body>
</html>