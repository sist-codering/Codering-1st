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
	/* width: 50%; */
	float: left;
}

.tab {
	text-align: left;
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

/* 사이드바 글씨크기 */
.list-group-item {
	font-size: 15pt;
	font-weight: bold;
}

.listcontentsbutton {
	float: right;
}
</style>

<div id="contents" class="col-xs-12 col-sm-12 col-md-8">


	<div>

		<div class="tab">
			| 이전 튜터링 |
			<hr>
		</div>
		<br>
		<!-- 리스트 DIV -->
		<div class="classlists">

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
							<a href="tutor_tutorpage_tutorbefore_detail?TUTORING_TUTOR_ID=${list.TUTORING_TUTOR_ID}" ><span>${list.TITLE }</span></a>
						</div>

						<!-- 튜터 사진 / 참가 인원 -->
						<div class="listcontens1_0">
							<div class="listcontents1">
								<img width="50px" height="40px" src="${list.PROF_PATH }" style="border-radius: 100%;">
							</div>

							<div class="listcontents1_1">${list.COUNT_TUTORING }명</div>

							<c:choose>
								<c:when test="${list.COUNT_TUTORING == 0 }">
									<div class="listcontentsbutton">
										<button type="button" class="btn btn-primary">튜티평가완료</button>
									</div>	
								</c:when>
								<c:when test="${list.COUNT_REVIEW == list.COUNT_TUTORING}">
								<div class="listcontentsbutton">
										<button type="button" class="btn btn-primary">튜티평가완료</button>
									</div>
								</c:when>
								<c:otherwise>
								<div class="listcontentsbutton">
										<a href="tutor_tutorpage_tutorbefore_tuteemanage?TUTORING_TUTOR_ID=${list.TUTORING_TUTOR_ID}"><button type="button" class="btn btn-warning">튜티평가필요</button></a>
									</div>
								</c:otherwise>
							</c:choose>
							<!-- 튜티평가 버튼 -->
							
						</div>
						<br>

						<!-- 튜터링 정보 -->
						<div class="listcontents2_0">
							<div class="listcontents2">시작일:${list.START_DATE }</div>
							<div class="listcontents2">${list.WEEK_PERIOD }주과정</div>
						</div>
						<br>
						<hr>
						<br>
					</div>
				</div>
			</c:forEach>
			<!-- //한 줄 END// -->


		</div>
		<!-- 리스트 DIV END-->

	</div>
</div>
