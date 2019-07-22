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

.lead {
	font-weight: bold;
}
</style>

<script type="text/javascript">
	function tuteedrop()
	{
		if (confirm("튜터링을 중도포기하겠습니까? ") == true)
		{
			location.href = "mypage_ing_tuteedrop?ENROLL_ID="+${tuteeingDetail.ENROLL_ID};
					
		} else
		{
			return;
		}

	}
</script>

<div id="contents">


	<div class="top">

		<div class="tab">
			| 현재 진행중 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto">
			<img src="${tuteeingDetail.THUMBNAIL_PATH }">
		</div>

		<!-- 튜터링 이름 -->

		<div class="TutoringName1">
			<span>${tuteeingDetail.TITLE }</span>
		</div>


		<!-- 튜터 사진 / 튜터링 참가 인원수, 튜터링 정보-->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
				<img width="120px" height="110px" src="${tuteeingDetail.TUTOR_PROF}"
					style="border-radius: 100%;" alt="프로필 이미지">
			</div>
			<div class="TutoringName2_2" style="position: relative; left: 150px;">
				${tuteeingDetail.COUNT_TUTORING}명</div>
			<br>
			<div class="TutoringName2_2"
				style="position: relative; left: 100px; padding: 20px;">시작일 :
				${tuteeingDetail.START_DATE }</div>
			<br> <br>
			<div class="TutoringName2_2"
				style="padding: 20px; position: relative; right: 80px;">${tuteeingDetail.WEEK_PERIOD }주
				과정</div>
		</div>

		<!-- 튜터링 정보 -->
		<%-- <div class="TutoringName3">
			<div class="TutoringName3_1">시작일 : ${tuteeingDetail.START_DATE }</div>			
			<div class="TutoringName3_1">${tuteeingDetail.WEEK_PERIOD }주 과정</div>
			<div class="TutoringName3_1"></div>
		</div> --%>
	</div>
	<!-- top END -->

	<!-- middle -->
	<div class="middle">
		<!-- 탭-->
		<div class="middleTab">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab"
					href="tutee_tuteeingDetail?TUTORING_TUTOR_ID=${tuteeingDetail.TUTORING_TUTOR_ID }">상세정보</a></li>
				<li class="nav-item"><a class="nav-link" href="#profile">튜터링게시판</a></li>
				<li class="nav-item"><a class="nav-link"
					href="mypage_ing_schedule?TUTORING_TUTOR_ID=${tuteeingDetail.TUTORING_TUTOR_ID }">일정정보</a></li>
				<li style="padding-left: 500px;"><button type="button"
						class="btn btn-outline-danger btn-sm" onclick="tuteedrop()">중도포기</button></li>
			</ul>
		</div>
		<!-- 탭 END -->

		<!-- 튜터링 상세페이지 부분 -->
		<div class="TutoringContents">

			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<p class="lead">튜터링 소개</p>
				</div>
				<div class="col-xs-12 col-sm-9">
					<p class="subcontent">${tuteeingDetail.TUTORING_INTRO }</p>


					<p>
					<ul class="subcontent">

					</ul>
					</p>
				</div>
			</div>

			<hr>

			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<p class="lead">상세 정보</p>
				</div>
				<div class="col-xs-12 col-sm-9 subcontent list-unstyled">
					<ul>
						<li><span class="fa fa-map-pin"></span>&nbsp;&nbsp;&nbsp;&nbsp;
							지역 : ${tuteeingDetail.REG_NAME }</li>
						<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;
							시작일, 기간 : ${teteeingDetail.START_DATE },
							${tuteeingDetail.WEEK_PERIOD }</li>
						<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;매주
							요일, 시간 : ${tuteeingDetail.WEEK_NAME },
							${tuteeingDetail.START_TIME }</li>
						<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;
							인원 : ${tuteeingDetail.COUNT_TUTORING }</li>
						<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;
							금액 : ${tuteeingDetail.ENTRY_COST }</li>
					</ul>
					<br>
					<!-- 지도 api 넣을 부분 (임시 img) -->
					<img alt="map" src="css/img/img02.jpg" id="mapImg">

				</div>
			</div>

			<hr />

			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<p class="lead">튜터 소개</p>
				</div>
				<div class="col-xs-12 col-sm-9">
					<div id="wrapper cell">
						<img width="50px" height="40px"
							src="${tuteeingDetail.TUTOR_PROF }" style="border-radius: 100%;">
						${tuteeingDetail.TUTOR_NAME } <br> <br>
					</div>
					<p class="subcontent">${tuteeingDetail.TUTOR_INTRO }</p>

				</div>
			</div>
			<!-- Post Content.row -->




			<hr>

			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<p class="lead">튜터 후기</p>
				</div>
				<div class="col-xs-12 col-sm-9">
					<div class="media mb-4">
						<img width="50px" height="40px"
							src="${tuteeingDetail.TUTEE_PROF_PATH }"
							style="border-radius: 100%;">
						<!-- 댓글 프로필사진 -->
						<div class="media-body subcontent">
							<div class="mt-0">${tuteeingDetail.NICKNAME }</div>
							<footer class="blockquote-footer">
								<cite title="Source Title">${tuteeingDetail.WRITEDATE }
									작성</cite>
							</footer>
							<br>${tuteeingDetail.CONTENT }
						</div>
					</div>
					<a href="profile_tutor?TUTOR_ID=${tuteeingDetail.TUTOR_ID}"><button
							type="button" class="btn btn-primary btn-lg btn-block">튜터
							소개 및 후기 더보기</button></a>
				</div>


			</div>

			<!-- Comments Form -->
			<!-- 문의하기 -->
			<div class="card my-4">
				<h5 class="card-header">튜터에게 물어보세요.</h5>
				<div class="card-body">
					<form>
						<div class="form-group">
							<textarea class="form-control subcontent" rows="3"
								placeholder="문의 내용을 입력하세요."></textarea>
						</div>
						<button type="submit" class="btn btn-primary float-right">등록</button>
					</form>
				</div>
			</div>

			<hr />



			<!-- 계층형 쿼리 사용해서 댓글/ 대댓글 -->
			<!-- Single Comment -->
			<!-- Comment with nested comments -->
			<c:forEach var="tutoringfaq" items="${tutoringfaq }">
				<c:choose>

					<c:when test="${empty tutoringfaq.PAR_FAQ_ID}">
						<div class="media mb-4">
							<img width="50px" height="40px" src="${tutoringfaq.PROF_PATH }"
								style="border-radius: 100%;">
							<!-- 댓글 프로필사진 -->
							<div class="media-body subcontent">
								<div class="mt-0">${tutoringfaq.NICKNAME }</div>
								<footer class="blockquote-footer">
									<cite title="Source Title">${tutoringfaq.FAQ_DATE } 작성</cite>
									<!-- 수정 / 삭제 -->
									<span class="btn-user float-right"> <!-- session memberId와 비교해서 수정/삭제와 신고 뿌려주는것 수정해야함 -->
										<c:choose>
											<c:when test="${tutoringfaq.MEMBER_ID eq MEMBER_ID }">
												<a>수정</a>&nbsp;&nbsp;<a>삭제</a>
											</c:when>
											<c:when test="${tutoringfaq.MEMBER_ID != MEMBER_ID }">
												<a>신고</a>
											</c:when>
										</c:choose>

									</span>
								</footer>
								<br>${tutoringfaq.FAQ_CONTENT }
							</div>
						</div>

					</c:when>

					<c:when test="${!empty tutoringfaq.PAR_FAQ_ID}">
						<div class="media mb-4" style="position: relative; left: 100px;">
							<div class="media-body subcontent">
								<div class="media mt-4 tutor-reply">
									<img width="50px" height="40px" src="${tutoringfaq.PROF_PATH }"
										style="border-radius: 100%;">
									<!-- 댓글 프로필사진 -->
									<div class="media-body subcontent">
										<div class="mt-0">${tutoringfaq.TUTOR_NAME }튜터</div>
										<footer class="blockquote-footer">
											<cite title="Source Title">${tutoringfaq.FAQ_DATE } 작성</cite>
											<!-- 신고 -->
											<span class="btn-user float-right"> <c:choose>
													<c:when test="${tutoringfaq.MEMBER_ID eq MEMBER_ID }">
														<a>수정</a>&nbsp;&nbsp;<a>삭제</a>
													</c:when>
													<c:when test="${tutoringfaq.MEMBER_ID != MEMBER_ID }">
														<a style="position: relative; right: 100px;">신고</a>
													</c:when>
												</c:choose>
											</span>
										</footer>
										<br>${tutoringfaq.FAQ_CONTENT }
									</div>
								</div>
							</div>
						</div>


					</c:when>
				</c:choose>


			</c:forEach>

		</div>
	</div>





</div>

