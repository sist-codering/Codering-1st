<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!-- 입력/수정 할 때 위치정보 빼고 입력되는것 확인했음!!! -->

<style type="text/css">
#contents {
	/* width: 50%; */
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

.boardContents {
	float: left;
	width: 100%;
	height: 100%;
}

.TutoringBoardPaging {
	float: left;
	margin-left: 40%;
}

.TutoringBoardButton {
	float: right;
}

.middletab {
	width: 100%;
	height: 100%;
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
				$(location).attr("href", "tutor_tutorpage_tutoring_drop?TUTORING_TUTOR_ID="+${detail[0].TUTORING_TUTOR_ID });
			}		 
						 
		});
	});
	
	/* 에러떠도 실행됨 ↑ 왜 자꾸 빨간불 뜨는지 모르겠네 */	
	
	$.datepicker.setDefaults(
	{

		dateFormat : 'yy-mm-dd',
		changeMonth : true,
		changeYear : true,
		dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
		prevText : "이전달",
		nextText : "다음달",
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],

	});

	$(function()
	{
		$("#datepicker1").datepicker();
		$("#datepicker2").datepicker();
	});
		
	function schSubmit()
	{
		
		// 날짜 가져오기
		var str = $('#datepicker1').val();
		
		// 시간과 분 가져오기
		str += ' '+$('#hour').val()+':'+$('#min').val();
			
		//console.log(str);
		
		// hidden SCH_DATE에 날짜 시간 분 담기
		document.getElementById("SCH_DATE").value = str;
		
		/* 
		console.log(str);
		console.log($('#SCH_TAKE').val());
		console.log($('#TUTORING_TUTOR_ID').val());
		console.log($('#SCH_DATE').val());
		 */
		
		
		document.frm1.submit();
	}
	
	
	function updateSchFrm(num, date, id) 
	{

		var sch_take = num;
		var sch_date = date;
		var sch_id = id;
		
		
		// hidden 에 SCH_ID 담기
		$('#SCH_ID').val(sch_id);
		
	 	// 수정 클릭시 클릭한 회의 sch_take 출력
	 	$('#detail_schtake').html(sch_take);
		
	 	// 시간 데이터 띄어쓰기로 자르기
		var dateSplit = sch_date.split(' ');
		
		var date = dateSplit[0];
		var time = dateSplit[1];
		
		// 남은 시간데이터 :로 자르기
		var timeSplit = time.split(':');
		
		var hour = timeSplit[0];
		var min = timeSplit[1];
		
		// 시간데이터 value값으로 출력해주기
		document.getElementById("datepicker2").value = date;
		document.getElementById("updatehour").value = hour;
		document.getElementById("updatemin").value = min;
		

	};
	
	
	function updateschSubmit()
	{
		
		// 날짜 가져오기
		var str = $('#datepicker2').val();
		
		// 시간과 분 가져오기
		str += ' '+$('#updatehour').val()+':'+$('#updatemin').val();
		
		// hidden SCH_DATE에 날짜 시간 분 담기
		document.getElementById("SCH_DATE2").value = str;
		
		//$("#frm2").submit();
		//document.frm2.submit();
	}
	
	
</script>


