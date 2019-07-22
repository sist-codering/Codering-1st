<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>


<style type="text/css">
#contents {
	float: left;
	height: 100%;
	width: 80%;
}

.bold {
	font-size: 15pt;
	font-weight: bold;
}

.tab1 {
	text-align: left;
	font-size: 18pt;
	font-weight: bold;
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

.tutorprofile {
	float: left;
	margin-top: 20px;
	margin-left: 40px;
	width: 80%;
}

.tutorname {
	font-size: 18pt;
	font-weight: bold;
}
</style>





<div id="contents">

	<div class="tab1">
		| 프로필 |
		<hr>
	</div>

	<!-- 사진 -->
	<div class="profilephoto">
		<div class="profilephoto1">
			<img width="100px" height="100px"
				src="${info.PROF_PATH }"
				alt="프로필 이미지 넣을 곳">
		</div>


		<!-- 프로필 상세내용 -->
		<div class="tutorprofile">

			<!-- 튜터이름 -->
			<div class="tutorname">
				<h3>${info.TUTOR_NAME }</h3>
			</div>

			<!-- 튜터 자기소개 -->
			<div class="row1">${info.INTRO }</div>

			<br>

			<!-- 주요 언어 -->
			<div class="row1 bold">주요 언어</div>
			<div class="row1">
				<c:forEach var="interest" items="${interest }">
					${interest.INTEREST_CAT } - ${interest.LEVEL_NAME} <br>
				</c:forEach>
			</div>
			
			<br>
			
			<!-- 경력 -->
			<div class="row1 bold">경력</div>
			<div class="row1">
				<c:forEach var="career" items="${career }">
					${career.CAREER_START } ~ ${career.CAREER_END } :: ${career.CAREER_CONTENT } <br>
				</c:forEach>
			
			</div>
			
			<br>
			
			<!-- 카테고리 -->
			<div class="row1 bold">카테고리</div>
			<div class="row1">
				<c:forEach var="category" items="${category }">
					${category.INTEREST_CAT } <br>
				</c:forEach>			
			</div>

			<br />

			<!-- 블로그/영상주소 -->
			<div class="row1">
				<c:forEach var="link" items="${link }">
					${link.LINK_ADDR } <br>
				</c:forEach>

			</div>



		</div>
	</div>
</div>
<br>




