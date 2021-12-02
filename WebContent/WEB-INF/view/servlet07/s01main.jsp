<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<div class="container">
	<div class="row">
		<div class="col-2">
		<nav class="nav flex-column">
		  <a class="nav-link" href="${pageContext.request.contextPath}/servlet07/main">메인</a>
		  <a class="nav-link" href="${pageContext.request.contextPath}/servlet07/add">추가</a>
		  <a class="nav-link" href="${pageContext.request.contextPath}/servlet07/list">목록</a>
		  <a class="nav-link" href="${pageContext.request.contextPath }/servlet07/modify">수정</a>
   		  <a class="nav-link" href="${pageContext.request.contextPath }/servlet07/delete">삭제</a>
		</nav>
		</div>
		<div class="col-10">
			<h1>도서 관리 APP</h1>
			<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/servlet07/add'">추가</button>
			<button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/servlet07/list'">리스트</button>
		</div>
	</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>