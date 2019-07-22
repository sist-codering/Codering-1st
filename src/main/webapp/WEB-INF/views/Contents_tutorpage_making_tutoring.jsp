<%@ page contentType="text/html; charset=UTF-8"%>




<style type="text/css">


.process {
	font-size: 43px;
	font-weight: bold;
}
</style>


<script type="text/javascript">
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

	});
</script>
</head>
<body>

	
	<div class="container">
		<div class="row flex-lg-nowrap">

			<div class="col mb-3">
				<div class="card">
					<div class="card-body">
					<div class="row" style="margin-top: 50px; text-align: center;">
							<div class="col-2"></div>
							<div class="col-4">
								<hr>
								<h1 class="h2">
									튜터링 개설
								</h1>
								<hr>
							</div>
						</div>
						<div class="e-profile">
							<div class="tab-content pt-3">
								<div class="tab-pane active">
									<!-- 튜터링개설 (튜터) 입력폼 -->
									<form>
										<!-- 튜터링 제목 -->
										<div class="row" style="margin-top:100px;">
											<div class="col-2"></div>
											<div class="col-2">
												<label>제 목</label>
											</div>
											<div class="col-6">
												<div class="form-group">
													<input class="form-control" type="text" name="name"
														placeholder="제목을 입력하세요.">
												</div>
											</div>
										</div>
										<!-- 썸네일 등록 -->
										<div class="row" style="text-align: center;">
											<div class="col-4"></div>
											<div class="col-6 col-sm-auto mb-3">
												<div class="mx-auto" style="width: 400px;">
													<div
														class="d-flex justify-content-center align-items-center rounded"
														style="height: 140px; background-color: rgb(233, 236, 239);">
														<span
															style="color: rgb(166, 168, 170); font: bold 8pt Arial;">5MB이하(png.jpeg)</span>
													</div>
												</div>
											</div>
											<div
												class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
												<div class="text-center text-sm-left mb-2 mb-sm-0">
													<div class="mt-2">
														<button class="btn btn-primary" type="button">
															<i class="fa fa-fw fa-camera"></i> <span>등록</span>
														</button>
													</div>
												</div>
											</div>
											<div class="col-2"></div>
										</div>
										<!-- 튜터링 내용 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>내 용</label>
											</div>
											<div class="col-6 mb-3">
												<div class="form-group">
													<textarea class="form-control" rows="5"
														placeholder="내용을 입력하세요."></textarea>
												</div>
											</div>
										</div>
										<!-- 시작날짜 종료날짜 선택 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>시작/종료날짜</label>
											</div>
											<div class="col-3">
												<div class="form-group">
													<input type="text" class="datepicker form-control"
														placeholder="시작 날짜 선택" readonly="readonly">
												</div>
											</div>
											<div class="col-3">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="종료 날짜"
														readonly="readonly" disabled="disabled">
												</div>
											</div>
										</div>
										<!-- 요일 선택 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>요 일</label>
											</div>
											<div class="custom-controls-stacked px-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="mon" > <label
														class="custom-control-label" for="mon">월</label>
												</div>

												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="tue" > <label
														class="custom-control-label" for="tue">화</label>
												</div>
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="wed" > <label
														class="custom-control-label" for="wed">수</label>
												</div>
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="thr" > <label
														class="custom-control-label" for="thr">목</label>
												</div>
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="fri" > <label
														class="custom-control-label" for="fri">금</label>
												</div>
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="sat" > <label
														class="custom-control-label" for="sat">토</label>
												</div>
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="sun" > <label
														class="custom-control-label" for="sun">일</label>
												</div>
											</div>
										</div>
										
										<!-- 시간입력 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>시 간</label>
											</div>
											<div class="col-3">
												<div class="form-group">
													<select class="form-control"
														style="width: 150px; display: inline-block">
														<%
															for (int i = 1; i <= 24; i++) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select><span> 시</span>
												</div>
											</div>
											<div class="col-3">
												<div class="form-group">
													<select class="form-control" id="hour"
														style="width: 150px; display: inline-block">
														<%
															for (int i = 10; i <= 59; i = i + 10) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select><span> 분 부터</span>
												</div>
											</div>

										</div>
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2"></div>
											<div class="col-3">
												<div class="form-group">
													<select class="form-control"
														style="width: 150px; display: inline-block;">
														<%
															for (int i = 1; i <= 12; i++) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select> <span>시</span>
												</div>
											</div>
											<div class="col-3">
												<div class="form-group">
													<select class="form-control" id="hour"
														style="width: 150px; display: inline-block;">
														<%
															for (int i = 10; i <= 59; i = i + 10) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select> <span>분 까지</span>
												</div>
											</div>
										</div>
										
										<!-- 강의 횟수 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>강 의 횟 수</label>
											</div>
											<div class="col-5">
												<span>총 </span>
												<div class="form-group" style="display: inline-block">
													<input class="form-control" type="text"
														style="width: 130px;">
												</div>
												<span> 회</span>
											</div>
										</div>
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>인 원</label>
											</div>

											<div class="col-3">
												<div class="form-group">
													<span>최소</span><select id="min" class="form-control"
														style="display: inline-block; width: 100px;">
														<%
															for (int i = 1; i <= 16; i++) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select><span>명</span>
												</div>
											</div>

											<div class="col-3">
												<div class="form-group">
													<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;최대</span><select
														id="max" class="form-control"
														style="display: inline-block; width: 100px;">
														<%
															for (int i = 1; i <= 16; i++) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select><span>명</span>

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
													<select class="form-control" style="margin-bottom: 30px;">
														<option>홍대입구역</option>
														<option>종로3가역</option>
														<option>강남역</option>
														<option>신촌역</option>
														<option>사당역</option>
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
													<select class="form-control">
														<option>JAVA</option>
														<option>오라클</option>
														<option>자바스크립트</option>
														<option>MySQL</option>
														<option>파이썬</option>
													</select>
												</div>
											</div>
											<div class="col-2">
												<div class="form-group">
													<select class="form-control">
														<option>초급</option>
														<option>중급</option>
														<option>고급</option>
													</select>
												</div>
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary">추가</button>
											</div>
										</div>
										<!-- 강의 참가비 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>참 가 비</label>
											</div>
											<div class="col-3">
												<div class="form-group" style="display:inline-block;">
													<input type="text" class="form-control" placeholder="금액 입력" style="width:200px;" >
												</div>
												<span>원</span>
											</div>
											<!-- 시급 나타내줄곳 -->
											<div class="col-3">
												<p>※최소인원 기준 시급:6000원</p>
												<p> 최대인원 기준 시급:7000원</p>
											</div>
										</div>
										<!-- 자주 묻는 질문 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												자주 묻는 질문
											</div>
											<div class="col-0.5">1.</div>
											<div class="col-4">
												<div class="form-group">
													<label for="question">Q.</label><input type="text" class="form-control" id="question"style="width:300px; display:inline-block;" placeholder="질문을 입력해주세요.">			
												</div>
												
												<div class="form-group" style="display:inline-block;">
													<label for="answer">A .</label><input type="text" class="form-control" id="answer"style="width:300px; display:inline-block" placeholder="답변을 입력해주세요.">			
												</div>
											</div>
											<div class="col-1">
													<button type="button" class="btn btn-primary">불러오기</button>
												</div>
											</div>
										<div class="row">
											<div class="col-4"></div>
											<div class="col-0.5">2.</div>
											<div class="col-4">
												<div class="form-group">
													<label for="question">Q.</label><input type="text" class="form-control" id="question"style="width:300px; display:inline-block;" placeholder="질문을 입력해주세요.">			
												</div>
												
												<div class="form-group" style="display:inline-block;">
													<label for="answer">A .</label><input type="text" class="form-control" id="answer"style="width:300px; display:inline-block" placeholder="답변을 입력해주세요.">			
												</div>
											</div>
											<div class="col-1">
												<div class="form-group" style="padding-top: 20px;">
													<button type="button"  style="width:25px; display:inline-block" id="plus">-</button>
													<button type="button"  style="width:25px; display:inline-block" id="minus">+</button>
												</div>
 											</div>
										</div>
										<!-- 버튼 -->
										<div class="row" style="margin-top:50px;">
											<div class="col-4"></div>
											<div class="col-2">
												<button type="button" class="btn btn-default">이전으로</button>
											</div>
											<div class="col-2"></div>
											<div class="col-2">
												<button type="button" class="btn btn-primary">미리보기</button>
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
	</div>
