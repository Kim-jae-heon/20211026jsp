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

<h1>30list-to.jsp</h1>


<%
List<String> data = (List<String>)session.getAttribute("data");

for(int i = 0; i < data.size(); i++) {
	session.setAttribute("i", i);
%>
	${i} : ${data[i]}
<%
}
%>

</body>
</html>