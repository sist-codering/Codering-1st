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
	margin: 10px;
	width: 600px;
	float: left;
}

.listcontents2_0 {
	margin-bottom: 30px;
}

.listname span {
	font-size: 15pt;
	font-weight: bold;
}
</style>


<div id="contents" class="col-md-12">



	<div class="tab">
		| 찜한 튜터링 |
		<hr>
	</div>
	<br>
	<!-- 리스트 DIV -->
	<div class="classlists">

		<c:if test="${empty pickList }">
		
			현재 찜한 튜터링이 없습니다.
		
		</c:if>

		<c:forEach var="list" items="${pickList }">
			<!-- //한 줄// -->
			<div>
				<!-- 튜터링 사진 -->
				<div class="listimg">
					<img width="200px" height="100px"
						src="${list.THUMBNAIL_PATH }">
				</div>

				<!-- 튜터링 정보 -->
				<div class="listcontents">
					<!-- 튜터링 이름 -->
					<div class="listname">
						<span>${list.TITLE }</span>
					</div>

					<!-- 튜터 사진 / 참가 인원 -->
					<div class="listcontens1_0">
						<div class="listcontents1">
							<img width="50px" height="40px"
								src="${list.PROF_PATH }" style="border-radius: 100%;">
						</div>
						<br>
						<div class="listcontents1">${list.MIN_NUM }~${list.MAX_NUM }명</div>
					</div>
					<br>

					<!-- 튜터링 정보 -->
					<div class="listcontents2_0">
						<div class="listcontents2">시작일:${list.START_DATE }</div>
						<div class="listcontents2">${list.WEEK_PERIOD }주 과정</div>
					</div>
					<br> <br>
					<hr>
				</div>

			</div>
			<!-- //한 줄 END// -->

		</c:forEach>
	</div>
	<!-- 리스트 DIV END -->
</div>

