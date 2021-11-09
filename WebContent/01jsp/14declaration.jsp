<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%! 
int add(int a, int b) {
	return a+b;
}

int subtract(int a, int b) {
	return a - b;
}

int multiply(int a, int b) {
	return a*b;
}

int divide(int a, int b) {
	return a/b;
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일부코드 완성하기</title>
</head>
<body>
<%= add(5, 7) %> <br>
<%= subtract(10, 2) %><br>
<%= multiply(10, 25) %><br>
<%= divide(99,3) %><br>
</body>
</html>