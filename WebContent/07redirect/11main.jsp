<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("userid");

	if(id != null && id.equals("iamuser")) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>Insert title here</title>
</head>
<body>
	<h1>메인 컨텐츠</h1>
</body>
</html>

<%} else {
	String loc="11login-form.jsp?status=error";
	response.sendRedirect(loc);
}
%>