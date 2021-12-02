<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
//1. 파라미터로 받은 값을 Bean06 객체로 만들어서
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String priceStr = request.getParameter("price");
//http는 전부 text를 주고받기 때문에 integer를 나눌 수 없다.
String publisher = request.getParameter("publisher");
String storageStr = request.getParameter("stock");

int price = Integer.parseInt(priceStr);
int storage = Integer.parseInt(storageStr);
//때문에 여기서 정수로 변경해주는 것.

Bean06 book = new Bean06(title, writer, price, publisher, storage);
//2. application영역에 저장, 원래는 db여야 함
List<Bean06> list = (List<Bean06>)application.getAttribute("books");
if(list == null) {
	list = new ArrayList<>();
	application.setAttribute("books", list);
}
list.add(book);

//3. 25list-book.jsp로 redirect
response.sendRedirect("25list-book-tag.jsp");

%>