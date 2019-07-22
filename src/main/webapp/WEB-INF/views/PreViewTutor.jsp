<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>TutoringPage07.jsp</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script type="text/javascript">

	$(document).ready(function()
	{
	
	});

</script>
<body>
	<!-- Page Content -->
	<div class="container" style="margin-top:60px;">
		<div class="row">

			<!-- Post Content Column -->
			<div class="col-lg-8">

				<!-- Title -->
				<h1 class="mt-4">${iv.TITLE }</h1>

				<!-- Author -->
				<p class="lead">
					by <a href="#">Code-ring</a>
				</p>

				<hr>

				<!-- Date/Time -->
				<p style="font-size: small;">Posted on January 1, 2019 at 12:00
					PM</p>

				<hr>

				<!-- Preview Image -->
				<img class="img-fluid rounded mx-auto d-block"
					src="${THUMBNAIL_PATH }" alt="">
				<!--         <img class="img-fluid rounded" src="http://placehold.it/900x300" alt=""> -->
				<hr>

				<!-- Post Content -->

				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">튜터링 소개</p>
					</div>
					<div class="col-xs-12 col-sm-9">
						<p class="subcontent">
							${iv.INTRO}
						</p>

						<p>
						<ul class="subcontent">
							<li><span class="fas fa-check"></span>&nbsp;&nbsp;&nbsp;&nbsp;
							${selectLangLvName }권장</li>
						</ul>
					</div>
				</div>

				<hr>

				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">상세 정보</p>
					</div>
					<div class="col-xs-12 col-sm-9 subcontent list-unstyled">
						<ul>
							<li><span class="fa fa-map-pin"></span>&nbsp;&nbsp;&nbsp;&nbsp;${regInfo.REG_NAME }</li>
							<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								${iv.START_DATE }</li>
							<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;매주
								${selectWeekName} ${iv.START_TIME } ~ ${iv.END_TIME }</li>
							<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;${iv.MIN_NUM }
								~ ${iv.MAX_NUM}</li>
							<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;${ENTRY_COST }
								원</li>
						</ul>
						<br>
						<!-- 지도 api 넣을 부분 (임시 img) -->
						<img alt="map" src="images/img02.jpg" id="mapImg">
						<!-- 지도에넣을 경도 위도 값 -->
					</div>
				</div>

				<hr />

				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">튜터 소개</p>
					</div>
					<div class="col-xs-12 col-sm-9">
						<div id="wrapper cell">
							<img alt="tutor pic" src="${selectTutorInfo.PROF_PATH}"
								class="rounded-circle" id="profilePic01"
								style="width: 50px; height: 50px;"> ${selectTutorInfo.TUTOR_NAME } 튜터 <br> <br>
						</div>
						<p class="subcontent">${selectTutorInfo.INTRO }</p>
						<c:forEach var="career" items="${selectTutorCareer }">
							<p>${career.CAREER_CONTENT } / ${career.CAREER_START} ~ ${career.CAREER_END }</p>
						</c:forEach>
					</div>
				</div>
				<!-- Post Content.row -->


				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">튜터 후기</p>
					</div>
					<div class="col-xs-12 col-sm-9">
					<c:forEach var="review" items="${selectTutorReview }">
						<div class="media-review" id="wrapper cell">
							<img alt="tutor pic" src="${review.PROF_PATH}"
								class="rounded-circle" id="profilePic02"
								style="width: 50px; height: 50px;">
							<div style="margin-left: 15px;">
								${review.NICKNAME } <br>
								<footer class="blockquote-footer">
									<cite title="Source Title">${review.WRITEDATE } 작성</cite>
								</footer>
							</div>
						</div>
						<br>
						<br>
						<div>
							<p class="subcontent">${review.CONTENT }</p>
							<br>
							<br>
							<br>
						</div>
					</c:forEach>
						<input type="button" value="튜터 프로필 및 튜티 후기 더보기"
							class="btn btn-primary btn-block" disabled="disabled">
					</div>
				</div>
				<!-- Post Content.row -->


				<hr>


				<!-- 자주 묻는 질문 -->
				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">자주 묻는 질문</p>
					</div>
					<div class="col-xs-12 col-sm-9" id="freq">
					<c:forEach var="frequency" items="${FAQ }">
						<div class="subcontent">
							<img alt="tutor pic" src="<%=cp%>/images/img05.JPG"
								class="rounded-circle" id="faq01"> ${frequency.FAQ_QUESTION } <br>
							<br> <img alt="tutor pic" src="<%=cp%>/images/img06.JPG"
								class="rounded-circle" id="faq02"> ${frequency.FAQ_ANSWER }
						</div>
					</c:forEach>
						<br>
						
						</div>
						<br>
					</div>
				<!-- Post Content.row -->
				


				<hr>



			</div>

			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Search Widget -->
				<div class="card my-4" id="fixed">
					<h5 class="card-header">${iv.TITLE }</h5>
					<div class="card-body">
						<div class="row">
							<div class="list-unstyled mb-0" id="table">
								<div class="row-div">
									<span class="cell col1 subcontent">참가비</span> <span
										class="cell col2"><h5>${iv.ENTRY_COST } 원</h5></span>
								</div>
								<div class="row-div">
									<span class="cell col1 subcontent">시간</span> <span
										class="cell col2"><h5>${selectWeekName} ${iv.START_TIME } ~ ${iv.END_TIME }</h5></span>
								</div>
								<div class="row-div">
									<span class="cell col1 subcontent">일정</span> <span
										class="cell col2"><h5>
											${iv.START_DATE }<br>총 ${iv.ENTIRE_PERIOD }, ${iv.totalTime } 시간
										</h5></span>
								</div>
							</div>
						</div>
						<input type="button" value="개설 완료" onclick="location.href='inserttutoring_tutor'"
							class="btn btn-primary btn-block" id="sub">
					</div>
				</div>
				<!-- Search Widget -->
			</div>
			<!-- Sidebar Widgets Column -->

		</div>
		<!-- /.row -->

	</div>

	<!-- /.container -->



	<!-- Bootstrap core JavaScript -->
	<script src="<%=cp %>/vendor/jquery/jquery.min.js"></script>

</body>
