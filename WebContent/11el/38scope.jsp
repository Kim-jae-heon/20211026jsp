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
<%
pageContext.setAttribute("data", "page data");
request.setAttribute("data", "req data");
session.setAttribute("data", "ses data");
application.setAttribute("data", "app data");

pageContext.setAttribute("new data", "new page data");
request.setAttribute("new data", "new req data");
session.setAttribute("new data", "new ses data");
application.setAttribute("new data", "new app data");
%>

${pageScope.data} <br>
${requestScope.data } <br>
${sessionScope.data } <br>
${applicationScope.data } <br>

${pageScope["new data"]} <br>
${requestScope["new data"] } <br>
${sessionScope["new data"] } <br>
${applicationScope["new data"]}
</body>
</html>