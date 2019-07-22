<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
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
</style>
<script type="text/javascript">

$(document).ready(function()
{
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
})

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
											<h1 class="h1">튜터 추천</h1>
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
										</form>
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
										<!-- 페이징 -->
										<div class="text-center">
											<button class="btn"><<</button>
											<button class="btn">1</button>
											<button class="btn">2</button>
											<button class="btn">3</button>
											<button class="btn">4</button>
											<button class="btn">>></button>											
										</div>
										<!-- 버튼 부분 -->
										<div class="row">
											<div class="col-2">
												<button type="button" class="btn btn-default">이전으로</button>
											</div>
											<div class="col-8"></div>
											<div class="col-2">
												<button type="button" class="btn btn-primary" onclick="location.href='matchingtutor4'">매칭하기</button>
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