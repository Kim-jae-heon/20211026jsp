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

<form action="" method="post">
	<input type="text" name="id"><br>
	<input type="password" name="pw"><br>
	<input type="submit" value="로그인">
</form>

<%
	String myid = request.getParameter("id");
	String mypw = request.getParameter("pw");
	
	if(myid == null && mypw == null || myid.equals("myid") && mypw.equals("mypassword")) {
		out.println("로그인 성공");
	} else {
		out.println("로그인 실패");
	}
%>
</body>
</html>