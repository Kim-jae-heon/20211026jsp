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

<p>java code: <%= application.getAttribute("appAttr1") %></p>
<p>el : ${appAttr1}</p>
<p>el : ${appAttr2}</p>
<p>el : ${appAttr3}</p>
<p>el : ${appAttr4}</p>

<!-- application이기 때문에 현재페이지에서 따로 name과 value를 정의해주지 않았더라도 10application.jsp
에서 입력된 내용들이 출력되게 된다. 하지만, el을 자세히 보아도 application에서 data를 가져왔다는 그 경로
를 확인할 수 없다. el에서 attribute를 꺼낼 때 어느 영역에서 꺼내는지를 명시하지 않는다는 것.

결론부터 말하자면 $는 pageContext > request > session > application순서대로 찾게된다.  -->
</body>
</html>