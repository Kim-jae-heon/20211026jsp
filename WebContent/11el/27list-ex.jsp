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
List<String> list = new ArrayList<String>();
list.add("bible");
list.add("we are one");
list.add("Jesus");
pageContext.setAttribute("list1", list);

List<String> listTwo = new ArrayList<String>();
listTwo.add("bean");
listTwo.add("tree");
pageContext.setAttribute("arr1", listTwo);
%>

<p>${arr1[0] }</p>
<p>${arr1[1] }</p>
<p>${list1[0] }</p>
<p>${list1[1] }</p>
<p>${list1["2"] }</p> <!-- String을 넣어도 작동하는 모습을 볼 수 있다. 자주 일어나는 일은 아니다. -->
<!-- 값을 위처럼 하드코딩해서 넣을 수 있지만 JSTL을 배우면 반복문을 사용하여 탐색이 가능하다. -->
</body>
</html>