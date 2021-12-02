<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
<title>Insert title here</title>
</head>
<body>

<c:set value="${applicationScope.books[param.index] }" var="book" />

<h1>책 수정</h1>

<form action="25modify-process.jsp" method="post">
  <div class="form-group">
    <label for="titleInput1">제목</label>
    <input type="text" class="form-control" id="titleInput1" value="${book.title}">
  </div>
  <div class="form-group">
    <label for="writerInput1">저자</label>
    <input type="text" class="form-control" id="writerInput1" value="${book.writer}">
  </div>
  <div class="form-group">
    <label for="priceInput1">가격</label>
    <input type="number" class="form-control" id="priceInput1" value="${book.price}">
  </div>
  <div class="form-group">
    <label for="publisherInput1">출판사</label>
    <input type="number" class="form-control" id="publisherInput1" value="${book.publisher}">
  </div>
  <div class="form-group">
    <label for="stockInput1">재고</label>
    <input type="number" class="form-control" id="stockInput1" value="${book.stock}">
  </div>
  <button type="submit" class="btn btn-primary">수정</button>
</form>

<a href="25list-book-tag.jsp">책 목록 보기</a>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>