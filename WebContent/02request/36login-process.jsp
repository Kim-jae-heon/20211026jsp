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

<%
String myid = request.getParameter("id");
String mypw = request.getParameter("pw");

if(myid == null && mypw == null || myid.equals("myid") && mypw.equals("mypassword")) {
	out.println("로그인 성공");
} else {
	out.print("<script>");
	out.print("alert('아이디 패스워드가 일치하지 않습니다.')");
	out.print("</script>");
%>
	<a href="<%= request.getContextPath() %>/02request/35login-form.jsp">로그인화면으로 돌아가기</a>
<%
}
%>
<!-- 모듈화에 대한 이야기. 코드의 일부를 적정 페이지에 배치하는 방법에 대한 것이다. -->
</body>
</html>