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

<style>
.container {
	background-color: skyblue;
}

div{
	background-color: silver;
}

.container-fluid {
	background-color: springGreen;
}
</style>

<title>Insert title here</title>
</head>
<body>

<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique ab expedita ad nam laboriosam atque iure repellendus iste cumque ratione dolores exercitationem laborum deleniti consequuntur officia perspiciatis porro necessitatibus ipsam.</div>

<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis quasi voluptatem id quibusdam vitae fugit aut quam maiores commodi. Numquam laborum aperiam quae quos quia at nisi repellat molestiae similique?</div>

<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores corrupti iste optio facere autem labore quia excepturi quam quaerat ut voluptatem ducimus soluta aspernatur odit earum eius reiciendis vitae fugit!</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>