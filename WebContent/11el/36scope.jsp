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
pageContext.setAttribute("attr1", "pageVal1");
pageContext.setAttribute("page-attr1", "page-val1");
%>

<p>${attr1}</p>
<p>${pageScope.attr1}</p>
<p>${pageScope["attr1"] }</p>
<p>${pageScope["page-attr1"}</p> <!-- pageScope은 - + * / 등과 같은 기호가 포함되어 있는 attribute혹은 key에
사용하기 적합한 scope이다. -->
</body>
</html>