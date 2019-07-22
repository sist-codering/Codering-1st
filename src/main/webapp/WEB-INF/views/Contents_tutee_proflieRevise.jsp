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
	margin-left: 10px;
}

.bold {
	font-size: 15pt;
	font-weight: bold;
}

.tab {
	text-align: right;
	font-size: 18pt;
}

.profilephoto {
	margin: 10px;
	width: 100%;
	/* float: left; */
	height: 100%;
}

.profilephoto1 {
	float: left;
}

.profilephoto2 {
	float: left;
	margin-top: 20px;
	margin-left: 40px;
	width: 100px;
}

.profilebuttons1 {
	float: left;
	width: 130px;
	margin-right: 10px;
}

.profilebuttons2 {
	float: left;
	width: 120px;
	margin-right: 10px;
}
</style>


<div id="contents">

	<div class="tab">
		| 정보 수정 |
		<hr>
	</div>


	<!-- 사진 -->
	<div class="row">
		<div class="profilephoto">
			<div class="profilephoto1">
				<img width="100px" height="100px"
					src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='48' height='48' viewBox='0 0 48 48'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Ccircle cx='24' cy='24' r='24' fill='%23C2E0FF'/%3E %3Cpath fill='%23FFF' d='M19 24.5h10a4 4 0 0 1 4 4v4H15v-4a4 4 0 0 1 4-4zm5-1.5a4.5 4.5 0 1 1 0-9 4.5 4.5 0 0 1 0 9z'/%3E %3C/g%3E %3C/svg%3E"
					alt="프로필 이미지">
			</div>
			<div class="profilephoto2">
				<div class="profilephoto2_1"
					style="font-weight: bold; font-size: 13pt;">프로필 사진</div>
				<div class="profilephoto2_2">
					<button type="button" class="btn btn-outline-primary btn-sm">변경</button>
				</div>
			</div>
		</div>
	</div>
	<br>

	<!-- 이메일 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">등록된 이메일</span>
		</div>
		<div class="col-8">kjg2588@naver.com</div>
	</div>
	<br>

	<!-- 닉네임 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">닉네임</span>
		</div>
		<div class="col-8">
			<input type="text" class="form-control" value="아기천사" id="nickname"
				style="width: 300px">
		</div>
	</div>
	<br>

	<!-- 비밀번호 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">비밀번호</span>
		</div>
		<div class="col-8">
			<button type="button" class="btn btn-primary">변경하기</button>
		</div>
	</div>
	<br>

	<hr>

	<!-- 추가정보 -->
	<span
		style="color: purple; font-weight: bold; font-size: 15pt; margin-bottom: 100px;">추가정보</span>
	<br> <br>

	<!-- 휴대폰정보 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">휴대폰번호</span>
		</div>
		<div class="col-8">
			<button type="button" class="btn btn-primary">번호인증</button>
		</div>
	</div>
	<br>

	<!-- 레벨설정 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">레벨설정</span>
		</div>
		<div class="col-8">
			<select class="custom-select" style="width: 200px">
				<option value="1" selected="selected">Java</option>
				<option value="2">Oracle</option>
				<option value="3">MySQL</option>
				<option value="4">JavaScript</option>
				<option value="5">PYTHON</option>
			</select>
			<button type="button" class="btn btn-primary">자가진단테스트</button>
		</div>
	</div>
	<br>

	<!-- 레벨 설정한 것 라벨 (추후 수정가능)-->
	<div class="row">
		<div class="col-3"></div>
		<div class="col-9">
			<div class="alert alert-dismissible alert-secondary profilebuttons1">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				JAVA-초급
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons1">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				Oracle-중급
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons1">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				MySQL-초급
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons1">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				JavaScript-고급
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons1">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				PYTHON-고급
			</div>
		</div>
	</div>



	<br>

	<!-- 관심지역 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">관심지역</span>
		</div>
		<div class="col-8">
			<select class="custom-select" style="width: 200px">
				<option value="1" selected="selected">홍대</option>
				<option value="2">신촌</option>
				<option value="3">종로</option>
				<option value="4">사당</option>
				<option value="5">강남</option>
			</select>
		</div>
	</div>
	<br>

	<!-- 관심지역 라벨 -->
	<div class="row">
		<div class="col-3"></div>
		<div class="col-9">
			<div class="alert alert-dismissible alert-secondary profilebuttons2">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				홍대
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons2">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				신촌
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons2">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				종로
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons2">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				사당
			</div>
			<div class="alert alert-dismissible alert-secondary profilebuttons2">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				강남
			</div>
		</div>
	</div>

	<!-- 카테고리 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">카테고리</span>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck1" checked="checked"> <label
					class="custom-control-label" for="interestCheck1">웹</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck2" checked="checked"> <label
					class="custom-control-label" for="interestCheck2">모바일</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck3" checked="checked"> <label
					class="custom-control-label" for="interestCheck3">블록체인</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck4" checked="checked"> <label
					class="custom-control-label" for="interestCheck4">자료구조</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck5" checked="checked"> <label
					class="custom-control-label" for="interestCheck5">알고리즘</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck6" checked="checked"> <label
					class="custom-control-label" for="interestCheck6">게임개발</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck7" checked="checked"> <label
					class="custom-control-label" for="interestCheck7">언어기초</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck8" checked="checked"> <label
					class="custom-control-label" for="interestCheck8">최신기술</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input"
					id="interestCheck9" checked="checked"> <label
					class="custom-control-label" for="interestCheck9">디자인</label>
			</div>
		</div>
	</div>
	<br> <br>

	<!-- 하단 버튼 -->
	<button type="button" class="btn btn-secondary btn-lg">회원탈퇴</button>
	<button type="button" class="btn btn-primary btn-lg float-right">저장하기</button>




</div>
