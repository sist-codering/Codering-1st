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
}

.TutoringContents {
	float: left;
	width: 100%;
	height: 100%;
}

.reviewContents {
	float: left;
	margin-right: 10px;
}
</style>


<script type="text/javascript">

	function reviewSubmit()
	{
		var content = $("#reviewTextarea").val();

		document.getElementById("txtcontent").value = content;
		
	}

	
</script>

<div id="contents">


	<div class="top">

		<div class="tab">
			| 이전에 참여한 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto">
			<img src="${detail.THUMBNAIL_PATH }">
		</div>

		<!-- 튜터링 이름 -->
		<div class="TutoringName1">
			<span>${detail.TITLE }</span>
		</div>

		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
				<img width="50px" height="40px" src="${detail.PROF_PATH }"
					style="border-radius: 100%;">
			</div>
			<div class="TutoringName2_2">${detail.COUNT_TUTORING }명</div>
		</div>

		<!-- 튜터링 정보 -->
		<div class="TutoringName3">
			<div class="TutoringName3_1">시작일:${detail.START_DATE }</div>
			<div class="TutoringName3_1">${detail.WEEK_PERIOD }주과정</div>
			<div class="TutoringName3_1"></div>
		</div>
		<!-- top END -->

		<!-- middle -->
		<div class="middle">
			<!-- 탭-->
			<div class="middleTab">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link" href="tutee_beforetutoringdetail?TUTORING_TUTOR_ID=${detail.TUTORING_TUTOR_ID }">상세정보</a></li>
					<li class="nav-item"><a class="nav-link" href="">튜터링게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="mypage_before_schedule?TUTORING_TUTOR_ID=${detail.TUTORING_TUTOR_ID }">일정정보</a></li>
					<li class="nav-item"><a class="nav-link active" href="mypage_before_review?TUTORING_TUTOR_ID=${detail.TUTORING_TUTOR_ID }">후기</a></li>

				</ul>
			</div>
			<!-- 탭 END -->

			<!-- 튜터링 상세페이지 부분 -->
			<div class="TutoringContents">

				<c:if test="${empty review}">


					<!-- 별점 -->
					<form action="mypage_insert_review" method="POST">
						<div class="form-group reviewContents" style="width: 120px;">
							<select class="custom-select" name="REVIEW_GRADE">
								<option value="5" selected="selected">★★★★★</option>
								<option value="4">★★★★☆</option>
								<option value="3">★★★☆☆</option>
								<option value="2">★★☆☆☆</option>
								<option value="1">★☆☆☆☆</option>
							</select>
						</div>

						<!-- 후기작성 -->
						<div class="form-group reviewContents">
							<textarea class="form-control" id="reviewTextarea" rows="2"
								style="width: 600px"></textarea>
						</div>

						<!-- 정보받기 -->
						<input type="hidden" id="txtcontent" name="CONTENT">
						<input type="hidden" name="ENROLL_ID" value="${detail.ENROLL_ID }">

						<button type="submit"
							class="btn btn-primary btn-lg reviewContents" onclick="reviewSubmit()">후기작성</button>
					</form>
				</c:if>

				<c:if test="${!empty review}">
					<div class="jumbotron">
						<div class="row">
							<!-- 튜티사진 -->
							<div class="col-1.5">
								<img width="80px" height="80px" src="${review.PROF_PATH }"
									style="border-radius: 100%;">
							</div>
							<!-- 튜티이름/날짜/튜터링평가별점  -->
							<div class="col-4">
								<span style="font-weight: bold;">${review.NICKNAME }</span> <br>${review.WRITEDATE }<br>
								<span style="color: purple"> <c:choose>
										<c:when test="${review.REVIEW_GRADE eq 1}">★☆☆☆☆</c:when>
										<c:when test="${review.REVIEW_GRADE eq 2}">★★☆☆☆</c:when>
										<c:when test="${review.REVIEW_GRADE eq 3}">★★★☆☆</c:when>
										<c:when test="${review.REVIEW_GRADE eq 4}">★★★★☆</c:when>
										<c:when test="${review.REVIEW_GRADE eq 5}">★★★★★</c:when>
									</c:choose>
								</span>
							</div>
						</div>

						<div class="row" style="margin-left: 10px; margin-top: 10px;">
							${review.CONTENT }</div>
						<br>

					</div>
				</c:if>


			</div>
		</div>
		<!-- middle END -->





	</div>
</div>

