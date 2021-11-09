<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<style>

</style>
<div>
	<ul class="menu">
		<!-- a요소를 갖는 li.menu-item요소를 "menuItems"라는 이름의 request attribute를 사용하여 만들기 
		main1과 main2의 코드를 보고 유추하여 만들어보자.-->
		
		<% String[] Items = (String[]) request.getAttribute("menuItems"); 
		
			for(String item: Items) {
		%>
			<li class="menu-item"><a href=""><%=item %></a></li>
		<%		
			}
		%>
	</ul>
</div>