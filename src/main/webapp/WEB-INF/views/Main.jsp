<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<link type="text/css" rel="stylesheet"
	href="<%=cp %>/headerFiles/css/bootstrap.css">
<link type="text/css" rel="stylesheet"
	href="<%=cp %>headerFiles/css/mypage.css">

<!---------------------------------- Header ----------------------------------------->
<!-- Custom fonts for this template-->
<link href="<%=cp%>/headerFiles/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">


<!-- Custom styles for this template-->
<link href="<%=cp%>/headerFiles/css/sb-admin-2.min.css" rel="stylesheet">
<link href="<%=cp%>/headerFiles/css/header01.css" rel="stylesheet">

<!-- Bootstrap core JavaScript-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="<%=cp%>/headerFiles/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!--  dropdown -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<!-- Core plugin JavaScript-->
<!-- <script src="<%=cp%>/headerFiles/vendor/jquery-easing/jquery.easing.min.js"></script> -->

<!-- Custom scripts for all pages-->
<script src="<%=cp%>/headerFiles/js/sb-admin-2.min.js"></script>


<!----------------------------- End Header ----------------------------------------->


<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Main.jsp</title>

<!-- Bootstrap core CSS -->
<link href="<%=cp%>/vendor/ces/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=cp%>/css/ces/business-frontpage.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 
<script type="text/javascript">
	$(document).ready(function()
	{
		$("#Header").load("Header_Sidebar_done.jsp");
	});
</script>
 -->
</head>

