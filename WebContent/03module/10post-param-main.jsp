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

<form action="" method="post">
<!-- 브라우저 요청방식이 get 혹은 post로 나뉘는 것. -->
	<!-- (input:text+br)*2+input:s -->
	<input type="text" name="CITY" id="" value="jeju">
	<br>
	<input type="text" name="SONG" id="" value="mafia">
	<br>
	<input type="submit" value="전송">
</form>

<jsp:include page="10post-param-sub.jsp"></jsp:include>

</body>
</html>