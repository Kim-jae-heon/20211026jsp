<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="dan" type="java.lang.Integer"%>

<h1>구구단 ${dan}단</h1>

<c:forEach begin="1" end="9" var="i">
	<p>${dan} * ${i} = ${dan*i}</p>
</c:forEach>
