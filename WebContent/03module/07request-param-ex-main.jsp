<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>main ex contents</h1>
<%--
쿼리 스트링 바꾸지 않고
?city=jeju

sub.jsp에서

food: apple이라고 출력되도록 jsp:include요소의 content를
변경해보세요
 --%>
<jsp:include page="07request-param-ex-sub.jsp">
	<jsp:param value="apple" name="food"/>
	<jsp:param value="bts" name="group"/>
</jsp:include>
</body>
</html>