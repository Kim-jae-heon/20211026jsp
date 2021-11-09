<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="sample03javabean.*" %>
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
//코드작성
//page 영역 attribute로 map객체를 data라는 이름으로 넣고
//map에 key, value 쌍을 (key1, Bean04객체)로 추가

Map<String, Bean04> map = new HashMap<>();
Bean04 key1 = new Bean04();
key1.setNickName("duck");
key1.setAge(65);
key1.setVip(true);

map.put("key1", key1);

pageContext.setAttribute("data", map);
%>

<p>${data.key1.nickName }</p>
<p>${data.key1.age }</p>
<p>${data.key1.vip }</p>

</body>
</html>