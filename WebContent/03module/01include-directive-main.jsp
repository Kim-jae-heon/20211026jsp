<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>멋진 제목</h1>

<%-- sub 콘텐츠 삽입 --%>
<%@ include file="/03module/01include-directive-sub.jsp" %>
<!-- include directive는 해당 파일의 내용을 이 안으로 그대로 복붙한 것. -->

<h1>훌륭한 푸터</h1>
</body>
</html>