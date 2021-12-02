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

<my:t08color color="red">
	<h1>Lorem.</h1>
</my:t08color>

<!-- 
<div style="color: red;">
	<h1>Lorem.</h1>
</div>
 -->
 
<my:t08color color="blue">
	<p>Lorem ipsum</p>
</my:t08color>

<!-- 
<div style="color: blue;">
	<p>Lorem ipsum.</p>
</div>
 -->

</body>
</html>