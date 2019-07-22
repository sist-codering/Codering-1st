<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<!---------------------------------- Header ----------------------------------------->
<!-- Custom fonts for this template-->
<link href="<%=cp %>/vendor/cbr/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<!-- <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"> -->


<!-- Custom styles for this template-->

<!-- <link href="headerFiles/css/sb-admin-2.min.css" rel="stylesheet"> -->
<link href="<%=cp%>/headerFiles/css/header03.css" rel="stylesheet">
<%-- <link rel="stylesheet" type="text/css" href="<%=cp%>/css/lsh/prjMypage.css"> --%>



<!-- Bootstrap core JavaScript-->
<!-- <script src="headerFiles/vendor/jquery/jquery.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script src="headerFiles/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->


<!--  dropdown -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



<!-- Core plugin JavaScript-->
<!-- <script src="headerFiles/vendor/jquery-easing/jquery.easing.min.js"></script> -->

<!-- Custom scripts for all pages-->
<!-- <script src="headerFiles/js/sb-admin-2.min.js"></script> -->




<!----------------------------- End Header ----------------------------------------->




<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
      integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<!-- <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'> -->
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link href="<%=cp %>/vendor/cbr/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=cp%>/css/cbr/css/enroll.css" />

<title>Enroll_done.jsp</title>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>

<!-- <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script> -->
<script type="text/javascript">



		$(document).ready(function()
		{
			$('.btnNext').click(function()
			{
				$('.nav-tabs').unbind('click');
				
				$('.nav-tabs > .active').next('li').find('a').trigger('click');
				
				$('.nav-tabs').click(function () 
				{
					return false;
				});
				
			}); 
	
			$('.nav-tabs').click(function () 
			{
				return false;
			});
		});
	

</script>




</head>
<body class="mybody">

