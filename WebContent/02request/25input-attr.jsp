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
<!-- form>(input)*5+input:s -->
<form action="">
	<input type="text" name="param1" required value="필수값"><br> <!-- required의 효과? 반드시 작성을 해야함.  -->
	<input type="text" name="param2" value="초기값"><br> <!--  -->
	<input type="text" name="param3" disabled value="디스에이블드값"><br> <!--  -->
	<input type="text" name="param4" readonly value="읽기 전용값"><br> <!-- 수정불가 -->
	<input type="text" name="param5" placeholder="힌트 예)이름을 입력하세요."><br> <!-- 힌트 -->
	<input type="email" name= "param6"> <br>
	<input type="text" name="param7" pattern="[0-9]{5}"><br>
	<input type="submit" value="전송">
</form>

<hr>
param1: <%= request.getParameter("param1") %> <br>
param2: <%= request.getParameter("param2") %> <br>
param3: <%= request.getParameter("param3") %> <br>
param4: <%= request.getParameter("param4") %> <br>
param5: <%= request.getParameter("param5") %> <br>
param6: <%= request.getParameter("param6") %> <br> <!-- 실전에서는 서버에서 점검해야 함. -->
param7: <%= request.getParameter("param7") %> <br>

</body>
</html>