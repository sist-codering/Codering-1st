<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">


.process {
	font-size: 43px;
	font-weight: bold;
}

.row
{
	margin-top : 20px;
}



</style>
<script type="text/javascript">

	var timeCount = 0;
	var count = 0;

	$(function()
	{
		$(".datepicker").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					changeMonth : true,
					changeYear : true,
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					prevText : "이전달",
					nextText : "다음달",
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],

				});
		
		$("#sub").click(function()
		{
			if(timeCount==0)
			{
				alert("시간을 등록해주세요.");
				$("#time-select").focus();
				return;
			}
			if(count==0)
			{
				alert("권장언어의 레벨을 입력해주세요.");
				$("#lang-select").focus();
				return;
			}
			
			
			$("#formId").submit();
		});
		
		
		$("#add-lang").click(function()
		{	
			if(check()==1)
				return;
			
			if(count<3)
			{
					var lang = $("#lang-select option:selected").text();
					var lvl = $("#lvl-select option:selected").text();
					
					var tag = "	<div class='alert alert-dismissible alert-secondary tutorProfileButtons1' style='width:200px; display:inline-block;'>"
							  + "<button type='button' class='close' data-dismiss='alert' onclick='redCount();'>&times;</button>"
							  + "<input type='hidden' id='LANGLV_ID"+count+"' name='LANGLV_ID' value='"+$("#lang-select option:selected").val()+","+$("#lvl-select option:selected").val()+"'>"
							  +"<input type='hidden' id='LANG_ID"+count+"' value='"+$("#lang-select option:selected").val()+"'>" 
							  + lang + " " + lvl
							  + "</div>";
							  
					//text함수를 적용하여 html함수를 사용했던 같은 내용의 문자열을 표출해본다.
					$("#tag-lang").append(tag);	
				
				count = count + 1;
			}
		});
		
		$("#add-time").click(function()
		{
			
			if(timeCheck()==1)
				return;
			else if(timeCount<3)
			{
			
					var time = $("#time-select option:selected").text();
					
					var tag = "	<div class='alert alert-dismissible alert-secondary tutorProfileButtons1' style='width:190px; display:inline-block;'>"
							  + "<button type='button' class='close' data-dismiss='alert' onclick='redTimeCount();'>&times;</button>"
							  + "<input type='hidden' name='TIME_CAT_ID' id='TIME_CAT_ID"+timeCount+"' value='"+$("#time-select option:selected").val()+"'>"
							  + time
							  + "</div>";
							  
					//text함수를 적용하여 html함수를 사용했던 같은 내용의 문자열을 표출해본다.
					$("#tag-time").append(tag);	
					
					timeCount = timeCount +1;
			}
		});
		
	
	});
	
	
	function redTimeCount()
	{
		timeCount = timeCount - 1;
	}
	function timeCheck()
	{
		if(timeCount>2)
		{
			alert("최대 3개까지 등록 가능합니다.");
			return;
		}
		else if($("#TIME_CAT_ID0").val()==$("#time-select option:selected").val() ||  $("#TIME_CAT_ID1").val()==$("#time-select option:selected").val() || $("#TIME_CAT_ID2").val()==$("#time-select option:selected").val())
		{	
			alert("시간이 중복됩니다.");
			return 1;
		}
		else
			return 0;
	}
	function redCount()
	{
		count = count - 1 ;
	}
	function check()
	{
		if(count>2)
		{
			alert("최대 3개까지 등록 가능합니다.");
			return;
		}
		else if($("#LANG_ID0").val()==$("#lang-select option:selected").val() ||  $("#LANG_ID1").val()==$("#lang-select option:selected").val() || $("#LANG_ID2").val()==$("#lang-select option:selected").val())
		{	
			alert("언어가 중복됩니다.");
			return 1;
		}
		else
			return 0;
		
	}

	
	
