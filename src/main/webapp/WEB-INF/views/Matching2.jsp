<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
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

.avatar.avatar-xl {
	width: 5rem;
	height: 5rem;
}

.avatar {
	width: 2rem;
	height: 2rem;
	line-height: 2rem;
	border-radius: 50%;
	display: inline-block;
	background: #ced4da no-repeat center/cover;
	position: relative;
	text-align: center;
	color: #868e96;
	font-weight: 600;
	vertical-align: bottom;
}
#num2{ display : none; }

#num3{ display : none; }
</style>
<script type="text/javascript">

	$(document).ready(function()
	{	
		$("#search").keyup(function()
		{
			
			
			if($("#search").val()=="")
			{
				$("#num2").css("display","none");
				$("#num3").css("display","none");
				$("#num1").css("display","block");
			}
			else if($("#search").val() == "김정규")
			{
				$("#num2").css("display","none");
				$("#num1").css("display","none");
				$("#num3").css("display","block");
				
				
			}
			else if($("#search").val()!="")
			{
				
				$("#num1").css("display","none");
				$("#num3").css("display","none");
				$("#num2").css("display","block");
				
			}
			
		});
		
		$("#addTutor1").click(function()
				{
					var name = $("#tutorName1").text();
					
					var tag = "	<div class='alert alert-dismissible alert-secondary tutorProfileButtons1' style='width:150px; display:inline-block;'>"
							  + "<button type='button' class='close' data-dismiss='alert'>&times;</button>"
							  + name
							  + "</div>";
							  
					$("#addedTutor").append(tag);
				});
			
			$("#addTutor2").click(function()
					{
						var name = $("#tutorName2").text();
						
						var tag = "	<div class='alert alert-dismissible alert-secondary tutorProfileButtons1' style='width:150px; display:inline-block;'>"
								  + "<button type='button' class='close' data-dismiss='alert'>&times;</button>"
								  + name
								  + "</div>";
								  
						$("#addedTutor").append(tag);
					});
			
			$("#addTutor3").click(function()
					{
						var name = $("#tutorName3").text();
						
						var tag = "	<div class='alert alert-dismissible alert-secondary tutorProfileButtons1' style='width:150px; display:inline-block;'>"
								  + "<button type='button' class='close' data-dismiss='alert'>&times;</button>"
								  + name
								  + "</div>";
								  
						$("#addedTutor").append(tag);
					});
		
	$("#sub").click(function()
	{
		$("#formId").submit();	
	})
		
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


						<div class="container h-100" style="padding: 200px;">
							<div class="card">
								<div class="card-body">
									<div class="m-sm-4">
										<div class="text-center mt-4" style="margin-bottom: 20px;">
											<h1 class="h1">튜터 검색</h1>
										</div>
										<!-- 매칭 입력폼 -->
										<form action="matchingtutor4" method="post" id="formId">
											<!-- 튜터 리스트 -->
											<div class="row" style="margin-bottom: 10px;">
												<div class="col-2.5" style="display: inline-block;">
													<span>선택한 튜터 : </span>
												</div>
												<div class="col-8" id="addedTutor"style="display: inline-block;">
													
												</div>
												<div class="col-2">
													<button type="button" class="btn btn-primary" id="sub">선택완료</button>
												</div>
											</div>
											<hr>
											<!-- 튜터 검색 할 수 있는곳 -->
											<div class="input-group" style="margin-bottom: 50px;">
												<label>튜터 이름 : </label> <input class="form-control"
													type="text" id="search"
													style="display: inline-block; width: 350px;">
												<button type="button" class="btn btn-primary">검색</button>
											</div>
										</form>
										<!-- 검색창에 아무것도 입력하지 않았을때 세션 -->
										<div id="num1">
											<div class="text-center" style="margin-bottom: 200px;">
												<h4 class="h4">튜터를 검색하세요.</h4>
											</div>
											<div class="text-center" style="margin-bottom: 100px;">
												<span>원하는 튜터가 없다면?</span>
											</div>
											<div class="text-center" style="margin-bottom: 100px;">
													<button class="btn btn-primary" onclick="location.href='matchingtutor3'">어울리는 튜터추천 받기</button>
											</div>
											<div class="text-center" style="margin-bottm: 50px;">
												<button type="button" class="btn">이전으로</button>
											</div>
										</div>
										<!-- 검색창에 맞는 튜터의 이름이 없을때 나타나는 세션 -->
										<div id="num2">
											<div class="text-center" style="margin-bottom: 300px;">
												<h4 class="h4">검색 결과가 없습니다.</h4>
											</div>
											<div class="text-center" style="margin-bottom: 100px;">
												<button type="button" class="btn btn-primary" onclick="location.href='matchingtutor3'">튜터링에
													어울리는 튜터추천 받기</button>
											</div>
											<div class="text-center" style="margin-bottm: 50px;">
												<button type="button" class="btn">이전으로</button>
											</div>
										</div>
										<!-- 검색창에 "김정규"(튜터이름)을 입력하면 나타나는 세션 -->
										<div id="num3">
											<!-- 튜터리스트1 -->
											<div class="card">
												<div class="card-body">
													<div class="row">
														<div class="col">
															<div class="media align-items-center">
																<span style="background-image: url( 'img-jungkyu/bill.jpg' );" <%--이미지 삽입 --%>
																	class="avatar avatar-xl mr-3"></span>
																<div class="media-body overflow-hidden">
																	<h5 class="card-text mb-0" id="tutorName1">김정규</h5>
																	<p class="card-text text-uppercase text-muted">Memora</p>
																	<p class="card-text">

																		경력사항: 강원도 감자를 잘캠<br> 전화번호: 010-1111-1111
																	</p>
																</div>
															</div>
															<a href="#" class="tile-link"></a>
														</div>
														<div class="col-2">
															<button id="addTutor1" name="addTutor" class="btn btn-primary" style="position:relative;top:30%;" value=>등록</button>
														</div>
													</div>
												</div>
											</div>
											<!-- 튜터리스트2 -->
											<div class="card">
												<div class="card-body">
													<div class="row">
														<div class="col">
															<div class="media align-items-center">
																<span style="background-image: url( 'img-jungkyu/bill.jpg' );" <%--이미지 삽입 --%>
																	class="avatar avatar-xl mr-3"></span>
																<div class="media-body overflow-hidden">
																	<h5 class="card-text mb-0" id="tutorName2">김정규</h5>
																	<p class="card-text text-uppercase text-muted">Memora</p>
																	<p class="card-text">

																		경력사항: 강원도 감자를 잘캠<br> 전화번호: 010-1111-1111
																	</p>
																</div>
															</div>
															<a href="#" class="tile-link"></a>
														</div>
														<div class="col-2">
															<button id="addTutor2" name="addTutor" class="btn btn-primary" style="position:relative;top:30%;">등록</button>
														</div>
													</div>
												</div>
											</div>
											<!-- 튜터리스트3 -->
											<div class="card" style="margin-bottom: 100px;">
												<div class="card-body">
													<div class="row">
														<div class="col">
															<div class="media align-items-center">
																<span style="background-image: url( 'img-jungkyu/bill.jpg' );" <%--이미지 삽입 --%>
																	class="avatar avatar-xl mr-3"></span>
																<div class="media-body overflow-hidden">
																	<h5 class="card-text mb-0" id="tutorName3">김정규</h5>
																	<p class="card-text text-uppercase text-muted">Memora</p>
																	<p class="card-text">

																		경력사항: 강원도 감자를 잘캠<br> 전화번호: 010-1111-1111
																	</p>
																</div>
															</div>
															<a href="#" class="tile-link"></a>
														</div>
														<div class="col-2">
															<button id="addTutor3" name="addTutor" class="btn btn-primary" style="position:relative;top:30%;">등록</button>
														</div>
													</div>
												</div>
											</div>
											<div class="text-center">
												<button class="btn"><<</button>
												<button class="btn">1</button>
												<button class="btn">2</button>
												<button class="btn">3</button>
												<button class="btn">4</button>
												<button class="btn">>></button>
											</div>
											<div class="row">
												<div class="col-2">
													<button type="button" class="btn btn-default">이전으로</button>
												</div>
												<div class="col-8"></div>
												<div class="col-2">
													<button type="button" class="btn btn-primary" onclick="location.href='matchingtutor3'" >매칭하기</button>
												</div>
											</div>
										</div>
									</div>
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
</html>