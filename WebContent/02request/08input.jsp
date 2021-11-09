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

<%-- input type 속성 기본값은 text --%>
<%-- input의 type에 따라 사용자가 입력하는 방식이 현저히 바뀜을 알 수 있다. --%>
text : <input type="text" /> <br>
number : <input type="number" /> <br />
date : <input type="date" /> <br />
file : <input type="file" /> <br />
password : <input type="password" /><br />
email : <input type="email" /><br />
checkbox : <input type="checkbox" /><br />
radio : <input type="radio" /><br />
submit : <input type="submit" />

<hr />
number : <input type="number" min="0" max="10" step="2" /><br />

<span>Lorem.</span>
<br>

</body>
</html>