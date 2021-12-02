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
pageContext.setAttribute("pageAttr1", "world");
pageContext.setAttribute("pageAttr2", 300);
%>

<my:t10 attr1="hello"></my:t10>
<hr>
<my:t10 attr2="${pageAttr1}"></my:t10>
<hr>
<my:t10 attr3="${pageAttr2}"></my:t10>
<hr>
<my:t10 attr4="400"></my:t10>
<hr>
<%-- 
<my:t10 attr4="one"></my:t10> 이친구는 안됨.
 --%>
</body>
</html>