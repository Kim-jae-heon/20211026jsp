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
<!-- forward이용시 main contents라는 문구의 부재.-->
<jsp:forward page="01other.jsp"></jsp:forward>
<!-- forward를 만나면 만나기 전까지의 code가 다 지워짐(정확히는 출력 내용들이 다 지워짐). 그리고 해당page로 넘어가 모든 코드를 호출 뒤 응답을 끊음.
요청은 main, 응답은 other가 한다는 점에 유의.-->

</body>
</html>