<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%!
//선언부는 파일 윗부분에 주로 작성됨
int j = 3;

private int add(int a, int b) {
	return a + b; //이렇게 메소드도 작성 가능
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>declaration: 선언부</h1>
<p>필드 또는 메소드 작성 가능</p>
<%!
//scriptlet이나 expression은 body안에 작성해야하지만, 선언부는(declaration) 굳이 body안에 작성할 필요가 없다.
int i = 0;
%>

<%= add(3,5) %>

</body>
</html>