<div class="container">
	
	
	<c:import url="Header_Sidebar_done.jsp"></c:import>


	<div class="row">
		<div class="col-xs-12" align="center"> 
	        <!-- design process steps--> 
	        <!-- Nav tabs -->
	        <ul class="nav nav-tabs process-model more-icon-preocess mynav" role="tablist">
	          <li role="presentation" class="active"><a href="#discover" aria-controls="discover" role="tab" data-toggle="tab"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
	            <p>참여신청</p>
	            </a></li>
	          <li role="presentation" ><a href="#strategy" aria-controls="strategy" role="tab" data-toggle="tab"><i class="fa fa-credit-card" aria-hidden="true"></i>
	            <p>결제하기</p>
	            </a></li>
	          <li role="presentation"><a href="#optimization" aria-controls="optimization" role="tab" data-toggle="tab"><i class="fa fa-check-square-o" aria-hidden="true"></i>
	            <p>참여완료</p>
	            </a></li>
	        </ul>
	        <!-- end design process steps--> 
	        
	        
	        
	        
	        <!-- Tab panes -->
	        <!-- 첫번째탭 -->
	        <div class="tab-content">
	          <div role="tabpanel" class="tab-pane active" id="discover">
	            <div class="design-process-content">
		            <!-- 내용 시작 -->
	           	    <div class="row">
				      <!-- Post Content Column -->
				      <div class="col">
				      <!-- 참여할 튜터링 정보 간단하게 미리 보여주기 -->
				        <!-- Preview Image -->
				        <img class="img" style="vertical-align:middle" src="css/img/img01.jpg" alt="튜터링 대표사진">
				        <h2 class="mt-4">수영쌤과 함께 웹 프로그래밍 정복하기 </h2>
						<h4 style="margin-top: 20px; margin-bottom: 60px;"> 하수영 튜터 </h4>
				        <!-- Post Content -->
						<div class="row">
					        <div class="col-xs-4">
					        </div>
							<div class="col-xs-8">
								<ul style="list-style: none; margin-left: 280px; margin-bottom: 60px;">
									<li><span class="fa fa-map-pin"></span>&nbsp;&nbsp;&nbsp;&nbsp; 홍대 </li>
									<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;2019. 06. 22 시작, 8주</li>
									<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;매주 토, 일 118:00 ~ 21:00 </li>
									<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;6명 ~ 8명  </li>
									<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;350000 원   </li>
								</ul>
							</div>
						</div>
						
						<h5 style="margin: 60px;">참여하시겠습니까?<br>
						참여하기를 누르면 결제 페이지로 이동합니다.</h5>
						<div>
				             <button type="button" class="btn btn-outline-secondary mybtn" data-toggle="modal" data-target="#myModal">취소</button>
				             <a class="btn btn-primary btnNext mybtn" href="#" >참여하기</a>
				             <!-- <button class="btn btn-primary btn-pay btn-tab"type="button">참여하기</button> -->
				        </div>
				      </div>
					</div>
					<!-- 내용 끝 -->
	           </div>
	         </div>
	         <!-- 첫번째탭 끝-->
	          
	          
	          
	          <!-- 모달 -->

				<!-- The Modal -->
				<div class="modal" id="myModal">
				  <div class="modal-dialog">
				    <div class="modal-content">
				
				      <!-- Modal Header -->
				      <div class="modal-header">
				       <!--  <h4 class="modal-title">Modal Heading</h4>
				        <button type="button" class="close" data-dismiss="modal">&times;</button> -->
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body" style="margin: 30px;">
				        튜터링 페이지로 돌아가시겠습니까?
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer">
				        <button type="button" class="btn btn-outline-secondary btn-pay mybtn" data-dismiss="modal">취소</button>
				        <button type="button" class="btn btn-primary btn-pay mybtn" style="margin-bottom: 20px;" data-dismiss="modal">돌아가기</button>
				      </div>
				
				    </div>
				  </div>
				</div>
	          
	          <!-- 모달 끝 -->
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          <!-- 두번째 TAB -->
	          <div role="tabpanel" class="tab-pane" id="strategy">
	            <div class="design-process-content tab2">
	              	<!-- 내용 -->
	             	<div class="row">
				      <!-- Post Content Column -->
				      <div class="col">
				        <!-- 선택한 튜터링 정보 보여주기 -->
				        <h4 class="mt-4 tab2-title">선택한 튜터링</h4>
				
				        <hr>
				        <div class="row">
					        <div class="col-xs-12 col-sm-4">
						        <!-- Preview Image -->
						        <img class="img-fluid rounded tab2-img" src="css/img/img01.jpg" alt="튜터링 대표 이미지">
					        </div>
							<div class="col-xs-12 col-sm-8 tab2-contents">
							
								<div class="divTable">
									<div class="divTableBody">
										<div class="divTableRow row">
											<div class="divTableCell" style="width: 390px;"><h4 class="tab2-subtitle">수영쌤과 함께 웹 프로그래밍 정복하기</h4></div>
											<div class="divTableCell">&nbsp;</div>
										</div>
										<div class="divTableRow" style="padding-top: 20px;">
											<div class="divTableCell"><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;6명 ~ 8명 </div>
											<div class="divTableCell"><p align="right">450,000 원</p></div>
										</div>
										<div class="divTableRow">
											<div class="divTableCell style="width: 390px;"">시작일 : 2019년 7월 26일<span class="float-right">8주 과정</span></div>
											<div class="divTableCell"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<hr><hr>
						<!-- 결제 금액 정보 보여주기 -->
						<div class="row">
					        <div class="col-xs-12 col-sm-4">
						        <h4 class="tab2-title">결제 금액</h4>
					        </div>
							<div class="col-xs-12 col-sm-8">
								<h4 class="tab2-title float-right">450,000 원</h4>
							</div>
						</div>
				
						<hr />
						<!-- 쿠폰 정보 보여주기 -->
						<div class="row">
					        <div class="col-xs-12 col-sm-4">
						        <h4 class="tab2-title">사용 가능한 쿠폰</h4>
					        </div>
							<div class="col-xs-12 col-sm-8">
								<h4 class="tab2-title float-right">1 장</h4>
							</div>
					        <div class="col-xs-12 col-sm-4">
					        </div>
							<div class="col-xs-12 col-sm-8">
								<div align="right">
									<span style="font-size: 14px;">10,000 원 할인권</span><button class="btn btn-primary mybtn" type="button">사용하기</button>
								<!-- <h4 style="margin-right: 20px;">10,000 원 할인권</h4><button class="btn btn-primary" type="button">사용하기</button> -->
								</div>
							</div>
						</div>
				
						<hr />
						<!-- 최종 금액 정보 보여주기 -->
						<div class="row">
					        <div class="col-xs-12 col-sm-4">
						        <h4 class="tab2-title">할인 금액</h4>
					        </div>
							<div class="col-xs-12 col-sm-8">
								<h4 class="tab2-title float-right">10,000 원</h4>
							</div>
						</div>
						<div class="row">
					        <div class="col-xs-12 col-sm-4">
						        <h4 class="tab2-title">최종 결제 금액</h4>
					        </div>
							<div class="col-xs-12 col-sm-8">
								<h4 class="tab2-title float-right" style="color: red;">440,000 원</h4>
							</div>
						</div>
						
						<hr />
						<hr />
						
						<!-- 결제수단 정보 보여주기 -->
						<h4 class="mt-4 tab2-title">결제 수단</h4>
				        <div class="row">
					        <div class="col" align="center">
								<button class="btn btn-outline-secondary btn-pay mybtn" type="button">무통장입금</button>
								<button class="btn btn-outline-secondary btn-pay mybtn" type="button">신용카드</button>
								<button class="btn btn-outline-secondary btn-pay mybtn" type="button">핸드폰결제</button>
								<button class="btn btn-outline-secondary btn-pay mybtn" type="button">PAYCO</button>
								<button class="btn btn-outline-secondary btn-pay mybtn" type="button">TOSS</button>
							</div>
						</div>
						<!-- 약관 정보 보여주기 -->
						<div class="row" >
							<div class="col check-align">
								<input type="checkbox" /> 개인정보 제 3자 제공 동의, 결제 대행 서비스 이용 약관 등 모든 약관에 동의합니다.
								<a style="color: #007bff">약관보기</a>
							</div>
						</div>
						
						<hr />
						<!-- 결제하기 버튼 -->
						<div class="row" style="margin: 30px;">
							<div class="col" align="center">
								 <button type="button" class="btn btn-outline-secondary mybtn" data-toggle="modal" data-target="#myModal">취소</button>
					             <a class="btn btn-primary btnNext mybtn" href="#" id="btnPay">결제하기</a>
					        </div>
						</div>
						
						<hr>
						
				      </div>
				    </div>
				    <!-- 내용 끝-->
	             </div>
	          </div>
	          <!-- 두번째 TAB 끝 -->
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          
	          <!-- 세번째 탭 -->
	          <div role="tabpanel" class="tab-pane" id="optimization">
	            <div class="design-process-content">
	               <!-- 내용 시작 -->
	           	    <div class="row">
				      <!-- Post Content Column -->
				      <div class="col">
						<h3 style="margin-top: 20px; margin-bottom: 60px; font-weight: bold;">결제가 완료 되었습니다.</h3>
				        <!-- Post Content -->
						<h5 style="margin: 60px;">결제 및 참여신청 완료된 튜터링은<br>
						<span style="font-weight: bold;">마이페이지 > 나의 튜터링 > 진행 예정 튜터링</span>에서 확인할 수 있습니다.</h5>
						
						<div>
				             <button class="btn btn-outline-secondary mybtn" type="button">메인으로</button>
				             <button class="btn btn-primary mybtn" type="button">나의 튜터링</button>
				        </div>
				      </div>
					</div>
					<!-- 내용 끝 -->
	            </div>
              </div>
              <!-- 세번째 탭 끝 -->
        	</div>
        	<!-- end Tab panes -->
      </div>
    </div>
</div>











</body>
</html>