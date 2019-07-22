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
	width: 100%;
	height: 90%;
	float: left;
}

.listcontents1_1 {
	margin-top: 18px;
	width: 500px;;
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

.listname {
	width: 85%;
	float: left;
}

.reserveCount {
	float: left;
}

.listcontents2_1 {
	float: right;
}
</style>

<div id="contents" class="col-md-12">


	<div>

		<div class="tab">
			| 예약 튜터링 |
			<hr>
		</div>
		<br>
		<!-- 리스트 DIV -->
		<div class="classlists">

			<c:if test="${empty reserveList }">
		
			현재 예약한 튜터링이 없습니다.
		
			</c:if>

			<c:forEach var="list" items="${reserveList }">
				<!-- //한 줄// -->
				<!-- 튜터링 정보 -->
				<div class="listcontents">
					<!-- 튜터링 이름 -->
					<div class="listname">
						<a href="tutee_ReservationTutoringDetail?TUTORING_TUTEE_ID=${list.TUTORING_TUTEE_ID }"><span>${list.TUTORING_TITLE }</span></a>
					</div>
					<!-- 예약인원 -->
					<div class="reserveCount">현재 예약 인원: ${list.COUNT_RESERV }명</div>

					<!-- 튜터 사진 / 참가 인원 -->
					<div class="listcontens1_0">
						<div class="listcontents1">
							
						</div>


						<div class="listcontents1_1">예상 수강 신청 인원 : ${list.MIN_NUM } ~ ${list.MAX_NUM }명</div>

						<!-- 후기 작성 버튼 -->
						<div class="listcontentsbutton">
							<c:choose>
								<c:when test="${list.OPENTUTORING == 0}"> 
									<a href="mypage_reservecancel?RESERVATION_ID=${list.RESERVATION_ID }"><button type="button" class="btn btn-primary" id="reservecancel" >예약취소</button></a>
								</c:when>
								<c:when test="${list.OPENTUTORING == 1 }">
									<button type="button" class="btn btn-info">신청하기</button>
									<a href="mypage_reservecancel?RESERVATION_ID=${list.RESERVATION_ID }"><button type="button" class="btn btn-primary" id="reservecancel">예약취소</button></a>
								</c:when>
							</c:choose>
							
							
						</div>
					</div>
					<br>

					<!-- 튜터링 정보 -->
					<div class="listcontents2_0">
						<div class="listcontents2">${list.WEEK_PERIOD }주 과정</div>
						<div class="listcontents2_1">
						<c:choose>
							<c:when test="${list.OPENTUTORING == 0 && list.DEADLINE<0 }">
								매칭 실패시 폐쇄까지 남은 기한 D${list.DEADLINE }
							</c:when>
							<c:when test="${list.OPENTUTORING == 1 }">
								튜터링 모집 마감까지 남은 기한 D${list.TUTORINGOPENDATE }
							</c:when>
						</c:choose>
						</div>
						<br>
					</div>
					<br>
					<br>
					<hr>
				</div>
				<!-- //한 줄 END// -->

			</c:forEach>
		</div>
		<!-- 리스트 DIV END -->
	</div>
</div>
