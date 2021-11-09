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

<!-- sub.jsp 위치 -->

<div>
<h1>main 페이지 컨텐츠</h1>
<jsp:include page="/03module/04include-ex-sub.jsp"></jsp:include>
</div>


</body>
</html>