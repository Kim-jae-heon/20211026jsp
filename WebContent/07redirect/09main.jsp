<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%-- 아이디가 iamuser 이면 main.jsp 컨텐츠를 보여주고
그렇지 않으면 09login-form.jsp으로 리디렉션 하도록
코드작성 --%>

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
	response.sendRedirect("09login-form.jsp");
}
%>