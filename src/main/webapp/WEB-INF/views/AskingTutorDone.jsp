<%@ page contentType="text/html; charset=UTF-8"%>
<% String cp = request.getContextPath(); %>
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

.row {margin-bottom: 50px;}

#circle{border-radius: 50px;
		width:200px;
		height:60px;
}

.btn{font-size: large; color:white;}


.h1{text-align: center;}


</style>
</head>
<!-- 튜터 신청완료 페이지.jsp -->
<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">
	<div class="container">
		<div class="row flex-lg-nowrap">
		
			<div class="col mb-3">
				<div class="card" style="padding:100px;">
					<div class="card-body">
						<div class="row">
							<div class="col-2"></div>
							<div class="col-2">
								<div class="text-right">
									<img src="<%=cp%>/images/check.png" style="width:150px">
								</div>
							</div>
							<div class="col-6">
								<h1 class="h1" style="padding-top:10%">
									${loginInfo.NICKNAME }님의 튜터 신청이 완료되었습니다.
								</h1>
							</div>
						</div>
						<div class="row">
							<div class="col-4"></div>
							<div class="col-6">
								<h4 class="h4">
									튜터의 정보의 수정은<br>
									[ MY PAGE ] > [ 튜터 프로필 수정 ]<br>
									에서 가능합니다.<br>
								</h4>
							</div>						
						</div>
						<div class="row">
							<div class="col-4"></div>
							<div class="col-7">
								<h4 class="h4">○○님을 기다리고 있는 많은 튜티들을 만나보세요!</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-4"></div>
							<div class="col-6">
								<img src="<%=cp%>/images/done.png">
							</div>						
						</div>
						<div class="row">
							<div class="col-2">
							</div>
							<div class="col-4">
								<h4 class="h4" style="padding-top:10px;">튜터로서 튜터링을 직접 개설하고 싶으신가요?</h4>
							</div>
							<div class="col-2">
								<img src="<%=cp%>/images/directer.png">
							</div>
							<div class="col">
								<button type="button" class="btn btn-primary" style="width:200px; height: 80px; font-size:large;">튜터링 개설하기</button>
							</div>
						</div>
						<div class="row">
							<div class="col-2">
							</div>
							<div class="col-4">
								<h4 class="h4" style="padding-top:10px;">튜티장이 개설한 튜터링에 튜터로 지원하고 싶으신가요?</h4>
							</div>
							<div class="col-2">
								<img src="<%=cp%>/images/directer.png">
							</div>
							<div class="col">
								<button type="button" class="btn btn-primary" style="width:200px; height: 80px; font-size:large;">튜터링 확인하기</button>
							</div>
						</div>
						<div class="text-center">
							<button class="btn btn-primary" id="circle">메인으로</button>
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