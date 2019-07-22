<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String[] week = {"월", "화", "수", "목", "금", "토", "일"};
%>
<%
	String[] weekId = {"mon", "tue", "wed", "thr", "fri", "sat", "sun"};
%>
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

.row{margin-top:20px;}

.where {
	display: block;
	margin: 25px 15px;
	font-size: 11px;
	color: #000;
	text-decoration: none;
	font-family: verdana;
	font-style: italic;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
	display: inline-block;
	padding: .5em .75em;
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}

/* imaged preview */
.filebox .upload-display {
	margin-bottom: 5px;
}

@media ( min-width : 768px) {
	.filebox .upload-display {
		display: inline-block;
		margin-right: 5px;
		margin-bottom: 0;
	}
}

.filebox .upload-thumb-wrap {
	display: inline-block;
	width: 54px;
	padding: 2px;
	vertical-align: middle;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

.filebox .upload-display img {
	display: block;
	max-width: 100%;
	width: 100% \9;
	height: auto;
}

.filebox.bs3-primary label {
	color: #fff;
	background-color: #337ab7;
	border-color: #2e6da4;
}

#regCount {
	color: green;
}


</style>
<script type="text/javascript">
		
		
		num = 0;
		count = 0;
		langCount = 0;
		$(function()
		{
			

			
			regCount();
			
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
		
			$("#ENTIRE_PERIOD").keyup(function()
			{
				$("#ung").css("color","white");
				
				if(($("#ENTIRE_PERIOD").val()==0&&event.keyCode != 8) || ($("#ENTIRE_PERIOD").val()==""&&event.keyCode != 8)){
					alert("강의횟수를 1회이상으로 입력해주세요.");
					$("#ENTIRE_PERIOD").val().empty();
					return;
				};
			})	
		
			$("#ENTRY_COST").keyup(function()
			{
				
				if($("#ENTIRE_PERIOD").val()=="")
				{
					$("#ung").css("color","red");
					$("#ung").html("총 강의횟수를 입력해주세요.");
					$("#ENTIRE_PERIOD").focus();
					return;
				}
				
				
				
				ungency();
				
				
			});
			
			$("#add-lang").click(function()
			{
				
				if(check()==1)
					return;
				
				if(langCount<3)
				{
						var lang = $("#lang-select option:selected").text();
						var lvl = $("#lvl-select option:selected").text();
						
						var tag = "	<div class='alert alert-dismissible alert-secondary tutorProfileButtons1' style='width:200px; display:inline-block;'>"
								  + "<button type='button' class='close' data-dismiss='alert'>&times;</button>"
								  + "<input type='hidden' name='LANGLV_ID' value='"+$("#lang-select option:selected").val()+","+$("#lvl-select option:selected").val()+"'>"
								  +"<input type='hidden' id='LANG_ID"+langCount+"' value='"+$("#lang-select option:selected").val()+"'>" 
								  + lang + " " + lvl
								  + "</div>";
						
						langCount = langCount + 1;
						
						//text함수를 적용하여 html함수를 사용했던 같은 내용의 문자열을 표출해본다.
						$("#tag-lang").append(tag);	
				}
				
			});
					
			
					
			$("#sub").click(function()
			{
				
				var startTime = zero($("#START_TIME1").val(),2) + ":" + zero($("#START_TIME2").val(),2);
				var endTime = zero($("#END_TIME1").val(),2) + ":" + zero($("#END_TIME2").val(),2);
				
				var period = $("#ENTIRE_PERIOD").val();
				
				var totalTime= ($("#ENTIRE_PERIOD").val() * (($("#END_TIME1").val()+$("#END_TIME2").val()/60)-($("#START_TIME1").val()+($("#START_TIME2").val()/60))));
				
				$("#totalTime").val(totalTime);
				
				
				$("#START_TIME").val(startTime); 
				$("#END_TIME").val(endTime);
				
				$("#THUMBNAIL_PATH").val($("#profileImg").attr("src"));
				
				
				$("#formId").submit();
				
			});
		
			$("#REG_ID").change(function()
			{
				regCount();
			});
		
			
			
			$("#addQnA").click(function()
			{
			
			if(count>=2)
			{
				count = 1;
			}
			else if(num<2 && count<2)
			{
				num = num + 1;
				count = count + 1;
				
			var addQnA =   "<div class='row' id='addQnAContent"+count+"'>"
						  +"		<div class='col-4'></div>"
						  +"		<div class='form-group col' style='display: inline-block;'>"
						  +"			<div style='display:inline-block'>"
						  +"				<div class='form-group' style='display: inline-block;'>"
						  +"					<label for='question'>Q. </label><input type='text'"
						  +"					class='form-control' id='question' name='question'"
						  +"					style='width: 400px; display: inline-block;'"
						  +"					placeholder='질문을 입력해주세요.'>"
						  +"				</div>"
						  +"			</div>"
						  +"			<div style='display:inline-block;'>"
						  +"				<div class='form-group' style='display: inline-block;'>"
						  +"					<label for='answer'>A. </label><input type='text'"
						  +"						class='form-control' id='answer' name='answer'"
						  +"						style='width: 400px; display: inline-block'"
						  +"						placeholder='답변을 입력해주세요.'>"
						  +"				</div>"
						  +"				<button type='button' class='btn btn-primary' id='delQnA"+count+"'onclick='remove("+count+")' value='"+count+"'>삭제하기</button>"
						  +"			</div>";
						  +"		</div>"
						  +"	</div>"
						 
						
						$("#addQnAContent").append(addQnA);	
						}
					  else
					  {
							alert("자주묻는 질문은 3개까지 등록 가능합니다.");
							return;
				      }
			
				
			});
			
			
			
			function regCount()
			{
				$.post("ajax_reg",{REG_ID : $("#REG_ID").val()}, function(data){
					
					
					var print = "※관심지역인 튜티 : " + data + " 명";
					
					$("#regCount").html(print);
				});
			};
			
					
		
			function ungency()
			{
							
			var minCost = ($("#ENTRY_COST").val() * $("#MIN_NUM").val()) / ($("#ENTIRE_PERIOD").val() * (($("#END_TIME1").val()+$("#END_TIME2").val()/60)-($("#START_TIME1").val()+($("#START_TIME2").val()/60))));
			
			var maxCost = ($("#ENTRY_COST").val() * $("#MAX_NUM").val()) / ($("#ENTIRE_PERIOD").val() * (($("#END_TIME1").val()+$("#END_TIME2").val()/60)-($("#START_TIME1").val()+($("#START_TIME2").val()/60))));
			
					$("#ung").css("color","green");
					$("#ung").html("최저인원 시급" + (minCost*10).toFixed(0) + "원" + "<br>" + "최대인원 시급" + (maxCost*10).toFixed(0) +"원" );
					return;
					
			};
			
			
		});
		
			function remove(data)
			{
				
				num = num - 1;
				
				if(data==1)
				{
					$("#addQnAContent"+data).remove("#addQnAContent1");
					count = 0;
				}
				else 
				{
					$("#addQnAContent"+data).remove("#addQnAContent2");
					count = 1;
				}
			}
			
			function zero(date, num) {
				 var zero = "";
				 date = date.toString();
				
				 if (date.length < num) {
				  for (i = 0; i < num - date.length; i++)
				   zero += "0";
				 }
				 return zero + date;
			}
		
			function langCount()
			{
				langCount = langCount - 1 ;
			}
			function check()
			{
				if(langCount>2)
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
<script>
	$(document).ready(function()
	{
		$("#profileImg").click(function()
		{
			$("#input_img").click();
		})
	})

	var sel_file;

	$(document).ready(function()
	{
		$("#input_img").on("change", fileChange);
	});

	function fileChange(e)
	{
		e.preventDefault();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f)
		{
			if (!f.type.match("image.*"))
			{
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_file = f;

			var reader = new FileReader();
			/*  reader.onload = function(e) 
			 {
			 	//console.log(e.target.result);
			     $("#profileImg").attr("src", e.target.result);
			 	$("#profileImg").css("height", "100px")
			 } */
			reader.readAsDataURL(f);
			 
			 var file = files[0]
				console.log(file)
				var formData = new FormData();

				formData.append("file", file);

				$.ajax(
				{
					url : 'uploadAjax',
					data : formData,
					dataType : 'text',
					processData : false,
					contentType : false,
					type : 'POST',
					success : function(data)
					{

						console.log(data);
						$("#profileImg").attr("src", "images" + data);
						$("#profileImg").css("height", "140px");
						$("#profileImg").css("width", "400px");

					}
				})
		});

		

		function checkImageType(fileName)
		{
			var pattern = /jpg$|gif$|png$|jpeg$/i;
			return fileName.match(pattern);
		}

		function getOriginalName(fileName)
		{
			if (checkImageType(fileName))
			{
				return;
			}

			var idx = fileName.indexOf("_") + 1;
			return fileName.substr(idx);

		}

		function getImageLink(fileName)
		{

			if (!checkImageType(fileName))
			{
				return;
			}
			var front = fileName.substr(0, 12);
			var end = fileName.substr(14);
			
			return front + end;

		}

	}
