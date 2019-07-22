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

.TutoringContents {
	float: left;
	width: 100%;
	height: 100%;
}

.manage-item {
	display: flex;
	align-items: center;
}
</style>

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
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutorbefore_schedule?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">일정정보</a></li>
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutorbefore_tuteemanage?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">튜티관리</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="tutor_tutorpage_tutorbefore_review?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">후기</a></li>
				</ul>
			</div>
			<!-- 탭 END -->

			<!-- 튜터링 상세페이지 부분 -->
			<div class="TutoringContents">

				<div class="jumbotron">

					<c:if test="${empty review }">
						아직 작성된 후기가 없습니다.
					</c:if>

					<c:forEach var="rv" items="${review }">
						<!-- //한 줄 시작//  -->
						<div class="row">
							<!-- 튜티사진 -->
							<div class="col-1">
								<img width="80px" height="80px" src="${rv.PROF_PATH }"
									style="border-radius: 100%;">
							</div>
							<!-- 튜티이름/날짜/튜터링평가별점  -->
							<div class="col-4">
								<span style="font-weight: bold;">${rv.NICKNAME }</span> <br>${rv.WRITEDATE }<br>
								<span style="color: purple"> <c:choose>
										<c:when test="${rv.REVIEW_GRADE eq 1}">★☆☆☆☆</c:when>
										<c:when test="${rv.REVIEW_GRADE eq 2}">★★☆☆☆</c:when>
										<c:when test="${rv.REVIEW_GRADE eq 3}">★★★☆☆</c:when>
										<c:when test="${rv.REVIEW_GRADE eq 4}">★★★★☆</c:when>
										<c:when test="${rv.REVIEW_GRADE eq 5}">★★★★★</c:when>
									</c:choose>
								</span>
							</div>
						</div>

						<!-- 후기 작성 줄 -->
						<div class="row" style="margin-left: 10px; margin-top: 10px;">
							${rv.CONTENT }</div>
						<br>
						<!-- //한 줄 끝//  -->
					</c:forEach>







				</div>

			</div>
		</div>





	</div>
</div>