</script>
<body>
	<div class="container">
		<div class="row flex-lg-nowrap">

			<div class="col mb-3">
				<div class="card">
					<div class="card-body">
						<div class="row" style="margin-top: 100px;">
							<div class="col-2"></div>
							<div class="col-4">
								<hr>
								<h1 class="h2">
									튜터링 개설(튜티장)
								</h1>
								<hr>
							</div>
						</div>
						<div class="e-profile">
							<div class="tab-content pt-3">
								<!-- 튜티장 개설 입력폼 -->
								<form action="matchingtutor1" method="post" id="formId">
									<div class="tab-pane active" style="margin-top:100px;">
										<!-- 제목 입력 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>제 목</label>
											</div>
											<div class="col-6">
												<div class="form-group">
													<input class="form-control" type="text" name="TUTORING_TUTEE_TITLE" id="TUTORING_TUTEE_TITLE"
														placeholder="제목을 입력하세요.">
												</div>
											</div>
										</div>
										<div class="col-2"></div>
										
										<!-- 튜터링 소개 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>튜터링 소개</label>
											</div>
											<div class="col-6 mb-3">
												<div class="form-group">
													<textarea class="form-control" rows="5"
														style="resize: none;" placeholder="내용을 입력하세요." name="INTRO" id="INTRO"></textarea>
												</div>
											</div>
										</div>
										
										<!-- 기간 -->
										<div class="row" style="">
											<div class="col-2"></div>
											<div class="col-2">
												<label>강의 횟수</label>
											</div>
											<div class="col-3">
												<div class="form-group" style="display:inline-block; width:140px;">
													<select id="" class="form-control" name="ENTIRE_PERIOD" id="ENTIRE_PERIOD">
														<%
															for (int i = 1; i <= 32; i++) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select>
												</div> 회
											</div>
										</div>
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>시 간</label>
											</div>
											<div class="col-3">
												<div class="form-group">
													<select class="custom-select" style="width:200px;" id="time-select" >
														<c:forEach var="time" items="${selectTime }">
															<option value="${time.TIME_CAT_ID }">${time.WEEDAY_END } - ${time.AM_PM }</option>
														</c:forEach>
													</select> 
												</div>
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary" id="add-time">추가</button>
											</div>
										</div>
										<div class="row">
											<div class="col-4"></div>
											<div class="col-7" id="tag-time" style="display:inline-block;">
												
												<%-- <c:forEach var="interest" items="${selectInterest }">
													<div class="alert alert-dismissible alert-secondary tutorProfileButtons1">
														<button type="button" class="close" data-dismiss="alert">&times;</button>
														${interest.INTEREST_CAT } ${interest.LEVEL_NAME }
													</div>
												</c:forEach> --%>
														
											</div>
										</div>
										
										<!-- 인원 선택 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>인 원</label>
											</div>

											<div class="col-3">
												<div class="form-group">
													<span>최소</span> <select id="MIN_NUM" name="MIN_NUM" class="form-control"
														style="display: inline-block; width: 100px;">
														<%
															for (int i = 1; i <= 16; i++) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select> <span>명</span>
												</div>
											</div>

											<div class="col-3">
												<div class="form-group">
													<span>최대</span> <select id="MAX_NUM" name="MAX_NUM" class="form-control"
														style="display: inline-block; width: 100px;">
														<%
															for (int i = 1; i <= 16; i++) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select> <span>명</span>

												</div>
											</div>

										</div>
										
										<!-- 지역 선택 -->
										
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>지 역</label>
											</div>
											<div class="col-3">
												<div class="form-gruop">
													<select class="form-control" style="margin-bottom: 30px;" name="REG_ID" id="REG_ID">
														<c:forEach var="reg" items="${selectRegion }">
															<option value="${reg.REG_ID }">${reg.REG_NAME }</option>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
										
										<!-- 언어 및 권장 레벨 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>언어 및 권장레벨</label>
											</div>
											<div class="col-3">
												<div class="form-group">
													<select class="custom-select" id="lang-select">
														<c:forEach var="interest" items="${selectInterest }">
															<option value="${interest.INTEREST_ID }">${interest.INTEREST_CAT}</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="col-2">
												<div class="form-group">
													<select class="custom-select" id="lvl-select">
														<c:forEach var="lv" items="${selectLevel }">
															<option value="${lv.LEVEL_ID }">${lv.LEVEL_NAME }</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary" id="add-lang">추가</button>
											</div>
										</div>
										<div class="row">
											<div class="col-4"></div>
											<div class="col-7" id="tag-lang" style="display:inline-block;">
												
												<%-- <c:forEach var="interest" items="${selectInterest }">
													<div class="alert alert-dismissible alert-secondary tutorProfileButtons1">
														<button type="button" class="close" data-dismiss="alert">&times;</button>
														${interest.INTEREST_CAT } ${interest.LEVEL_NAME }
													</div>
												</c:forEach> --%>
														
											</div>
										</div>
										
										
										<!-- 희망 참가비 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>희망 참가비</label>
											</div>
											<div class="col-3">
												<div class="form-group" style="display: inline-block;">
													<input type="number" class="form-control" placeholder="금액 입력"
														style="width: 200px;" name="ENTRY_COST" id="ENTRY_COST">
												</div>
												<span>원</span>
											</div>
											<div class="col-3">
											</div>
										</div>
										
										<!-- 튜티장소개 및 대상 튜티 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>튜티장 소개 및</label> <label>대상 튜티</label>
											</div>
											<div class="col-6 mb-3">
												<div class="form-group">
													<textarea class="form-control" rows="5"
														style="resize: none;" placeholder="내용을 입력하세요." name="TCOMMENT" id="TCOMMENT"></textarea>
												</div>
											</div>
										</div>
										<!--  모집 마감 날짜 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>모집 마감날짜</label>
											</div>
											<div class="col-6">
												<div class="form-group">
													<input class="datepicker form-control" type="text"
														placeholder="모집 마감 날짜 선택" style="text-align: center;" id="DEADLINE" name="DEADLINE">
												</div>
											</div>
										</div>
										<div class="row" style="margin-top:50px;">
											<div class="col-4"></div>
											<div class="col-2">
												<button type="button" class="btn btn-default">이전으로</button>
											</div>
											<div class="col-2"></div>
											<div class="col-2">
												<button id="sub" type="button" class="btn btn-primary">미리보기</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
	
</body>
