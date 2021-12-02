<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/fontawesome-free-5.15.4-web/css/all.css">
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
				<h1>책 추가</h1>
				<form method="post">
					<div class="form-group">
						<label for="InputTitle">책 제목</label>
						<input type="text" class="form-control" id="InputTitle" name="title">
					</div>
					<div class="form-group">
						<label for="InputWrite">저자</label>
						<input type="text" class="form-control" id="InputWrite" name="write">
					</div>
					<div class="form-group">
						<label for="InputPrice">가격</label>
						<input type="text" class="form-control" id="InputPrice" name="price">
					</div>
					<div class="form-group">
						<label for="InputPublisher">출판사</label>
						<input type="text" class="form-control" id="InputPublisher" name="publisher">
					</div>
					<div class="form-group">
						<label for="InputStock">재고</label>
						<input type="text" class="form-control" id="InputStock" name="stock">
					</div>
					<input type="submit" value="등록" class="btn btn-primary"/>
				</form>
			</div>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>