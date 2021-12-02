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
List<String> list = new ArrayList<>();
list.add("loco");
list.add("stayc");
list.add("itzy");
pageContext.setAttribute("list", list);
%>

<my:t15 datas="${list}" />
<%--
<ul>
	<li>loco</li>
	<li>stayc</li>
	<li>itzy</li>
</ul>
 --%>

</body>
</html>