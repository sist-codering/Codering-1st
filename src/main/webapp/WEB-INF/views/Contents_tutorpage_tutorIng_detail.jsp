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

.lead {
	font-weight: bold;
}

.tutor-reply {
	margin-left: 80px;
}
</style>


<script type="text/javascript">
	
	$(function()
	{
		$(".deleteBtn").click(function()
		{
			//테스트
			//alert("삭제버튼 클릭");

			if (confirm("튜터링을 정말 삭제하시겠습니까?"))
			{
				$(location).attr("href", "tutor_tutorpage_tutoring_drop?TUTORING_TUTOR_ID="+${detail[0].TUTORING_TUTOR_ID });
			}		 
 					 
		});
		
		
	});
	
</script>


<div id="contents" class="col-xs-12 col-sm-12 col-md-8">


	<div class="top">

		<div class="tab">
			| 진행중 튜터링 |
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
				<img width="50px" height="40px" src="${tutorinfo[0].PROF_PATH }"
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
					<li class="nav-item"><a class="nav-link active"
						href="tutor_tutorpage_tutoring_detail?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">상세정보</a></li>
					<li class="nav-item"><a class="nav-link" href="#">튜터링게시판</a></li>
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutoring_schedule?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">일정정보</a></li>
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutoring_tuteemanage?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">튜티관리</a></li>
					<li style="margin-left: 50%;"><button type="button"
							class="btn btn-outline-danger btn-sm deleteBtn">폐강하기</button></li>
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
						<p class="subcontent">${detail[0].INTRO }</p>
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
								${detail[0].REG_NAME }</li>
							<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;2019.
								${detail[0].START_DATE } 시작, ${detail[0].WEEK_PERIOD }주</li>
							<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;매주
								<c:forEach var="day" items="${detail }">
									${day.WEEK_NAME }
								</c:forEach> ${detail[0].START_TIME } ~ ${detail[0].END_TIME }</li>
							<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								${detail[0].MIN_NUM }명 ~ ${detail[0].MAX_NUM }명</li>
							<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								${detail[0].ENTRY_COST }원</li>
						</ul>
						<br>
						<!-- 지도 api 넣을 부분 (임시 img) -->
						<img alt="map" src="css/img/img02.jpg" id="mapImg">
						${detail[0].REG_LAT } ${detail[0].REG_LONG }

					</div>
				</div>

				<hr />

				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">튜터 소개</p>
					</div>
					<div class="col-xs-12 col-sm-9">
						<div id="wrapper cell">
							<img width="50px" height="40px" src="${tutorinfo[0].PROF_PATH }"
								style="border-radius: 100%;"> ${tutorinfo[0].TUTOR_NAME }
							튜터 <br> <br>
						</div>
						<p class="subcontent">${tutorinfo[0].INTRO }</p>

						<p class="subcontent">
							<c:forEach var="career" items="${tutorinfo }">
								<li>${career.CAREER_CONTENT }<br></li>

							</c:forEach>
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
							<img width="50px" height="40px" src="${review.PROF_PATH }"
								style="border-radius: 100%;">
							<!-- 댓글 프로필사진 -->
							<div class="media-body subcontent">
								<div class="mt-0">${review.NICKNAME }</div>
								<footer class="blockquote-footer">
									<cite title="Source Title">${review.WRITEDATE } 작성</cite>
								</footer>
								<br>${review.CONTENT }
							</div>
						</div>
						<a href="profile_tutor?TUTOR_ID=${detail[0].TUTOR_ID}"><button type="button" class="btn btn-primary btn-lg btn-block">튜터
							소개 및 후기 더보기</button></a>
					<br> <br> <br>
					</div>
					

				</div>

			</div>
		</div>



	</div>
</div>
