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
			| 예약 튜터링 |
			<hr>
		</div>
		<br>

		
		<!-- 튜터링 이름 -->
		<div class="TutoringName1">
			<span>${ReservationTutoringDetail.TUTORING_TITLE }</span>
		</div>

		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1" style="position:relative; left:30px; top:20px;">
				<img width="150px" height="130px"
					src="${ReservationTutoringDetail.TUTEEJANG_PROF }"
					style="border-radius: 100%;">
			</div>
			<div class="TutoringName2_2" style="position:relative; left:150px;">
			${ReservationTutoringDetail.COUNT_TUTORING}명</div>
			<br>
			<div class="TutoringName2_2" style="position:relative; left:100px; padding:20px;">시작일 : ${ReservationTutoringDetail.UPLOAD_DATE }</div>	
			<br><br>
			<div class="TutoringName2_2" style="padding:20px; position:relative; right:80px;">${ReservationTutoringDetail.WEEK_PERIOD }주 과정</div>
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
						${ReservationTutoringDetail.INTRO }
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
							지역 : ${ReservationTutoringDetail.REG_NAME }</li>
						<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;2019.
							시작일, 기간 : ${ReservationTutoringDetail.UPLOAD_DATE }, ${ReservationTutoringDetail.WEEK_PERIOD }</li>
						<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;매주
							마감날짜 : ${ReservationTutoringDetail.DEADLINE }</li>
						<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;6명
							최소 인원 ~ 최대 인원 : ${ReservationTutoringDetail.MIN_NUM } ~ ${ReservationTutoringDetail.MAX_NUM }</li>
						<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;350000
							금액 : ${ReservationTutoringDetail.ENTRY_COST }</li>
					</ul>
					<br>
					<!-- 지도 api 넣을 부분 (임시 img) -->
					<img alt="map" src="images/img02.jpg" id="mapImg">

				</div>
			</div>

			<hr />
			
			<!-- Post Content.row -->

			<hr>

			
			<!-- Comments Form -->
			<!-- 문의하기 -->
			<div class="card my-4">
				<h5 class="card-header">튜티장에게 물어보세요.</h5>
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

