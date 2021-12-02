<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>jstl url tag</h1>
<hr>
<a href="https://www.naver.com">네이버</a>

<br>

<a href="https://www.naver.com">네이버2</a>

<br>

<c:url value="https://www.naver.com" var="naverUrl"></c:url>


<a href="${naverUrl}">네이버3</a>

<br>

<a href="${naverUrl}">네이버4</a>

<hr>

<c:url value="25book-form.jsp" var="addBookUrl" />

<a href="${addBookUrl}">책 추가하기</a>

<br>

${addBookUrl}

<hr>

<a href="<%= request.getContextPath() %>/12jstl/25book-form.jsp">책 추가하기</a> <!-- contextpath를 꼭 넣어줬어야 했었다. -->

<br>

<a href='<c:url value="/12jstl/25book-form.jsp"></c:url>'>책 추가하기</a> <!-- c:url 태그는 자동으로 contextpath를 붙여준다. -->

<br>
</body>
</html>