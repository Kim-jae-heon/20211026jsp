<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="attr1" %>
<%@ tag dynamic-attributes="others" %>
<!-- 알아서 형변환 해주는 el -->

${attr1} <br>
${others.attr2} <br>