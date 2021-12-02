<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="datas" type="java.lang.Object"%>
<%-- <%@ attribute name="datas" type="java.util.List" %> --%>
<!-- Object로 크게 묶는 방법과, List로 작게 묶는 방법 두 개가 있다. -->

<ul>
<c:forEach items="${datas}" var="item">
	<li>${item}</li>
</c:forEach>
</ul>