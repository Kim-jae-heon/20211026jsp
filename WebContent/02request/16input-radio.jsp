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
<!-- form>(input:r)*3+input:s -->
<form action="">
	<!-- radio button은  같은 name끼리는 하나만 선택할 수 있다.  -->
	<input type="radio" name="param" value="value1" id="">값1
	<input type="radio" name="param" value="value2" id="">값2
	<input type="radio" name="param" value="value3" id="">값3
	
	<br>
	<!-- (input:r[name=param2])*3 -->
	<input type="radio" name="param2" value="val1" id="">v1
	<input type="radio" name="param2" value="val2" id="">v2
	<input type="radio" name="param2" value="val3" id="">v3
	
	<input type="submit" value="전송">
</form>
<hr>

<%
String val = request.getParameter("param");
String valTwo = request.getParameter("param2");

if(val != null) {
	out.println(val);
	out.print(valTwo);
}
%>
</body>
</html>