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

	<!-- form>input:number+select>(opt)*4^input:number+input:s -->
	<form action="">
		<input type="number" name="num1" id=""> <select
			name="operator" id="">
			<option value="plus">+</option>
			<option value="minus">-</option>
			<option value="times">X</option>
			<option value="divide">/</option>
		</select> <input type="number" name="num2" id=""> <input type="submit"
			value="계산">
	</form>

	<hr>
	<%
				String str1 = request.getParameter("num1");
				String str2 = request.getParameter("num2");
				String operator = request.getParameter("operator");
	%>

	<%-- 계산결과 출력되도록 작성 --%>
	<p>
		<%
			if (str1 == null && str2 == null) {
				out.print("값을 입력해주세요");
			} else {
				int integer1 = Integer.parseInt(str1);
				int integer2 = Integer.parseInt(str2);
				
				switch (operator) {
				case "plus":
					out.print(integer1 + integer2);
					break;
				case "minus":
					out.print(integer1 - integer2);
					break;
				case "times":
					out.print(integer1 * integer2);
					break;
				case "divide":
					out.print(integer1 / integer2);
					break;
				default:
					out.print("값을 잘못 입력하셨습니다.");
					break;
				}
			}
		%>
	</p>
</body>
</html>