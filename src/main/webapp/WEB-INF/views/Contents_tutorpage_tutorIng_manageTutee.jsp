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
	width: 100%;
}

.TutoringContents {
	float: left;
	width: 100%;
	height: 100%;
}

.manage-item {
	display: flex;
	align-items: center;
}

.managebutton {
	margin-left: 10px;
}
</style>

<script type="text/javascript">
 
$(function()
		{
			$(".deleteBtn").click(function()
			{
				//테스트
				//alert("삭제버튼 클릭");

				if (confirm("튜터링을 정말 삭제하시겠습니까?"))
				{
					$(location).attr("href", "tutor_tutorpage_tutoring_drop?TUTORING_TUTOR_ID="+${tuteemanage[0].TUTORING_TUTOR_ID });
				}		 
	 					 
			});
						
			
		});
		
	
	function eval_tutor(num, name) {
		//console.log('num:'+num);
		//console.log('name:'+name);
		
		var detail_num = num;
		var detail_name = name;
		
		$('#detail_num').val(detail_num);
		$('.detail_name').html(detail_name);


	};
	
	function tutordrop(enroll_id, tutoring_id)
	{
		if (confirm(" 정말 튜티를 강퇴시키겠습니까? ") == true)
		{ 
			location.href="tutor_tutorpage_tutoring_tuteemanage_tutordrop?ENROLL_ID="+enroll_id+"&TUTORING_TUTOR_ID="+tutoring_id;
		}else{
		 return;
		}
		
	}
	
	function tuteeDrop(enroll_id, tutoring_id)
	{
		if (confirm(" 튜티의 중도포기를 수락하시겠습니까? ") == true)
		{ 
			location.href="tutor_tutorpage_tutoring_tuteemanage_tuteedrop?ENROLL_ID="+enroll_id+"&TUTORING_TUTOR_ID="+tutoring_id;
		}else{
		 return;
		}
		
	}

</script>

