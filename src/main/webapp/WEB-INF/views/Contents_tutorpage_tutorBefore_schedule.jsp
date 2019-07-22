<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>


<style type="text/css">
#contents {
	/* width: 50%; */
	float: left;
}

.tab {
	text-align: right;
	font-size: 18pt;
}

/* 사진 가운데정렬 */
.TutoringPhoto {
	position: relative;
	text-align: center;
}

.TutoringPhoto img {
	display: inline-block;
	/* position:absolute; top:50%; left:50%; */
	width: 850px;
	height: 400px;
	margin: 0px auto;
}

/* 튜터링 이름과 간략한 정보부분 */
.TutoringName1 {
	margin-top: 20px;
	margin-left: 10px;
}

.TutoringName1 span {
	font-size: 15pt;
	font-weight: bold;
}

.TutoringName2 {
	margin: 10px;
	/* width: 600px; */
	float: left;
	width: 100%;
	height: 100%;
}

.TutoringName2_1 {
	float: left;
}

.TutoringName2_2 {
	float: left;
	margin-top: 20px;
}

.TutoringName3 {
	float: left;
	/* margin-bottom: 30px; */
	margin-left: 10px;
	width: 900px;
}

.TutoringName3_1 {
	float: left;
	width: 280px;
}

.middleTab {
	margin-top: 20px;
	float: left;
	margin-bottom: 20px;
	width: 100%;
}

.boardContents {
	float: left;
	width: 100%;
	height: 100%;
}

.TutoringBoardPaging {
	float: left;
	margin-left: 40%;
}

.TutoringBoardButton {
	float: right;
}

.middletab {
	width: 100%;
	height: 100%;
}
</style>

<script type="text/javascript">
	
</script>


<div id="contents" class="col-xs-12 col-sm-12 col-md-8">


	<div class="top">

		<div class="tab">
			| 이전 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto">
			<img src="${detail[0].THUMBNAIL_PATH }">
		</div>

		<!-- 튜터링 이름 -->
		<div class="TutoringName1">
			<span>${detail[0].TITLE }</span>
		</div>

		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
				<img width="50px" height="40px" src="${tutorprof.PROF_PATH }"
					style="border-radius: 100%;">
			</div>
			<div class="TutoringName2_2">${detail[0].COUNT_TUTORING }명</div>
		</div>

		<!-- 튜터링 정보 -->
		<div class="TutoringName3">
			<div class="TutoringName3_1">시작일:${detail[0].START_DATE }</div>
			<div class="TutoringName3_1">${detail[0].WEEK_PERIOD }주과정</div>
			<div class="TutoringName3_1"></div>
		</div>


		<div class="middle">
			<!-- 탭-->
			<div class="middleTab">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutorbefore_detail?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">상세정보</a></li>
					<li class="nav-item"><a class="nav-link" href="#">튜터링게시판</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="tutor_tutorpage_tutorbefore_schedule?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">일정정보</a></li>
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutorbefore_tuteemanage?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">튜티관리</a></li>
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutorbefore_review?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">후기</a></li>
				</ul>
			</div>
			<!-- 탭 END -->

			<!-- 튜터링 상세페이지 부분 -->
			<div class="TutoringContents">

				<!-- 새 일정정보 버튼(비활성화) -->
				<button type="button" id="myBtn"
					class="btn btn-primary btn-lg btn-block disabled"
					style="width: 100%">새 일정정보 입력하기</button>
				<br>

				<!-- 일정정보 -->
				<c:forEach var="sc" items="${schedule }">
					<div class="card border-primary mb-3" style="max-width: 100%;">
						<div class="card-header">
							${sc.SCH_DATE }
							<div class="card-text" style="float: right"></div>
						</div>

						<div class="card-body">
							<h4 class="card-title">${sc.SCH_TAKE }회차튜터링</h4>
							<h4 class="card-title">${sc.SCH_LOCATION }</h4>
							<p class="card-text" style="float: right">지도보기</p>
						</div>
					</div>
				</c:forEach>
				<!-- 일정정보 END -->
			</div>



		</div>
	</div>




</div>

<div></div>