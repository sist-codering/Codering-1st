<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>TutoringPage06.jsp</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<!-- Custom styles for this template -->

</head>
<body>
	<!-- 튜티장이 개설한 튜터링 미리보기 상세페이지 -->


	<!-- Page Content -->
	<div class="container">
		<div class="row">

			<!-- Post Content Column -->
			<div class="col-lg-8">

				<!-- Title -->
				<h1 class="mt-4">웹 프로그래밍 같이 시작하실 분~!!!</h1>

				<!-- Author -->
				<p class="lead">
					by <a href="#">Code-ring</a>
				</p>

				<hr>

				<!-- Date/Time -->
				<p style="font-size: small;">Posted on January 1, 2019 at 12:00
					PM</p>

				<hr>


				<!-- Post Content -->

				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">튜터링 소개</p>
					</div>
					<div class="col-xs-12 col-sm-9">
						<p class="subcontent">웹 프로그래밍 함께 공부하실 분 찾습니다~!!! 소수정예로 8주 이내로
							공부하고 싶습니다. 저도 초급 레벨이기 때문에 기초부터 탄탄히 하실 분들 구해요.</p>

						<p class="subcontent">
							[커리큘럼]<br> 1. 기본 문장 구성<br> -be동사/일반동사 평서문/부정문/의문문<br>
							-시제1 (현재/과거/미래)<br> -시제2 (진행형)<br> -질문하기 & 복습<br>
							:
						</p>


						<p>
						<ul class="subcontent">
							<li><span class="fas fa-check"></span>&nbsp;&nbsp;&nbsp;&nbsp;JAVA
								초급, Oracle SQL 초급 권장</li>
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
								신촌 희망</li>
							<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								8주 희망</li>
							<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								평일 오후 희망</li>
							<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								3 ~ 4명 희망</li>
							<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;
								400,000 원 희망</li>
						</ul>
						<br>
						<!-- 지도 api 넣을 부분 (임시 img) -->
						<img alt="map" src="<%=cp%>/images/img02.jpg" id="mapImg">
					</div>
				</div>

				<hr />

				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<p class="lead">튜터링 코멘터리</p>
					</div>
					<div class="col-xs-12 col-sm-9">
						<div id="wrapper cell">
							<img alt="tutor pic" src="<%=cp%>/images/img03.jpg"
								class="rounded-circle" id="profilePic"
								style="width: 50px; height: 50px;"> 아기천사 튜티장 <br> <br>
						</div>
						<p class="subcontent">javascript 를 열심히 공부하고 있습니다. 튜터링 10회 이상
							참가하였고 튜티장 경험도 있습니다.</p>

						<p class="subcontent">레벨은 초급이지만 배우고자 하는 열정이 넘치시는 분들! HTML/CSS
							기초를 배우고 싶으신 분들 환영합니다.</p>
					</div>
				</div>
				<!-- Post Content.row -->



				<hr>




			</div>

			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Search Widget -->
				<div class="card my-4" id="fixed">
					<h5 class="card-header">웹 프로그래밍 같이 시작하실 분~!!!</h5>
					<div class="card-body">
						<div class="row">
							<div class="list-unstyled mb-0" id="table">
								<div class="row-div">
									<span class="cell col1 subcontent">희망 참가비</span> <span
										class="cell col2"><h5>400,000 원</h5></span>
								</div>
								<div class="row-div">
									<span class="cell col1 subcontent">희망 일정</span> <span
										class="cell col2"><h5>최대 8주, 평일 오후</h5></span>
								</div>
							</div>
						</div>
						<input type="button" value="개설완료"
							class="btn btn-primary btn-block" onclick="location.href='done_matching'">
					</div>
				</div>
			</div>
			<!-- Sidebar Widgets Column -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->



	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>