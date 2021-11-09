<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>get</h1>
<p>주소에 노출</p>
<ul>
	<li>주소에 노출</li>
	<li>길이의 제한</li> <!-- 타일같은 경우에는 get방식으로 보낼 수 없다. 길이에 제한이 있기 때문에. -->
	<!--get방식은 body가 없음 -->
</ul>

<h1>post</h1>
<ul>
	<li>주소에 노출되지 않음(body에 붙어서 전송)</li>
	<li>길이의 제한 없음</li>
	<!--post방식은 body가 있음 -->
</ul>

</body>
</html>