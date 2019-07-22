<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">


<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">
.process {
	font-size: 43px;
	font-weight: bold;
}

.row {
	margin: 50px;
}

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

/* div {
	border: 1px solid #ccc;
} */
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
<script>
	$(document).ready(function()
	{
		$("#profileImg").click(function()
		{
			$("#input_img").click();
		})
	})

	var sel_file;
	
	$(document).ready(function(){
	    $("#input_img").on("change", fileChange);
	});
	
	function fileChange(e) 
	{
		e.preventDefault();
	
	
		var files = e.target.files;
	    var filesArr = Array.prototype.slice.call(files);
	
	    filesArr.forEach(function(f) 
	    {
	        if(!f.type.match("image.*")) 
	        {
	            alert("확장자는 이미지 확장자만 가능합니다.");
	            return;
	        }
	
	        sel_file = f;
	
	        var reader = new FileReader();
	       
	        reader.readAsDataURL(f);
	        
	        var file = files[0]
		    console.log(file)
		    var formData = new FormData();
		
		    formData.append("file", file);
		
			$.ajax({
			  url: 'uploadAjax',
			  data: formData,
			  dataType:'text',
			  processData: false,
			  contentType: false,
			  type: 'POST',
			  success: function(data){
				  
				console.log(data);
				$("#profileImg").attr("src","images"+ data);
			      	$("#profileImg").css("height", "100px");
				alert("프로필 이미지가 변경 되었습니다.");
			
			  }
			});
	    });	
	}
	
	function checkImageType(fileName)
	{
		var pattern = /jpg$|gif$|png$|jpeg$/i;
		return fileName.match(pattern);
	}
	
	
	function getOriginalName(fileName)
	{
		if(checkImageType(fileName))
		{
			return;
		}
	
		var idx = fileName.indexOf("_") + 1 ;
		return fileName.substr(idx);
	
	}
	
	
	function getImageLink(fileName)
	{	
		if(!checkImageType(fileName))
		{
			return;
		}
		var front = fileName.substr(0,12);
		var end = fileName.substr(14);
	
		return front + end;	
	}
</script>

<script type="text/javascript">

	var count = 1;

	$(document).ready(function()
	{
		$("#add-lang").click(function()
        {	
			if(count >= 3)
			{
			}
			else
			{
				var lang = $("#lang-select option:selected").text();
				var lvl = $("#lvl-select option:selected").text();
				
				var tag = "";
					
				tag += 	"<div class='alert alert-dismissible alert-secondary tutorProfileButtons1' style='width:180px; display:inline-block; padding:12px 30px 12px 20px; margin:0 10px 0 0;'>";
				tag +=  "	<button type='button' class='close' data-dismiss='alert'>&times;</button>";
				tag +=  "	<input type='hidden' name='LANGCAT_ID' value='"+ $("#lang-select option:selected").val() +"'>";
				tag +=  "   <input type='hidden' name='LANGLV_ID' value='" + $("#lvl-select option:selected").val() +"'>"; 
			    tag +=      lang + " " + lvl;
				tag +=  "</div>";
				        
				//text함수를 적용하여 html함수를 사용했던 같은 내용의 문자열을 표출해본다.
				$("#tag-lang").append(tag);   
			}
			
        });
		
	});



</script>

