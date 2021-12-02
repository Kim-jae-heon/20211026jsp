<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<table>
	<tr>
		<th>#</th>
		<th>책 제목</th>
		<th>저자</th>
		<th>가격</th>
		<th>출판사</th>
		<th>재고수량</th>
	</tr>
	<!-- books를 그냥 쓰면됨.. application 영역에 있으므로-->
	<!-- 어느 영역에 있는지를 판별한 뒤 바로forEach를 들어감. -->
	<tbody>
		<c:forEach items="${books}" var="book" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${book.title}</td>
				<td>${book.write}</td>
				<td>${book.price}</td>
				<td>${book.publisher}</td>
				<td>${book.stock}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>