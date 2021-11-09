<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="sample01.MyBook" %>

<%
MyBook book = (MyBook) request.getAttribute("book");
%>

<li><%= book.getTitle() %> : <%= book.getPrice() %></li>