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

<!-- button.btn.btn-info*10>lorem1 -->
<button class="btn btn">Lorem.</button>
<button class="btn btn-primary">Modi.</button>
<button class="btn btn-secondary">Obcaecati!</button>
<button class="btn btn-success">Perspiciatis!</button>
<button class="btn btn-info">Sapiente.</button>
<button class="btn btn-warning">Vero.</button>
<button class="btn btn-danger">Quidem.</button>
<button class="btn btn-dark">Voluptates!</button>
<button class="btn btn-light">Itaque?</button>
<button class="btn btn-link">Veritatis.</button>

<hr>

<button class="btn btn-lg">Lorem.</button>
<button class="btn btn-primary btn-lg">Modi.</button>
<button class="btn btn-secondary btn-sm">Obcaecati!</button>
<button class="btn btn-success btn-sm">Perspiciatis!</button>
<button class="btn btn-info btn-xs">Sapiente.</button>
<button class="btn btn-warning btn-xs">Vero.</button>
<button class="btn btn-danger">Quidem.</button>
<button class="btn btn-dark">Voluptates!</button>
<button class="btn btn-light">Itaque?</button>
<button class="btn btn-link">Veritatis.</button>

<hr>

<!-- outline buttons -->

<button class="btn btn-lg">Lorem.</button>
<button class="btn btn-outline-primary btn-lg">Modi.</button>
<button class="btn btn-outline-secondary btn-sm">Obcaecati!</button>
<button class="btn btn-outlin-success btn-sm">Perspiciatis!</button>
<button class="btn btn-outline-info">Sapiente.</button>
<button class="btn btn-outline-warning">Vero.</button>
<button class="btn btn-outline-danger">Quidem.</button>
<button class="btn btn-outline-dark">Voluptates!</button>
<button class="btn btn-outline-light text-dark">Itaque?</button>
<button class="btn btn-link">Veritatis.</button>

<hr>
<!-- button.btn.btn-primary>lorem1 -->
<button class="btn btn-primary">Lorem.</button>

<input type="button" value="lorem" class="btn btn-primary">

<input type="submit" value="submit" class="btn btn-primary">

<a href="#" class="btn btn-primary">lorem</a>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>