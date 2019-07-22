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
			<li class="nav-item"><a class="nav-link active" href="tutee_writtenComm">게시글</a></li>
			<li class="nav-item"><a class="nav-link" href="tutee_qtreply">댓글</a></li>
			<li style="padding-left: 68%; font-size: 17pt;">| 내가 쓴 글 |</li>
		</ul>

		<!-- 테이블 -->
		
		<table class="table table-hover">
			<tbody>
				<tr class="table-active">
					<th scope="row">NO.</th>
					<th>-</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				
				<c:forEach var="writtenComm" items="${writtenComm }">
				<tr>
					<td scope="row">${writtenComm.QT_ID }</td>
					<td>질문 게시판</td>
					<td>						
						${writtenComm.TITLE}<br>							
					</td>
					<td>${writtenComm.WRITEDATE} </td>
					<td>${writtenComm.HITCOUNT }</td>
				</tr>
				</c:forEach> 
				
				
				<c:forEach var="writtenCom" items="${writtenCom }">
				<tr>
					<td scope="row">${writtenCom.TT_ID }</td>
					<td>튜터링 게시판</td>					
					<td>${writtenCom.TT_TITLE }</td>
					<td>${writtenCom.TT_WRITEDATE }</td>
					<td>${writtenCom.HITCOUNT }</td>

				</tr>
				</c:forEach>
				
				
			</tbody>
		</table>
		


	</div>
</div>
