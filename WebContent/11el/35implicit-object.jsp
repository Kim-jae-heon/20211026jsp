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
<h1>EL 기본객체 11개</h1>
<p>pageContext : ${pageContext}</p> <!-- attribute를 찾는 것이 아닌 객체 그 자체임에 유의. -->
<p>pageScope : ${pageScope }</p>
<p>requestScope : ${requestScope }</p>
<p>applicationScope : ${applicationScope }</p>
<p>param : ${param }</p>
<p>paramValues : ${paramValues }</p>
<p>header : ${header }</p>
<p>headerValues : ${headerValues }</p>
<p>cookie : ${cookie }</p>
<p>initParam : ${initParam }</p>
<!-- 얘네들 전부 다 map으로 알고 쓰면 된다. 전부 map객체이기 때문에. -->
</body>
</html>