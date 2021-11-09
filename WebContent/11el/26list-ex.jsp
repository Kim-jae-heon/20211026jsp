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
List<String> list1 = new ArrayList<>();
list1.add("v");
list1.add("suga");
list1.add("rm");

String[] arr1 = {"jk", "jin", "jimin", "hope"};

pageContext.setAttribute("data1", list1);
pageContext.setAttribute("data2", arr1);
%>

<p>list 0번째 : ${data1[0]}</p>
<p>list 1번째 : ${data1[1] }</p>
<p>list 2번째 : ${data1[2] }</p>
<p>arr 0번째 : ${data2[0] }</p>
<p>arr 1번째 : ${data2[1] }</p>
<p>arr 2번째 : ${data2[2] }</p>
<p>arr 3번째 : ${data2[3] }</p>
</body>
</html>