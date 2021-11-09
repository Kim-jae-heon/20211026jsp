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
<!-- request, session, application 비교 -->
<h1>request, session, application 비교</h1>

<%
Integer reqCounter = (Integer)request.getAttribute("counter");
if(reqCounter == null) {
	reqCounter = 0;
}
request.setAttribute("counter", ++reqCounter);
/* 요청정보는 저장되어지지 않는다. 한 번 요청하면 끝. */

Integer sesCounter = (Integer) session.getAttribute("counter");
if(sesCounter == null) {
	sesCounter = 0;
}
session.setAttribute("counter", ++sesCounter);
/* 다른 브라우저로 넘어가면 처음부터 다시. */

Integer appCounter = (Integer) application.getAttribute("counter");
if(appCounter == null) {
	appCounter = 0;
}
application.setAttribute("counter", ++appCounter);
%>

<ul>
	<li>request counter : <%= request.getAttribute("counter") %></li>
	<li>session counter : <%= session.getAttribute("counter") %></li>
	<li>application counter : <%= application.getAttribute("counter") %></li>
</ul>
</body>
</html>