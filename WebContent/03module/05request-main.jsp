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
<!-- request객체가 공유되고 있다는 사실 확인 -->

<div>
main contents.....
<br>

name: <%= request.getParameter("name") %>
</div>




<div>
<jsp:include page="/03module/05request-sub.jsp"></jsp:include>
</div>

</body>
</html>