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

.profileimg1 {
	margin-left: 45%;
}

.bold {
	font-size: 15pt;
	font-weight: bold;
}

.profileReviseButton {
	margin-left: 200px;
}
</style>


<div id="contents">

	<!-- 사진 -->
	<div class="profileimg1">
		<img width="100px" height="100px"
			src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='48' height='48' viewBox='0 0 48 48'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Ccircle cx='24' cy='24' r='24' fill='%23C2E0FF'/%3E %3Cpath fill='%23FFF' d='M19 24.5h10a4 4 0 0 1 4 4v4H15v-4a4 4 0 0 1 4-4zm5-1.5a4.5 4.5 0 1 1 0-9 4.5 4.5 0 0 1 0 9z'/%3E %3C/g%3E %3C/svg%3E"
			alt="프로필 이미지">
	</div>
	<br>

	<!-- 이메일 -->
	<div class="row">
		<div class="col-2">
			<span class="bold">이메일</span>
		</div>
		<div class="col-8">
			<div class="text-center">kjg2588@naver.com</div>
		</div>
	</div>
	<br>

	<!-- 닉네임 -->
	<div class="row">
		<div class="col-2">
			<span class="bold">닉네임</span>
		</div>
		<div class="col-8">
			<div class="text-center">아기천사</div>
		</div>
	</div>

	<br>

	<!-- 휴대폰 인증 -->
	<div class="text-center">
		<p style="color: purple; font-weight: bold;">휴대폰 인증 완료</p>
	</div>

	<br> <br>

	<!-- 추가정보 -->
	<span style="color: purple; font-weight: bold; font-size: 15pt;">추가정보</span>

	<br> <br>

	<!-- 언어 및 레벨 -->
	<div class="row">
		<div class="col-2">
			<span class="bold">언어 및 레벨</span>
		</div>
		<div class="col-8">
			<div class="text-center">JAVA-중급 SQL-고급 PYTHON-고급</div>
		</div>
	</div>

	<!-- 관심사 -->
	<br>
	<div class="row">
		<div class="col-2">
			<span class="bold">관심사</span>
		</div>
		<div class="col-8">
			<div class="text-center">웹 모바일 알고리즘 블록체인</div>
		</div>
	</div>

	<br> <br>

	<!-- 버튼 -->
	<div class="profileReviseButton">
		<button type="button" class="btn btn-primary btn-lg btn-block"
			style="width: 500px;">개인정보수정</button>
	</div>




</div>
