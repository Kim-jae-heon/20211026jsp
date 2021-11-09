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

<h1>map</h1>

<%
Map<String, String> map = new HashMap<>();
map.put("lang", "java");
map.put("pre", "html");
map.put("pattern", "mvc");
//2개의 key, value쌍(entry)넣고
map.put("bible", "absolute");
map.put("me", "worries");

pageContext.setAttribute("bean1", map);
%>

<hr>

<p>map: ${bean1}</p>
<p>lang : ${bean1.lang}</p>
<!-- key값을 bean1의 property인 것처럼 사용
하면 됨!  -->

<!-- 위에서 추가한 value를 출력 -->
<p>bible : ${bean1.bible }</p>
<p>me : ${bean1.me }</p>
</body>
</html>