<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
list.add("java");
list.add("jsp");
pageContext.setAttribute("list", list);
pageContext.setAttribute("str", "hello world");

Map<String, String> map = new HashMap<>();
map.put("a", "b");
pageContext.setAttribute("map", map);
%>

${fn:length(list) } <br>
${fn:length(str) } <br>
${fn:length(map) } <br>

<hr> <!-- 이 경우는 정말 어쩔 수 없을 때 쓰는 방법. 이 방법을 사용시 유지보수가 쉽지는 않다. -->
${list.size() } <br>
${str.length() } <br>
${map.size()} <br>

${map.get("a") } <br>

<hr>

<%
pageContext.setAttribute("str1", "hello world");
pageContext.setAttribute("str2", "hello <br> world");
%>

${str1} <br>
${str2} <br>
${fn:escapeXml(str2)} <br> <!-- <c:out>태그 대신에 쓸 수 있는 escapeXml태그.  -->
</body>
</html>