<body>

	<div id="Header" style="position: relative; top: -60px;">
		<c:import url="Header_Sidebar_done.jsp"></c:import>
	</div>


	<header class="bg-primary py-5 mb-5">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12">
					<h1 class="display-4 text-white mt-5 mb-2">CODEDING</h1>


					<p class="lead mb-5 text-white-50">TTTTTTTTTTTTTTTTTTTTTTTTTTT</p>

				



				</div>
			</div>
		</div>
	</header>



	<div class="container">

		<!-- 슬라이드 배너 -->
		<div id="carouselExampleIndicators" class="carousel slide my-4"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div align="center" class="carousel-inner" role="listbox"
				style="height: 350px; padding: 40px;">

				<div class="carousel-item active">
					<img class="d-block img-fluid" src="images/banner.jpg"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="images/banner4.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="images/banner5.jpg"
						alt="Third slide">
				</div>

			</div>

			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<!-- 슬라이드 배너 End -->

		<br> <br> <br>

		<!-- /.row -->

		<!-- 인기 튜터링 리스트 -->
		<div style="padding: 0px 0px 10px 0px;">
			<span
				style="font-family: Malgun Gothic; font-weight: bold; font-size: 20px;">인기
				튜터링</span> <a href="tutor_TutoringSearchList"><span
				style="font-family: Malgun Gothic; font-weight: bold; float: right; padding: 8px 0px 0px 0px;">전체
				보기</span></a>
		</div>

		<div class="row">

			<!-- 인기 튜터링 카드  -->
			<c:forEach var="pt" items="${popularTutoring }">
				<div class="col-md-4 mb-5">
					<div class="card h-100">
						<img class="card-img-top" style="height: 232.36px;"
							src="${pt.THUMBNAIL_PATH }" alt=""> <img
							style="padding: 0px 0px -30px 0px; position: absolute; top: 180px; left: 120px; width: 100px; height: 100px; border: 3px solid white; border-radius: 50%;"
							src="${pt.PROF_PATH }" />

						<div class="card-body" style="margin-top: 15%;">
							<h4 class="card-title" style="text-align: center;">${pt.TITLE }<br>
							</h4>
							
							<p class="card-text" style="text-align: center; font-size: 17px;">${pt.REG_NAME }
								<br>${pt.selectLangLv }
								<br><span style="color: #FE642E; font-weight: bold;">${pt.ENTRY_COST }</span>
								<span style="color: gray; font-weight: bold; font-size: 13px;">
									/ ${pt.WEEK }주 </span>
							</p>
						</div>
						<div class="card-footer" style="text-align: center;">
							<a href="#" class="btn btn-primary">해당 튜터링 상세보기</a>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- 인기 튜터링 카드 End -->
		</div>
		<!-- 인기튜터링 리스트 End -->


		<!-- 튜터링 목록들 바로가기 -->
		<div
			style="position: relative; left: 35px; padding: 80px 0px 140px 0px;">
			<img src="<%=cp %>/images/20.png"
				style="padding: 0px 0px 0px 40px; width: 500px; height: 280px;">
			<span
				style="color: white; text-align: center; font-family: Noto Sans KR; font-size: 40px; position: absolute; left: 130px; top: 160px;">
				튜터가 개설한<br>${selectTutorCount }개의 튜터링
			</span> <img src="<%=cp %>/images/21.png"
				style="padding: 0px 0px 0px 50px; width: 500px; height: 280px;">
			<span
				style="color: white; text-align: center; font-family: Noto Sans KR; font-size: 40px; position: absolute; left: 640px; top: 160px;">
				튜티장이 개설한<br>${selectTuteeCount }개의 튜터링
			</span>
		</div>
		<!-- 튜터링 목록들 바로가기 End-->


		<!-- 신규 튜터링 리스트 -->
		<div style="padding: 0px 0px 10px 0px;">
			<span
				style="font-family: Malgun Gothic; font-weight: bold; font-size: 20px;">신규
				튜터링</span><a href="tutor_TutoringSearchList"><span
				style="font-family: Malgun Gothic; font-weight: bold; float: right; padding: 8px 0px 0px 0px;">전체
				보기</span></a>
		</div>


		<div class="row text-center">

			<!-- 신규 튜터링 카드  -->
			<c:forEach var="nt" items="${newTutoring }">
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="${nt.THUMBNAIL_PATH }" alt="">
						<div class="card-body">
							<h4 class="card-title">${nt.TITLE }</h4>
							<p class="card-text" style="text-align: center; font-size: 17px;">${nt.REG_NAME }
								<br>${nt.selectLangLv }
								<br><span style="color: #FE642E; font-weight: bold;">${nt.ENTRY_COST }</span>
								<span style="color: gray; font-weight: bold; font-size: 13px;">
									/ ${nt.WEEK }주 </span>
							</p>
						</div>
						<div class="card-footer">
							<a href="#" class="btn btn-primary">해당 튜터링 상세보기</a>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- 신규 튜터링 카드  End -->



		</div>
		<!-- 신규 튜터링 리스트 End -->

	</div>


	<!-- 코드링 특장점 설명 -->
	<div>
		<div style="text-align: center; padding: 120px 0px 40px 0px;">
			<p style="font-size: 60px; color: purple;">
				<strong>코드링,</strong>
			</p>
			<p style="font-size: 40px;">어떤 점이 좋나요?</p>
		</div>
	</div>


	<div style="padding: 0px 0px 200px 0px;">
		
		<!-- 코드링 특장점 설명 첫 번쨰 -->
		<div>
			<div style="float: left; padding: 10px 0px 30px 620px;">
				<img src="images/1.png" style="width: 70px; height: 70px;">
			</div>
			<div style="float: left; padding: 20px 0px 0px 20px;">
				<strong>단계별 튜터링</strong> <br> 초급~고급까지 본인의 수준에 맞는 다양한 레벨의 튜터링에
				참여할 수 있어요!
			</div>
		</div>
		<!-- 코드링 특장점 설명 첫 번째 End-->

		<div style="clear: both;"></div>

		<!-- 코드링 특장점 설명 두 번째 -->
		<div>
			<div style="float: left; padding: 10px 0px 30px 620px;">
				<img src="images/2.png" style="width: 70px; height: 70px;">
			</div>

			<div style="float: left; padding: 20px 0px 0px 20px;">
				<strong>11</strong> <br> 여기는 무엇인가
			</div>
		</div>
		<!-- 코드링 특장점 설명 두 번째 End-->


		<div style="clear: both;"></div>


		<!-- 코드링 특장점 설명 세 번째 -->
		<div>
			<div style="float: left; padding: 10px 0px 30px 620px;">
				<img src="images/3.png" style="width: 70px; height: 70px;">
			</div>

			<div style="float: left; padding: 20px 0px 0px 20px;">
				<strong>튜터링 커뮤니케이션 지원</strong> <br> 튜터링이 시작되면 해당 튜터링의 커뮤니케이션을
				코드링에서 도와드려요.
			</div>
		</div>
		<!-- 코드링 특장점 설명 세 번째 End -->


		<div style="clear: both;"></div>


		<!-- 코드링 특장점 설명 네 번째 -->
		<div>
			<div style="float: left; padding: 10px 0px 30px 620px;">
				<img src="images/4.png" style="width: 70px; height: 70px;">
			</div>

			<div style="float: left; padding: 20px 0px 0px 20px;">
				<strong>다양한 지역 및 시간대</strong> <br> 평일 오전부터 주말 저녁까지 원하는 시간대를
				찾아보세요.
			</div>
		</div>
		<!-- 코드링 특장점 설명 네 번째 End -->


		<div style="clear: both;"></div>


		<!-- 코드링 특장점 설명 다섯 번째 -->
		<div style="padding: 10px 0px 0px 0px;">
			<div style="float: left; padding: 10px 0px 30px 620px;">
				<img src="images/5.png" style="width: 70px; height: 70px;">
			</div>

			<div style="float: left; padding: 20px 0px 0px 20px;">
				<strong>튜티장으로 튜터 매칭</strong> <br> 원하는 튜터링이 없다면 본인이 직접 튜터링을 구성하여
				튜터를 초대할 수 있어요.
			</div>
		</div>
		<!-- 코드링 특장점 설명 다섯 번째 End-->

	</div>


	<!-- 코드링 곧 앱애서도 만나요 휴대폰 아이콘 Footer 영역 -->
	<footer class="py-5" style="background-color: #9B59B6; height: 400px;">
		<div class="container">
			<p class="m-0 text-white"
				style="font-size: 40px; font-weight: bold; padding: 60px 0px 0px 230px;">코드링,</p>
			<p class="m-0 text-white"
				style="font-size: 40px; font-weight: bold; padding: 20px 0px 0px 230px;">곧
				앱에서도 만나요!</p>
		</div>

		<div
			style="position: relative; top: -210px; padding: 0px 0px 0px 1050px;">
			<img src="images/cellphone.png">
		</div>
	</footer>
	<!-- 코드링 곧 앱애서도 만나요 휴대폰 아이콘 Footer 영역 End-->

	<!-- Bootstrap core JavaScript -->
	<script src="<%=cp%>/vendor/ces/jquery/jquery.min.js"></script>
	<script src="<%=cp%>/vendor/ces/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
