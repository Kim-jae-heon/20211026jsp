<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String paramA = "a=java";
String paramB = "b=hello world";
String paramC = "c=" + URLEncoder.encode("자바", "utf-8");
String location = "13querystring-encoding-to.jsp";
String loc = location + "?" + paramA + "&" + paramB + "&" + paramC;
response.sendRedirect(loc);
%>