<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<h1>
<% int a = Integer.parseInt(request.getParameter("num1")); %>
<% int b = Integer.parseInt(request.getParameter("num2")); %>
<%= a %> + <%= b %> = <%= a + b %> 입니다.
</h1>

