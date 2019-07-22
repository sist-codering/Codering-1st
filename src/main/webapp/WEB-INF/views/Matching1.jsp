<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

%>
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

</style>
<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">
	<div class="container">

				<div class="card">
					<div class="card-body">


						<div class="container h-100" style="padding: 200px;">
										<div class="card">
											<div class="card-body">
												<div class="m-sm-4">
													<div class="text-center mt-4" style="margin-bottom:50px;">
														<h1 class="h1">매칭 정보 확인</h1>
													</div>
													<!-- 입력정보 확인 폼 -->
														<div class="form-group" style="margin-bottom: 50px; text-align: center;">
															<label>지역</label> <input
																class="form-control form-control-lg" type="text" readonly="readonly"
																value="${selectRegionName.REG_NAME}">
														</div>
														<div class="form-group" style="margin-bottom: 50px; text-align: center;">
															<label>수업 레벨</label> <input
																class="form-control form-control-lg" type="text" readonly="readonly"
																value="${selectLangLvName }">
														</div>
														<div class="form-group" style="margin-bottom: 100px; text-align: center;">
															<label>희망 시간대</label> <input
																class="form-control form-control-lg" type="text" readonly="readonly"
																
																value="${selectTimeName }">
														</div>
														<div class="row">
															<div class="col-2">
																<button type="button" class="btn btn-default">이전으로</button>
															</div>
															<div class="col-8"></div>
															<div class="col-2">
																<button type="button" class="btn btn-primary" onclick="location.href='matchingtutor2'">매칭하기</button>
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
