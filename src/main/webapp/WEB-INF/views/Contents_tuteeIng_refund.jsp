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

/* 튜터링 이름과 간략한 정보부분 */
.TutoringName1 {
	margin-top: 20px;
	margin-bottom: 20px;
}

.bold {
	font-size: 15pt;
	font-weight: bold;
}

.refundButton {
	margin-left: 40%;
	margin-top: 10%;
}

.row0 {
	float: left;
	width: 100%;
}

.row1 {
	float: left;
	width: 200px;
}
</style>


<div id="contents">


	<div class="top">

		<div class="tab">
			| 현재 진행중 튜터링 |
			<hr>
		</div>
		<br>

		<!-- middle -->
		<div class="middle">


			<h1>환불 페이지</h1>

			<div class="TutoringName1">
				<span class="bold">${refund.TITLE }</span>
			</div>

			<p>시작일 : ${refund.START_DATE }</p>
			<p>현재일 : ${refund.TODAY_DATE }</p>

			<p>
				<span class="bold">환불예정금액 : ${refund.REFUND_COST }원</span>
			</p>

			<hr>

			<p>
				환불 규정<br /> 1. 전체 튜터링 기간의 ⅓ 경과 전 → 튜티에게 강의료 ⅔ 에 해당하는 금액 환불 <br />2.
				전체 튜터링 기간의 ½ 경과 전 → 튜티에게 강의료 ½ 에 해당하는 금액 환불 <br />3. 전체 튜터링 기간의 ½
				경과 후 → 환불불가
			</p>
			<br> <br>

			<div>

				<div class="row0">
					<div class="row1">
						<p>
							<span class="bold">예금주</span>
						</p>
					</div>
					<div class="row1">
						<input class="form-control form-control-lg" type="text"
							placeholder="예금주" id="inputLarge" style="width: 300px">
					</div>
				</div>

				<div class="row0">
					<div class="row1">
						<p>
							<span class="bold">은행명</span>
						</p>
					</div>
					<div class="row1" style="margin-top: 11px;">
						<div class="form-group">
							<select class="custom-select" style="width: 300px">
								<option selected="1">기업은행</option>
								<option value="2">국민은행</option>
								<option value="3">우리은행</option>
								<option value="4">신한은행</option>
								<option value="5">농협은행</option>
								<option value="6">카카오뱅크</option>
							</select>
						</div>
						
					</div>
				</div>

				<div class="row0">
					<div class="row1">
						<p>
							<span class="bold">계좌번호</span>
						</p>
					</div>
					<div class="row1">
						<input class="form-control form-control-lg" type="text"
							placeholder="계좌번호" id="inputLarge" style="width: 300px">
					</div>
				</div>
			</div>

			<br> <br> <br> <br>
			<div class="refundButton">
				<button type="button" class="btn btn-danger">중도포기하기</button>
				<button type="button" class="btn btn-outline-primary">돌아가기</button>
			</div>




		</div>
		<!-- middle END -->
	</div>
</div>

