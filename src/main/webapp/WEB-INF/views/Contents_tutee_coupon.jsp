<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<style type="text/css">
#contents {
	/* width: 930px; */
	float: left;
}

.tab {
	text-align: right;
	font-size: 18pt;
}
</style>

<div id="contents">
	<div>

		<div class="tab">
			| 쿠 폰 |
			<hr>
		</div>


		<!-- 테이블 -->
		<table class="table table-hover">
			<tbody>
				<tr class="table-active">
					<th scope="row">받은날짜</th>
					<th>쿠폰명</th>
					<th>쿠폰금액</th>
					<th>사용기한</th>
					<th>상태</th>
				</tr>
				<tr>
					<td scope="row">2019.06.20</td>
					<td>튜터링 삭제 보상 쿠폰</td>
					<td>10,000</td>
					<td>2019.07.20</td>
					<td>사용가능</td>
				</tr>
				<tr>
					<td scope="row">2019.04.20</td>
					<td>튜터링 10회 기념 쿠폰</td>
					<td>10,000</td>
					<td>2019.05.20</td>
					<td>사용완료</td>
				</tr>
				<tr>
					<td scope="row">2019.04.11</td>
					<td>튜터링 5회 기념 쿠폰</td>
					<td>3,000</td>
					<td>2019.05.11</td>
					<td>기간만료</td>
				</tr>
				<tr>
					<td scope="row">2019.03.01</td>
					<td>가입 기념 쿠폰</td>
					<td>1,000</td>
					<td>2019.03.11</td>
					<td>사용완료</td>
				</tr>
			</tbody>
		</table>

	</div>
</div>
