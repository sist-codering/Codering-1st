<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<style type="text/css">
div {
	/* border: 1px solid #ccc; */
	
}

#contents {
	/* width: 930px; */
	float: left;
}

.tab {
	text-align: right;
	font-size: 18pt;
}

.listimg {
	float: left;
	width: 200px;
	height: 100px;
	margin-right: 8px;
}

.listcontents1 {
	float: left;
}

.listcontents2 {
	float: left;
	width: 200px;
}

.listcontens1_0 {
	/* margin: 10px; */
	width: 72%;
	height: 100%;
	float: left;
}

.listcontents1_1 {
	margin-top: 18px;
	width: 100px;
	float: left;
}

.listcontents2_0 {
	margin-bottom: 30px;
}

.listname span {
	font-size: 15pt;
	font-weight: bold;
}

/* 리뷰완료버튼 */
.reviewfinished {
	display: inline-block;
	font-weight: 400;
	text-align: center;
	vertical-align: middle;
	background-color: transparent;
	border: 1px solid transparent;
	padding: 0.375rem 0.75rem;
	font-size: 0.875rem;
	line-height: 1.5;
	border-radius: 0;
	color: #593196;
	border-color: #593196;
}

/* 중도포기버튼 */
.contentsstop {
	display: inline-block;
	font-weight: 400;
	text-align: center;
	vertical-align: middle;
	background-color: transparent;
	border: 1px solid transparent;
	padding: 0.375rem 0.75rem;
	font-size: 0.875rem;
	line-height: 1.5;
	border-radius: 0;
	color: #FC3939;
	border-color: #FC3939;
}

/* 사이드바 글씨크기 */
.list-group-item {
	font-size: 15pt;
	font-weight: bold;
}

.listcontentsbutton {
	float: right;
}
</style>

<div id="contents" class="col-md-12">


	<div class="tab">
		| 이전 참여 튜터링 |
		<hr>
	</div>
	<br>
	<!-- 리스트 DIV -->
	<div class="classlists">

		<c:if test="${empty beforeList }">
		
			수강했던 튜터링이 없습니다.
		
		</c:if>

		<c:forEach var="list" items="${beforeList }">
			<!-- //한 줄// -->
			<div>
				<!-- 튜터링 사진 -->
				<div class="listimg">
					<img width="200px" height="100px" src="${list.THUMBNAIL_PATH }">
				</div>

				<!-- 튜터링 정보 -->
				<div class="listcontents">
					<!-- 튜터링 이름 -->
					<div class="listname">
						<a
							href="tutee_beforetutoringdetail?TUTORING_TUTOR_ID=${list.TUTORING_TUTOR_ID }"><span>${list.TITLE }</span></a>
					</div>

					<!-- 튜터 사진 / 참가 인원 -->
					<div class="listcontens1_0">
						<div class="listcontents1">
							<img width="50px" height="40px" src="${list.PROF_PATH }"
								style="border-radius: 100%;">
						</div>

						<div class="listcontents1_1">${list.COUNT_TUTORING }명</div>
						<!-- 후기작성버튼 -->
						<div class="listcontentsbutton">
							<c:choose>
								<c:when test="${list.REQUEST_ID == 0 && list.TARGET_ID == 1}">
									<button class="contentsstop" disabled="disabled">강퇴</button>
								</c:when>
								<c:when test="${list.REQUEST_ID == 1 }">
									<button class="contentsstop" disabled="disabled">중도포기</button>
								</c:when>
								<c:when test="${list.COUNT_REVIEW == 0 }">
									<a href="mypage_before_review?TUTORING_TUTOR_ID=${list.TUTORING_TUTOR_ID }">
										<button type="button" class="btn btn-primary">후기작성필요</button>
									</a>
								</c:when>
								<c:when test="${list.COUNT_REVIEW == 1 }">
									<button class="reviewfinished" disabled="disabled">후기작성완료</button>
								</c:when>

							</c:choose>
						</div>
					</div>
					<br>

					<!-- 튜터링 정보 -->
					<div class="listcontents2_0">
						<div class="listcontents2">시작일:${list.START_DATE }</div>
						<div class="listcontents2">${list.WEEK_PERIOD }주과정</div>
					</div>
					<br>
					<hr>
				</div>
			</div>
			<!-- //한 줄 END// -->
		</c:forEach>

	</div>
	<!-- 리스트 DIV END -->

</div>
