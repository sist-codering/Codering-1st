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


<div id="contents">


	<div class="top">

		<div class="tab">
			| 이전에 참여한 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto">
			<img
				src="https://s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Cover/d034f6c1701134881ab1c650c2896801df83b857.png">
		</div>

		<!-- 튜터링 이름 -->
		<div class="TutoringName1">
			<span>코딩테스트와 실무 역량 모두 잡는 스터디 : java반</span>
		</div>

		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
				<img width="50px" height="40px"
					src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='48' height='48' viewBox='0 0 48 48'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Ccircle cx='24' cy='24' r='24' fill='%23C2E0FF'/%3E %3Cpath fill='%23FFF' d='M19 24.5h10a4 4 0 0 1 4 4v4H15v-4a4 4 0 0 1 4-4zm5-1.5a4.5 4.5 0 1 1 0-9 4.5 4.5 0 0 1 0 9z'/%3E %3C/g%3E %3C/svg%3E"
					alt="프로필 이미지">
			</div>
			<div class="TutoringName2_2">6명</div>
		</div>

		<!-- 튜터링 정보 -->
		<div class="TutoringName3">
			<div class="TutoringName3_1">시작일:2019년 5월 30일</div>
			<div class="TutoringName3_1">4주 과정</div>
			<div class="TutoringName3_1"></div>
		</div>
	</div>


	<div class="middle">
		<!-- 탭-->
		<div class="middleTab">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#home">상세정보</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#profile">튜터링게시판</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#profile">일정정보</a></li>
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#profile">후기</a></li>

			</ul>
		</div>
		<!-- 탭 END -->

		<!-- 튜터링 상세페이지 부분 -->
		<div class="TutoringContents">


			<div class="jumbotron">
				<div class="col-xs-12 col-sm-9">
					<div class="media mb-4">
						<img class="d-flex mr-3 rounded-circle"
							src="http://placehold.it/50x50" alt="">
						<!-- 댓글 프로필사진 -->
						<div class="media-body subcontent">
							<div class="mt-0">김소림</div>
							<footer class="blockquote-footer">
								<cite title="Source Title">2019-06-10 18:25 작성</cite>
								<!-- 수정 / 삭제 -->
								<span class="btn-user float-right"><a>수정</a>&nbsp;&nbsp;<a>삭제</a></span>
							</footer>
							<!-- 후기 -->
							<br>튜터님 짱짱맨! <br>튜터님 짱짱맨! <br>튜터님 짱짱맨! <br>튜터님
							짱짱맨! <br>튜터님 짱짱맨! <br>튜터님 짱짱맨! <br>튜터님 짱짱맨! <br>튜터님
							짱짱맨! <br>튜터님 짱짱맨! <br>튜터님 짱짱맨!

						</div>
					</div>
				</div>
			</div>














		</div>
		<!-- 튜터링 상세페이지 END -->
	</div>
	<!-- middle END -->





</div>

<div></div>
