<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="others" %> <!-- 얘는 맵이다. -->
<c:forEach items="${others}" var="item">
	<li>${item.value}</li>
</c:forEach>