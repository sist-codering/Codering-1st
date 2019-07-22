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

.row {
	margin: 50px;
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
		$("#input_img").click() ;
	});		
});

</script>


<script>
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
			
				console.log($("#profileImg").attr("src"));
				
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
</head>
<body>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
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
							<form>
								<div class="tab-pane active">

									<!-- 튜터 사진 -->
									<div class="row">
										<div class="col-2"></div>
										<div class="col-2">
										<!-- 
											<div class="mx-auto" style="width: 140px;">
												<div
													class="d-flex justify-content-center align-items-center rounded"
													style="height: 140px; background-color: rgb(233, 236, 239);">
													<span
														style="color: rgb(166, 168, 170); font: bold 8pt Arial;">140x140</span>
												</div>
											</div>
											 -->
											 <img alt="" src="<%=cp %>/images/3.png" id="profileImg" width="100pt">
										</div>
										<div class="col-1"></div>
										<div class="col-4">
											<input type="text" class="form-control" value="">
											<label>※ 5MB이하(png.jpeg)</label>
										</div>
										<div class="col-3">
											<!-- <button class="btn btn-primary" type="button">
												<i class="fa fa-fw fa-camera"></i> <span>등록</span>
											</button> -->
											<input type="file" id="input_img">

										</div>
									</div>
									<!-- 튜터 이름 -->
									<div class="row">
										<div class="col-2"></div>
										<div class="col-2">
											<label>이름</label>
										</div>
										<div class="col-1"></div>
										<div class="col-4">
											<input type="text" class="form-control">
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
											<input type="text" class="form-control">
										</div>
									</div>
									<!-- 언어 및 권장레벨 -->
									<div class="row">
										<div class="col-2"></div>
										<div class="col-2">
											<label>언어 및<br> 권장레벨
											</label>
										</div>
										<div class="col-1"></div>
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
													placeholder="시작 날짜" readonly="readonly">
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
													placeholder="종료 날짜" readonly="readonly">
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
												<input type="text" class="form-control" value="강원도감자캐기">
											</div>
										</div>
									</div>
									<div class="row" style="margin-bottom: 10px; margin-top: 0px;">
										<div class="col-5"></div>
										<div class="col-2">
											<div class="form-group">
												<input type="text" class="datepicker form-control"
													placeholder="시작 날짜" readonly="readonly">
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
													placeholder="종료 날짜" readonly="readonly">
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
												<input type="text" class="form-control" value="쌍용강북교육센터">
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
												<input type="checkbox" class="custom-control-input" id="1">
												<label class="custom-control-label" for="1">웹</label>
											</div>
										</div>
										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="2">
												<label class="custom-control-label" for="2">모바일</label>
											</div>
										</div>
										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="3">
												<label class="custom-control-label" for="3">블록체인</label>
											</div>
										</div>
									</div>
									<div class="row" style="margin-bottom: 0px; margin-top: 0px;">
										<div class="col-5"></div>

										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="4">
												<label class="custom-control-label" for="4">자료구조</label>
											</div>
										</div>
										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="5">
												<label class="custom-control-label" for="5">알고리즘</label>
											</div>
										</div>
										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="6">
												<label class="custom-control-label" for="6">게임개발</label>
											</div>
										</div>
									</div>
									<div class="row" style="margin-top: 20px;">
										<div class="col-5"></div>
										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="7">
												<label class="custom-control-label" for="7">언어기초</label>
											</div>
										</div>
										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="8">
												<label class="custom-control-label" for="8">최신기술</label>
											</div>
										</div>
										<div class="col-2">
											<div class="custom-control custom-checkbox"
												style="display: inline-block">
												<input type="checkbox" class="custom-control-input" id="9">
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
													placeholder="내용을 입력하세요."></textarea>
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
											<select class="form-control">
												<option>영상</option>
												<option>블로그</option>
											</select>
										</div>
										<div class="col-6">
											<input type="text" class="form-control">
										</div>
										<div class="col">
											<button type="button" class="btn btn-primary">삭제</button>
										</div>
									</div>
									<div class="row" style="margin-top: 0px;">
										<div class="col-2"></div>
										<div class="col-2">
											<select class="form-control">
												<option>영상</option>
												<option>블로그</option>
											</select>
										</div>
										<div class="col-6">
											<input type="text" class="form-control">
										</div>
										<div class="col">
											<button type="button" class="btn btn-primary">추가</button>
										</div>
									</div>
									<div class="row">
										<div class="col-5"></div>
										<div class="col">
											<button type="button" class="btn btn-primary"
												style="width: 200px; height: 50px;">튜터 신청하기</button>
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