<script type="text/javascript">
	
	$(document).ready(function()
	{
		$("#submitBotton").click(function()
		{
			$("#PROF_PATH").val($("#profileImg").attr("src"));
			
			$("#submitForm").submit();
		});
	});

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
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">
								<hr>
								<div class="text-center">
									<h1 class="h2">튜터 신청</h1>
								</div>
								<hr>
							</div>
						</div>
						<div class="e-profile">
							<div class="tab-content pt-3">
								<form action="tutor_asking_done" method="post" id="submitForm">
								<input type="hidden" id="PROF_PATH" name="PROF_PATH">
									<div class="tab-pane active">

										<!-- 튜터 사진 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">

												<img alt="" src="<%=cp%>/images/default_face.jpg" id="profileImg"
													width="100pt" style="border-radius: 50px;">
											</div>
											<div class="col-1"></div>
											<div class="col">
												<div class="filebox bs3-primary preview-image">
													 <label for="input_img">사진등록</label>
													<input type="file" id="input_img" class="upload-hidden">
													<br>※5MB이하의 파일을 업로드해주세요.
												</div>

											</div>

											<div class="col-2"></div>
										</div>
										<!-- 튜터 이름 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>이름</label>
											</div>
											<div class="col-1"></div>
											<div class="col-4">
												<input type="text" class="form-control" id="TUTOR_NAME" name="TUTOR_NAME">
											</div>
										</div>
										<!-- 튜터 전화번호 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>전화번호</label>
											</div>
											<div class="col-1"></div>
											<div class="col-4">
												<input type="text" class="form-control" id="TELEPHONE" name="TELEPHONE">
											</div>
										</div>
										<!-- 언어 및 권장레벨 -->
										<div class="row">
											<div class="col-2"></div>
											<div class="col-2">
												<label>언어 및<br> 권장레벨</label>
											</div>
											<div class="col-1"></div>
											<div class="col-3">
												<div class="form-group">
													<select class="custom-select" id="lang-select">
														<option value="1">JAVA</option>
														<option value="2">JavaScript</option>
														<option value="3">Python</option>
														<option value="4">ORACLE</option>
														<option value="5">MySQL</option>
													</select>
												</div>
											</div>
											<div class="col-2">
												<div class="form-group">
													<select class="custom-select" id="lvl-select">
														<option value="1">초급</option>
														<option value="2">중급</option>
														<option value="3">고급</option>
													</select>
												</div>
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary" id="add-lang">추가</button>
											</div>
										</div>
										 <div class="row">
                                 			<div class="col-3"></div>
                                 				<div class="col-9 text-center" id="tag-lang" style="display: inline-block;"></div>
                             			    </div>
										<!-- 튜터 경력 -->
										<div class="row" style="margin-bottom: 10px;">
											<div class="col-2"></div>
											<div class="col-2">
												<label>경력</label>
											</div>
											<div class="col-1"></div>
											<div class="col-2">
												<div class="form-group">
													<input type="text" class="datepicker form-control"
														placeholder="시작 날짜" readonly="readonly" name="startDate">
												</div>
											</div>
											<div class="col-1">
												<div class="text-center">
													<label>~</label>
												</div>
											</div>
											<div class="col-2">
												<div class="form-group">
													<input type="text" class="datepicker form-control"
														placeholder="종료 날짜" readonly="readonly" name="endDate">
												</div>
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary">삭제</button>
											</div>
										</div>
										<div class="row" style="margin-top: 0px; margin-bottom: 10px;">
											<div class="col-5"></div>
											<div class="col-5">
												<div class="form-group">
													<input type="text" class="form-control" value="강원도감자캐기" name="carrer">
												</div>
											</div>
										</div>
										<div class="row" style="margin-bottom: 10px; margin-top: 0px;">
											<div class="col-5"></div>
											<div class="col-2">
												<div class="form-group">
													<input type="text" class="datepicker form-control"
														placeholder="시작 날짜" readonly="readonly" name="startDate">
												</div>
											</div>
											<div class="col-1">
												<div class="text-center">
													<label>~</label>
												</div>
											</div>
											<div class="col-2">
												<div class="form-group">
													<input type="text" class="datepicker form-control"
														placeholder="종료 날짜" readonly="readonly" name="endDate">
												</div>
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary">추가</button>
											</div>
										</div>
										<div class="row" style="margin-top: 0px;">
											<div class="col-5"></div>
											<div class="col-5">
												<div class="form-group">
													<input type="text" class="form-control" value="쌍용강북교육센터" name="carrer">
												</div>
											</div>
										</div>
										<!-- 관심사 카테고리 -->
										<div class="row" style="margin-bottom: 10px;">
											<div class="col-2"></div>
											<div class="col-2">
												<label>카테고리</label>
											</div>
											<div class="col-1"></div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="1" name="chbox" value="6">
													<label class="custom-control-label" for="1">웹</label>
												</div>
											</div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="2" name="chbox" value="7">
													<label class="custom-control-label" for="2">모바일</label>
												</div>
											</div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="3" name="chbox" value="8">
													<label class="custom-control-label" for="3">블록체인</label>
												</div>
											</div>
										</div>
										<div class="row" style="margin-bottom: 0px; margin-top: 0px;">
											<div class="col-5"></div>

											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="4" name="chbox" value="9">
													<label class="custom-control-label" for="4">자료구조</label>
												</div>
											</div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="5" name="chbox" value="10">
													<label class="custom-control-label" for="5">알고리즘</label>
												</div>
											</div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="6" name="chbox" value="11">
													<label class="custom-control-label" for="6">게임개발</label>
												</div>
											</div>
										</div>
										<div class="row" style="margin-top: 20px;">
											<div class="col-5"></div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="7" name="chbox" value="12">
													<label class="custom-control-label" for="7">언어기초</label>
												</div>
											</div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="8" name="chbox" value="13">
													<label class="custom-control-label" for="8">최신기술</label>
												</div>
											</div>
											<div class="col-2">
												<div class="custom-control custom-checkbox"
													style="display: inline-block">
													<input type="checkbox" class="custom-control-input" id="9" name="chbox" value="14">
													<label class="custom-control-label" for="9">디자인</label>
												</div>
											</div>
										</div>
										<!-- 튜터 자기소개 -->
										<div class="row" style="margin-bottom: 0px;">
											<div class="col-2"></div>
											<div class="col">
												<label>자기소개</label>
											</div>
										</div>
										<div class="row" style="margin-top: 0px;">
											<div class="col-2"></div>
											<div class="col-9">
												<div class="form-group">
													<textarea class="form-control" rows="5"
														placeholder="내용을 입력하세요." id="INTRO" name="INTRO"></textarea>
												</div>
											</div>
										</div>

										<!-- 튜터 영상 및 블로그 링크  -->

										<div class="row" style="margin-bottom: 0px;">
											<div class="col-2"></div>
											<div class="col">
												<label>링크등록</label>

											</div>
										</div>
										<div class="row" style="margin-top: 0px; margin-bottom: 10px;">
											<div class="col-2"></div>
											<div class="col-2">
												<select class="form-control" name="linkCat">
													<option value="1">영상</option>
													<option value="2">블로그</option>
												</select>
											</div>
											<div class="col-6">
												<input type="text" class="form-control" name="linkContent">
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary">삭제</button>
											</div>
										</div>
										<div class="row" style="margin-top: 0px;">
											<div class="col-2"></div>
											<div class="col-2">
												<select class="form-control" name="linkCat">
													<option value="1">영상</option>
													<option value="2">블로그</option>
												</select>
											</div>
											<div class="col-6">
												<input type="text" class="form-control" name="linkContent">
											</div>
											<div class="col">
												<button type="button" class="btn btn-primary">추가</button>
											</div>
										</div>
										<div class="row">
											<div class="col-5"></div>
											<div class="col">
												<button type="button" class="btn btn-primary"
													style="width: 200px; height: 50px;" id="submitBotton">튜터 신청하기</button>
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


	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>