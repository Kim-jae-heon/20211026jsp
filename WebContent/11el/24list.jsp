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
<%
List<String> list = new ArrayList<>();
list.add("coffee");
list.add("beer");
list.add("soju");

pageContext.setAttribute("attr1", list);
%>

<p>list : ${attr1}</p>
<p>list 0번째 : ${attr1[0] }</p>
<p>list 1번째 : ${attr1[1] }</p>
<p>list 2번째 : ${attr1[2] }</p>
<!-- indexOutOfBounds 에러가 나지 않았다. 안전하게 쓸 수 있다는 것. -->
</body>
</html>