<div id="contents" class="col-xs-12 col-sm-12 col-md-8">


	<div class="top">

		<div class="tab">
			| 진행중 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto">
			<img src="${detail[0].THUMBNAIL_PATH }">
		</div>

		<!-- 튜터링 이름 -->
		<div class="TutoringName1">
			<span>${detail[0].TITLE }</span>
		</div>

		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
				<img width="50px" height="40px" src="${tutorprof.PROF_PATH }"
					style="border-radius: 100%;">
			</div>
			<div class="TutoringName2_2">${detail[0].COUNT_TUTORING }명</div>
		</div>

		<!-- 튜터링 정보 -->
		<div class="TutoringName3">
			<div class="TutoringName3_1">시작일:${detail[0].START_DATE }</div>
			<div class="TutoringName3_1">${detail[0].WEEK_PERIOD }주과정</div>
			<div class="TutoringName3_1"></div>
		</div>
	</div>


	<div class="middle">
		<!-- 탭-->
		<div class="middleTab">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link"
					href="tutor_tutorpage_tutoring_detail?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">상세정보</a></li>
				<li class="nav-item"><a class="nav-link" href="#">튜터링게시판</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="tutor_tutorpage_tutoring_schedule?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">일정정보</a></li>
				<li class="nav-item"><a class="nav-link"
					href="tutor_tutorpage_tutoring_tuteemanage?TUTORING_TUTOR_ID=${detail[0].TUTORING_TUTOR_ID}">튜티관리</a></li>
				<li style="margin-left: 50%;"><button type="button"
						class="btn btn-outline-danger btn-sm deleteBtn">폐강하기</button></li>
			</ul>
		</div>
		<!-- 탭 END -->

		<!-- 튜터링 상세페이지 부분 -->
		<div class="TutoringContents">

			<!-- 모달 버튼 -->
			<button type="button"
				class="btn btn-primary btn-lg btn-block newschedule"
				data-toggle="modal" data-target="#myModal" style="width: 100%">새
				일정정보 입력하기</button>
			<br>

			<!-- 모달팝업  -->

			<div class="modal" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">새 일정정보 입력</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- 모달팝업 내용 -->
						<form action="tutor_ing_schedule_insert" method="post" name="frm1">
							<div class="modal-body">

								<div class="m-sm-4">


									<div class="text-center" style="margin-bottom: 50px;">
										<h1 class="h5">${fn:length(schedule)+1}회차일정정보</h1>
									</div>
									<div class="row">
										<div class="col-1"></div>
										<div class="col-2">
											<label>일자</label>
										</div>
										<div class="col-8">
											<div class="form-group">
												<input type="text" id="datepicker1" placeholder="수업 날짜"
													readonly="readonly">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-1"></div>
										<div class="col-2">
											<label>시간</label>
										</div>
										<div class="col-4">
											<div class="form-group">
												<select class="form-control" id="hour"
													style="width: 100px; display: inline-block" id="hour">
													<%
														for (int i = 1; i <= 24; i++)
														{
															String j = "";

															if (i < 10)
															{
																j = '0' + Integer.toString(i);

															} else
															{
																j = Integer.toString(i);
															}
													%>
													<option value="<%=j%>"><%=j%></option>
													<%
														}
													%>
												</select><span> 시</span>
											</div>
										</div>
										<div class="col-4">
											<div class="form-group">
												<select class="form-control" id="min"
													style="width: 100px; display: inline-block">
													<%
														for (int i = 0; i <= 59; i = i + 10)
														{
															String j = "";

															if (i < 10)
															{
																j = '0' + Integer.toString(i);

															} else
															{
																j = Integer.toString(i);
															}
													%>
													<option value="<%=j%>"><%=j%></option>
													<%
														}
													%>
												</select><span> 분</span>
											</div>
										</div>
									</div>
									<div class="row" style="margin-bottom: 30px;">
										<div class="col-1"></div>
										<div class="col-2">
											<label>위치</label>
										</div>
										<div class="col-5">
											<div class="form-group">
												<input type="text" class="form-control"
													placeholder="검색후 자동입력" readonly="readonly">
											</div>
										</div>
										<div class="col-3">
											<button type="button" class="btn btn-primary">검색</button>
										</div>
									</div>
								</div>

							</div>

							<!-- /////form안에 튜터링 정보 담기//// -->
							<!-- 회차수 -->
							<input type="hidden" id="SCH_TAKE" name="SCH_TAKE"
								value="${fn:length(schedule)+1}">
							<!-- 튜터링ID -->
							<input type="hidden" name="TUTORING_TUTOR_ID" value="${detail[0].TUTORING_TUTOR_ID}">
							<!-- 튜터링 날짜/시간 -->
							<input type="hidden" id="SCH_DATE" name="SCH_DATE">
							<!-- Modal footer -->
							<div class="modal-footer">
								<div class="text-center">
									<button type="button" class="btn btn-primary"
										style="margin-right: 10px;" onclick="schSubmit()">등록하기</button>
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">닫기</button>
								</div>

							</div>
						</form>
					</div>
				</div>
			</div>


			<!-- 모달팝업 END -->

			<!-- 일정정보 출력 -->

			<c:forEach var="sc" items="${schedule }">
				<div class="card border-primary mb-3" style="max-width: 100%;">
					<div class="card-header">
						<span style="font-size: 19pt;">${sc.SCH_DATE }</span>
						<div class="card-text" style="float: right">
							<span style="color: blue; cursor: pointer;" data-toggle="modal"
								data-target="#myModal2"
								onClick="updateSchFrm(${sc.SCH_TAKE},'${sc.SCH_DATE }',${sc.SCH_ID })">수정</span>
							<!-- foreach문이 돌고있지만 모달팝업안으로 정보가 전송되지 않으므로 자바스크립트를 이용해서 정보를 전달해줍니다. -->






							<!-- 수정 모달팝업  -->
							<form action="tutor_ing_schedule_update" method="post" name="frm2">
								<div class="modal" id="myModal2">
									<div class="modal-dialog">
										<div class="modal-content">

											<!-- Modal Header -->
											<div class="modal-header">
												<h4 class="modal-title">일정정보 수정</h4>
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>

											<!-- 모달팝업 내용 -->

											<div class="modal-body">

												<div class="m-sm-4">


													<div class="text-center" style="margin-bottom: 50px;">
														<h1 class="h5">
															<span id="detail_schtake"></span>회차 일정정보
														</h1>
													</div>
													<div class="row">
														<div class="col-1"></div>
														<div class="col-2">
															<label>일자</label>
														</div>
														<div class="col-8">
															<div class="form-group">
																<input type="text" id="datepicker2" readonly="readonly">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-1"></div>
														<div class="col-2">
															<label>시간</label>
														</div>
														<div class="col-4">
															<div class="form-group">
																<select class="form-control" id="updatehour"
																	style="width: 100px; display: inline-block">
																	<%
																		for (int i = 1; i <= 24; i++)
																			{
																				String j = "";

																				if (i < 10)
																				{
																					j = '0' + Integer.toString(i);

																				} else
																				{
																					j = Integer.toString(i);
																				}
																	%>
																	<option value="<%=j%>"><%=j%></option>
																	<%
																		}
																	%>
																</select><span> 시</span>
															</div>
														</div>
														<div class="col-4">
															<div class="form-group">
																<select class="form-control" id="updatemin"
																	style="width: 100px; display: inline-block">
																	<%
																		/* 시간 출력시 10분 이하는 0*로 출력될 수 있게 처리 */
																			for (int i = 00; i <= 59; i = i + 10)
																			{
																				String j = "";

																				if (i < 10)
																				{
																					j = '0' + Integer.toString(i);

																				} else
																				{
																					j = Integer.toString(i);
																				}
																	%>
																	<option value="<%=j%>"><%=j%></option>
																	<%
																		}
																	%>
																</select><span> 분</span>
															</div>
														</div>
													</div>
													<div class="row" style="margin-bottom: 30px;">
														<div class="col-1"></div>
														<div class="col-2">
															<label>위치</label>
														</div>
														<div class="col-5">
															<div class="form-group">
																<input type="text" class="form-control"
																	placeholder="검색후 자동입력" readonly="readonly">
															</div>
														</div>
														<div class="col-3">
															<button type="button" class="btn btn-primary">검색</button>
														</div>
													</div>
												</div>

											</div>

											<!-- /////form안에 튜터링 정보 담기//// -->
											<!-- 튜터링 날짜/시간 -->
											<input type="hidden" id="SCH_DATE2" name="SCH_DATE">
											<!-- 일정정보ID -->
											<input type="hidden" id="SCH_ID" name="SCH_ID">
											<!-- 튜터링ID -->
											<input type="hidden" name="TUTORING_TUTOR_ID" value="${detail[0].TUTORING_TUTOR_ID}">
											<!-- Modal footer -->
											<div class="modal-footer">
												<div class="text-center">
													<button type="submit" class="btn btn-primary"
														style="margin-right: 10px;" onclick="updateschSubmit()">등록하기</button>
													<button type="button" class="btn btn-danger"
														data-dismiss="modal">닫기</button>
												</div>

											</div>
										</div>
									</div>
								</div>
							</form>

							<!-- 모달팝업 END -->











						</div>
					</div>

					<div class="card-body">
						<h4 class="card-title">${sc.SCH_TAKE }회차튜터링</h4>
						<h4 class="card-title">${sc.SCH_LOCATION }</h4>
						<p class="card-text" style="float: right">지도보기</p>
					</div>
				</div>
				<!-- 일정정보 END -->
			</c:forEach>
		</div>

	</div>





</div>

