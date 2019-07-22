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


<div id="contents">

	<!-- top -->
	<div class="top">

		<div class="tab">
			| 예정 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto">
			<img src="${AfterTutoringDetail.THUMBNAIL_PATH }">
		</div>

		<!-- 튜터링 이름 -->
		<div class="TutoringName1">
			<span>${AfterTutoringDetail.TITLE }</span>
		</div>

		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
				<img width="50px" height="40px"
					src="${AfterTutoringDetail.TUTOR_PROF }" style="border-radius: 100%;">
			</div>
			<div class="TutoringName2_2" style="position:relative; left:150px;">
			${AfterTutoringDetail.COUNT_TUTORING}명</div>
			<br>
			<div class="TutoringName2_2" style="position:relative; left:100px; padding:20px;">시작일 : ${AfterTutoringDetail.START_DATE }</div>	
			<br><br>
			<div class="TutoringName2_2" style="padding:20px; position:relative; right:80px;">${AfterTutoringDetail.WEEK_PERIOD }주 과정</div>
		</div>


	</div>
	<!-- top END -->

	<!-- middle -->
	<div class="middle">
		<!-- 탭-->
		<div class="middleTab">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">상세정보</a></li>
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
					<p class="subcontent">
						${AfterTutoringDetail.INTRO }
					</p>
					
					<p>
					<ul class="subcontent">
						<li><span class="fas fa-check"></span>&nbsp;&nbsp;&nbsp;&nbsp;JAVA
							초급 권장</li>
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
							지역 : ${AfterTutoringDetail.REG_NAME }</li>
						<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;2019.
							시작일, 기간 : ${AfterTutoringDetail.START_DATE }, ${AfterTutoringDetail.WEEK_PERIOD }</li>
						<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;매주
							요일, 시간 : ${AfterTutoringDetail.WEEK_NAME }, ${AfterTutoringDetail.START_TIME }</li>
						<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;6명
							인원 : ${AfterTutoringDetail.COUNT_TUTORING }</li>
						<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;350000
							금액 : ${AfterTutoringDetail.ENTRY_COST }</li>
					</ul>
					<br>
					<!-- 지도 api 넣을 부분 (임시 img) -->
					<img alt="map" src="images/img02.jpg" id="mapImg">

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
							src="${AfterTutoringDetail.TUTOR_PROF }"
							style="border-radius: 100%;"><br> <br>
					</div>
					<p class="subcontent">
					${AfterTutoringDetail.TUTOR_INTRO }
					</p>
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
							src="${AfterTutoringDetail.TUTEE_PROF_PATH }" style="border-radius: 100%;">
						<!-- 댓글 프로필사진 -->
						<div class="media-body subcontent">
							<div class="mt-0">${AfterTutoringDetail.NICKNAME }</div>
							<footer class="blockquote-footer">
								<cite title="Source Title">${AfterTutoringDetail.WRITEDATE } 작성</cite>
							</footer>
							<br>${AfterTutoringDetail.CONTENT }
						</div>
					</div>
					<a href="profile_tutor?TUTOR_ID=${AfterTutoringDetail.TUTOR_ID}">
					<button type="button" class="btn btn-primary btn-lg btn-block">튜터
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
								<img width="50px" height="40px" src="${tutoringfaq.PROF_PATH }" style="border-radius: 100%;">
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
							<div class="media mb-4" style="position:relative; left:100px;">
								<div class="media-body subcontent">
									<div class="media mt-4 tutor-reply">
										<img width="20px" height="15px" src="${tutoringfaq.PROF_PATH }" style="border-radius: 100%;">
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
															<a style="position:relative; right:100px;">신고</a>
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
	<!-- middle div END -->






</div>
<!-- Contents END -->