</script>
</head>
<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">


	<div class="container">
		<div class="row flex-lg-nowrap">

			<div class="col mb-3">
				<div class="card">
					<div class="card-body">
						<div class="row" style="margin-top: 50px; text-align: center;">
							<div class="col-2"></div>
							<div class="col-4">
								<hr>
								<h1 class="h2">튜터링 개설(튜터)</h1>
								<hr>
							</div>
						</div>
						<div class="e-profile">
							<div class="tab-content pt-3">
								<div class="tab-pane active">
									<!-- 튜터링개설 (튜터) 입력폼 -->
									<form action="previewtutoring_tutor" method="post" id="formId">
									<input type="hidden" id="THUMBNAIL_PATH" name="THUMBNAIL_PATH">
										<!-- 튜터링 제목 -->
										<div class="row" style="margin-top: 100px;">
											<div class="col-2"></div>
											<div class="col-2">
												<label>제 목</label>
											</div>
											<div class="col-6">
												<div class="form-group">
													<input class="form-control" type="text" name="TITLE"
														id="TITLE" placeholder="제목을 입력하세요.">
												</div>
											</div>
										</div>
										<!-- 썸네일 등록 -->
										<div class="row" style="text-align: center;">
											<div class="col-4"></div>
											<div class="col-6 col-sm-auto mb-3">
												<div class="mx-auto" style="width: 400px;">
													<div
														class="d-flex justify-content-center align-items-center"
														style="height: 140px; background-color: rgb(233, 236, 239);">
														<img alt="" src="<%=cp%>/images/sample1.jpg" id="profileImg"
													width="400px" height="140px">
													</div>
												</div>
											</div>
											<div
												class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
												<div class="text-center text-sm-left mb-2 mb-sm-0">
													<div class="mt-2">
														<div class="filebox bs3-primary preview-image">
															<label for="input_img">등록</label> <input type="file"
																id="input_img" class="upload-hidden" >
														</div>
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
													<textarea class="form-control" rows="5" id="INTRO"
														style="resize: none;" name="INTRO" placeholder="내용을 입력하세요."></textarea>
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
														placeholder="시작 날짜 선택" readonly="readonly" id="STRAT_DATE"
														name="START_DATE">
												</div>
											</div>
											<div class="col-3">
												<div class="form-group">
													<!-- <input type="text" class="form-control" placeholder="종료 날짜"
														readonly="readonly" disabled="disabled"> -->
												</div>
											</div>
										</div>
										<!-- 요일 선택 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>요 일</label>
											</div>
											<%
												for (int i = 0; i < week.length; i++) {
											%>
											<div class="custom-controls-stacked px-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input"
														id="<%=weekId[i]%>" value="<%=i+1%>" name="WEEK_NAME_ID">
													<label class="custom-control-label" for="<%=weekId[i]%>"><%=week[i]%></label>
												</div>
											</div>
											<%
												}
											%>
										</div>

										<!-- 시간입력 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>시 간</label>
											</div>
											<div class="col-3">
												<div class="form-group">
													<select class="form-control time"
														style="width: 150px; display: inline-block"
														id="START_TIME1">
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
													<select class="form-control time"
														style="width: 150px; display: inline-block"
														id="START_TIME2">
														<%
															for (int i = 0; i <= 59; i = i + 10) {
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
													<select class="form-control time"
														style="width: 150px; display: inline-block;"
														id="END_TIME1">
														<%
															for (int i = 2; i <= 24; i++) {
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
													<select class="form-control time"
														style="width: 150px; display: inline-block;"
														id="END_TIME2">
														<%
															for (int i = 0; i <= 59; i = i + 10) {
														%>
														<option value="<%=i%>"><%=i%></option>
														<%
															}
														%>
													</select> <span>분 까지</span>
												</div>
											</div>
										</div>
										<input type="hidden" name="START_TIME" id="START_TIME"
											value=""> <input type="hidden" name="END_TIME"
											id="END_TIME" value="">
										<input type="hidden" name="totalTime" id="totalTime" value="">

										<!-- 강의 횟수 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>강 의 횟 수</label>
											</div>
											<div class="col-5">
												<span>총 </span>
												<div class="form-group" style="display: inline-block">
													<input class="form-control" type="number"
														id="ENTIRE_PERIOD" name="ENTIRE_PERIOD"
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
													<span>최소</span><select class="form-control"
														style="display: inline-block; width: 100px;"
														name="MIN_NUM" id="MIN_NUM">
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
														id="MAX_NUM" name="MAX_NUM" class="form-control"
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
													<select class="form-control" style="margin-bottom: 30px;"
														id="REG_ID" name="REG_ID">
														<c:forEach var="reg" items="${selectRegion }">
															<option value="${reg.REG_ID }">${reg.REG_NAME }</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="col">
												<span id="regCount"></span>
											</div>
										</div>
										<!-- 언어 및 권장 레벨 -->
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
											<div class="col-7" id="tag-lang"
												style="display: inline-block;"></div>
										</div>
										<!-- 강의 참가비 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>참 가 비</label>
											</div>
											<div class="col-3">
												<div class="form-group" style="display: inline-block;">
													<input type="number" class="form-control"
														placeholder="금액 입력" style="width: 200px;" id="ENTRY_COST"
														name="ENTRY_COST">
												</div>
												<span>원</span>
											</div>
											<!-- 시급 나타내줄곳 -->
											<div class="col-3">
												<p id="ung"></p>
											</div>
										</div>
										<!-- 자주 묻는 질문 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">자주 묻는 질문</div>
											<div class="col">
												<div style="display:inline-block">
												<div class="form-group" style="display: inline-block;">
													<label for="question">Q. </label><input type="text"
														class="form-control" id="question" name="question"
														style="width: 400px; display: inline-block;"
														placeholder="질문을 입력해주세요.">
												</div>
													<button type="button" class="btn btn-primary">불러오기</button>
												</div>				
												
												<div style="display:inline-block;">
													<div class="form-group" style="display: inline-block;">
													<label for="answer">A. </label><input type="text"
														class="form-control" id="answer" name="answer"
														style="width: 400px; display: inline-block"
														placeholder="답변을 입력해주세요.">
													</div>
													<button type="button" class="btn btn-primary" id="addQnA">추가하기</button>
												</div>
											</div>
											
												
											
										</div>
										<div id="addQnAContent">
											
										</div>
										<!-- 버튼 -->
										<div class="row" style="margin-top: 50px;">
											<div class="col-4"></div>
											<div class="col-2">
												<button type="button" class="btn btn-default" onclick="location.href='/tutor_TutoringSearchList'">이전으로</button>
											</div>
											<div class="col-2"></div>
											<div class="col-2">
												<button type="button" class="btn btn-primary" id="sub">미리보기</button>
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
	  					

	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>