<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
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
Map<String, String> map = new HashMap<>();
map.put("lang", "python");
map.put("framework", "django");
map.put("pattern", "mvc");

pageContext.setAttribute("map", map);
%>

<my:t16 datas="${map}" />
<%--
table>tr*3>td*2

<table>
	<tr>
		<td>lang</td>
		<td>python</td>
	</tr>
	<tr>
		<td>framework</td>
		<td>django</td>
	</tr>
	<tr>
		<td>pattern</td>
		<td>mvc</td>
	</tr>
</table>
 --%>

</body>
</html>