<div id="contents" class="col-xs-12 col-sm-12 col-md-8">


	<div class="top">

		<div class="tab">
			| 진행 중 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto">
			<img src="${tuteemanage[0].THUMBNAIL_PATH }">
		</div>

		<!-- 튜터링 이름 -->
		<div class="TutoringName1">
			<span>${tuteemanage[0].TITLE }</span>
		</div>

		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
				<img width="50px" height="40px" src="${tutorprof.PROF_PATH }"
					style="border-radius: 100%;">
			</div>
			<div class="TutoringName2_2">${tuteemanage[0].COUNT_TUTORING}명</div>
		</div>

		<!-- 튜터링 정보 -->
		<div class="TutoringName3">
			<div class="TutoringName3_1">시작일:${tuteemanage[0].START_DATE }</div>
			<div class="TutoringName3_1">${tuteemanage[0].WEEK_PERIOD }주과정</div>
			<div class="TutoringName3_1"></div>
		</div>

		<div class="middle">
			<!-- 탭-->
			<div class="middleTab">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutoring_detail?TUTORING_TUTOR_ID=${tuteemanage[0].TUTORING_TUTOR_ID}">상세정보</a></li>
					<li class="nav-item"><a class="nav-link" href="#">튜터링게시판</a></li>
					<li class="nav-item"><a class="nav-link"
						href="tutor_tutorpage_tutoring_schedule?TUTORING_TUTOR_ID=${tuteemanage[0].TUTORING_TUTOR_ID}">일정정보</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="tutor_tutorpage_tutoring_tuteemanage?TUTORING_TUTOR_ID=${tuteemanage[0].TUTORING_TUTOR_ID}">튜티관리</a></li>
					<li style="margin-left: 50%;"><button type="button"
							class="btn btn-outline-danger btn-sm deleteBtn">폐강하기</button></li>
				</ul>
			</div>
			<!-- 탭 END -->

			<!-- 튜터링 상세페이지 부분 -->
			<div class="TutoringContents">

				<div class="jumbotron">

					<c:if test="${empty tuteemanage }">
						아직 튜터링을 신청한 튜티가 없습니다.
					</c:if>

					<c:forEach var="tutee" items="${tuteemanage }">
						<!-- //한 줄 시작//  -->
						<div class="row">
							<!-- 튜티사진 -->
							<div class="col-1">
								<img width="80px" height="80px" src="${tutee.PROF_PATH }"
									style="border-radius: 100%;">
							</div>
							<!-- 튜티이름 -->
							<div class="col-3 manage-item">${tutee.NICKNAME }</div>
							<!-- 튜티별점 -->
							<div class="col-3 manage-item" style="color: purple">

								<c:choose>
									<c:when test="${tutee.AVG_GRADE < 1}">☆☆☆☆☆</c:when>
									<c:when test="${tutee.AVG_GRADE < 2}">★☆☆☆☆</c:when>
									<c:when test="${tutee.AVG_GRADE < 3}">★★☆☆☆</c:when>
									<c:when test="${tutee.AVG_GRADE < 4}">★★★☆☆</c:when>
									<c:when test="${tutee.AVG_GRADE < 5}">★★★★☆</c:when>
									<c:when test="${tutee.AVG_GRADE < 6}">★★★★★</c:when>
									<c:otherwise>평가 없음</c:otherwise>
								</c:choose>

							</div>

							<!-- 튜티평가 -->
							<div class="col-4 manage-item">
								<c:choose>
									<c:when test="${empty tutee.GRADE }">
										<button type="button" class="btn btn-primary managebutton"
											onClick="eval_tutor(${tutee.ENROLL_ID},'${tutee.NICKNAME }')"
											data-toggle="modal" data-target="#myModal">튜티평가</button>
									</c:when>
									<c:when test="${!empty tutee.GRADE }">
										<button type="button"
											class="btn btn-primary disabled managebutton">평가완료</button>
									</c:when>
								</c:choose>


								<!-- 모달팝업  -->

								<div class="modal" id="myModal">
									<div class="modal-dialog">
										<div class="modal-content">

											<!-- Modal Header -->

											<div class="modal-header">
												<h4 class="modal-title">
													<!-- 닉네임, 튜티평가 -->
													<span class="detail_name"></span> 튜티평가
												</h4>
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>

											<!-- Modal body -->
											<div class="modal-body">
												<form action="tutor_tutorpage_tutoring_tuteemanage_tuteereview"
													method="post">
													<div class="m-sm-4">
														<div class="row" style="margin-bottom: 50px;">
															<select class="form-control"
																style="width: 300px; margin-left: 13%;" name="GRADE">
																<option selected="selected" value="5">★★★★★</option>
																<option value="4">★★★★☆</option>
																<option value="3">★★★☆☆</option>
																<option value="2">★★☆☆☆</option>
																<option value="1">★☆☆☆☆</option>
															</select>
														</div>
													</div>
											</div>

											<!-- form안에 학생의 ENROLL_ID 담기 -->
											<input type="hidden" id="detail_num" name="ENROLL_ID">
											<input type="hidden" name="TUTORING_TUTOR_ID" value="${tuteemanage[0].TUTORING_TUTOR_ID }">
											<!-- Modal footer -->
											<div class="modal-footer">
												<div class="text-center">
													<button type="submit" class="btn btn-primary"
														style="margin-right: 10px;">등록하기</button>
													<button type="button" class="btn btn-danger"
														data-dismiss="modal">닫기</button>
												</div>

											</div>

										</div>
									</div>
								</div>
								</form>

								<!-- 모달팝업 END -->

								<c:choose>
									<c:when
										test="${ (tutee.REQUEST_ID == 1 && empty tutee.TARGET_ID ) }">
										<button type="button" class="btn btn-warning managebutton"
											onclick="tuteeDrop(${tutee.ENROLL_ID}, ${tuteemanage[0].TUTORING_TUTOR_ID })">포기승인</button>
									</c:when>
									<c:when
										test="${ (tutee.REQUEST_ID == 1 && tutee.TARGET_ID == 1) }">
										<button type="button"
											class="btn btn-warning disabled managebutton">포기완료</button>
									</c:when>
									<c:otherwise>
										<button type="button"
											class="btn btn-outline-warning disabled managebutton">중도포기
										</button>
									</c:otherwise>
								</c:choose>


								<c:choose>
									<c:when test="${tutee.REQUEST_ID ==0 && tutee.TARGET_ID ==1 }">
										<button type="button"
											class="btn btn-danger disabled managebutton">강퇴완료</button>
									</c:when>
									<c:when
										test="${ (tutee.REQUEST_ID == 1 && tutee.TARGET_ID == 1) || (tutee.REQUEST_ID == 1 && empty tutee.TARGET_ID ) }">
										<button type="button"
											class="btn btn-danger managebutton disabled"
											style="width: 25%;">강퇴</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-danger managebutton"
											style="width: 25%;" onclick="tutordrop(${tutee.ENROLL_ID},${tuteemanage[0].TUTORING_TUTOR_ID })">강퇴</button>
									</c:otherwise>
								</c:choose>

							</div>
						</div>
						<br>
						<!-- //한 줄 끝//  -->
					</c:forEach>







				</div>

			</div>
		</div>





	</div>
</div>

<div></div>