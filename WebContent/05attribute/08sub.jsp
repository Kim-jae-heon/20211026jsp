<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="sample01.MyBook" %>

<%
Object attr = request.getAttribute("books");
List<MyBook> books = (List<MyBook>) attr;
%>
<ul>
	<%
		for(MyBook book : books) {
	%>
			<li><%= book.getTitle()%> : <%= book.getPrice() %></li>
	<%
		}
	%>	
</ul>


