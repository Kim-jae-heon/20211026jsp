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
Set<String> set = (Set<String>) session.getAttribute("foods");

if(set == null) {
	set = new HashSet<>();
	session.setAttribute("foods", set);
}

String food = request.getParameter("food");

if(food != null) {
	set.add(food);
}
%>

<a href="04attr1.jsp">선택하기</a>

<div>
<h1>선택한 음식들</h1>
</div>

<ul>
<%
	for(String item : set) {
%>
	<li><%= item %></li>
<%
	}
%>
</ul>
</body>
</html>