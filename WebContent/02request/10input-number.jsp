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

<form action="">
	<input type="number" name="param1">
	<input type="number" name="param2">
	<input type="submit">
</form>

<hr>
<%= request.getParameter("param1") %> <br>
<%= request.getParameter("param2") %> <br>
<!-- 다만 유의점은 표기상으로 숫자를 표기 안하는 것이지 서버에는 숫자가 아닌 다른 내용물들이 들어갈 수 있다.-->
<!-- 이게 복잡한 코드이기 때문에 배울 때는 생략하지만, 실전에선 이를 점검하는 코드가 반드시 들어가야 한다. -->
</body>
</html>