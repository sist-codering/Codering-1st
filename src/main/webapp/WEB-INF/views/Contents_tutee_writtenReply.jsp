<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<div id="contents">
	<div>

		<!-- 탭 -->
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link" href="tutee_writtenComm">게시글</a></li>
			<li class="nav-item"><a class="nav-link active" href="tutee_qtreply">댓글</a></li>
			<li style="padding-left: 68%; font-size: 17pt;">| 내가 쓴 댓글 |</li>
		</ul>

		<!-- 테이블 -->
		<table class="table table-hover">
			<tbody>
				<tr class="table-active">
					<th scope="row">-</th>
					<th>내용</th>
					<th>작성일</th>
				</tr>

				<c:forEach var="qtreply" items="${qtreply }">
					<tr>
						<td scope="row">질문게시판</td>
						<td>${qtreply.CONTENT }</td>
						<td>${qtreply.WRITEDATE }</td>
					</tr>
				</c:forEach>

				<c:forEach var="tutoringreply" items="${tutoringreply }">
					<tr>
						<td scope="row">튜터링게시판</td>
						<td>${tutoringreply.CONTENT }</td>
						<td>${tutoringreply.WRITEDATE }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>


	</div>
</div>
