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

<h1>main contents</h1>
<%
Enumeration<String> iter = request.getParameterNames();

while(iter.hasMoreElements()) {
%>
	<p><%= iter.nextElement() %></p>
	
<%
}
%>
<hr>
<h2>sub start</h2>
<jsp:include page="/03module/06request-param-sub.jsp">
	<jsp:param value="seoul" name="city"></jsp:param>
</jsp:include>
	<!-- request라는 상자를 main과 sub가 공유할 때 request
	상자한테 정보를 추가하여 sub로 넘기는 것. 
	따라서 main에서는 안나타난 정보를 sub에서는 나타낼
	수 있다.
	꼭 include 액션태그 안에서 사용해야 함..!-->


</body>
</html>