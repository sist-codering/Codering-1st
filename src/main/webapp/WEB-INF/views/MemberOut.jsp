<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
<title>Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">

.card {
	margin-bottom: 1.5rem;
	box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
}

.btn{
	border-radius: 50px;
	width:100px;
	height:50px;
		
}

.card {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid #e5e9f2;
	border-radius: .2rem;
}
</style>
</head>
<body>
	<!--  회원 탈퇴 페이지 -->
	<div class="container">
		<div class="card">
			<div class="card-body">
				<div class="row" style="margin: 100px;">
					<div class="col-2"></div>
					<div class="col">
						<h1 class="h1">회원 탈퇴</h1>
					</div>
				</div>
				<div class="container h-100">
					<div class="row h-100">
						<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
							<div class="d-table-cell align-middle">

								<div class="text-center" style="margin-bottom: 50px;">
									<h1 class="h3">본인 확인</h1>
								</div>
								<form>
									<div class="card" style="">
										<div class="card-body" style="">
											<div class="text-center" style="margin: 50px;">
												<span>본인 확인을 위해 비밀번호를 입력해주세요.</span>
											</div>

											<div class="form-group">
												<div class="row">
													<div class="col-1"></div>
													<div class="col-2.5">
														<label>비밀번호</label>
													</div>
													<div class="col-8">
														<input type="password" class="form-control"
															placeholder="비밀번호를 입력해주세요.">
													</div>
												</div>
											</div>
										</div>
									</div>
								</form>
								<div class="text-center" style="margin-bottom:250px;">
									<button type="button" class="btn" style="margin-right:30px;">취소하기</button>
									<button type="button" class="btn btn-primary">회원탈퇴</button>
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