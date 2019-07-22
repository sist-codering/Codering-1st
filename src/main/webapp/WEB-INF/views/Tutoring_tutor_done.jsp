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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Tutoring_tutor_done.jsp</title>
<!-- Bootstrap core CSS -->


<!-- Header 관련 링크 -->
<%-- <c:import url="HeaderLink.jsp"></c:import> --%>
<!-- HEADER -->
<link type="text/css" rel="stylesheet" href="<%=cp%>/headerFiles/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=cp%>/headerFiles/css/mypage.css">

<!---------------------------------- Header ----------------------------------------->
<!-- Custom fonts for this template-->
<link href="<%=cp%>/headerFiles/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


<!-- Custom styles for this template-->
<link href="<%=cp%>/headerFiles/css/sb-admin-2.min.css" rel="stylesheet">
<link href="<%=cp%>/headerFiles/css/header02.css" rel="stylesheet">


<!-- Bootstrap core JavaScript-->
<script src="<%=cp%>/headerFiles/vendor/jquery/jquery.min.js"></script>
<script src="<%=cp%>/headerFiles/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


<!--  dropdown -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



<!-- Core plugin JavaScript-->
<!-- <script src="headerFiles/vendor/jquery-easing/jquery.easing.min.js"></script> -->

<!-- Custom scripts for all pages-->
<script src="<%=cp%>/headerFiles/js/sb-admin-2.min.js"></script>

<!-- HEADER -->




<!-- 상세페이지 관련 링크 -->
<link href="<%=cp%>/vendor/cbr/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
      integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<!-- Custom styles for this template -->
<link rel="stylesheet" href="<%=cp%>/css/cbr/css/blog-post.css">
<link rel="stylesheet" href="<%=cp%>/css/cbr/css/myCss.css" />





</head>
<body>

 <!-- <div class="header-style" id="header"></div> -->
 <div class="header-style">
  <c:import url="Header_Sidebar_done.jsp"></c:import>
 </div>


 <!-- Page Content -->
 <div class="container">
   <div class="row" style="margin-top: 50px;">

     <!-- Post Content Column -->
     <div class="col-lg-8">

       <!-- Title -->
       <h1 class="mt-4">${TutoringDetail.TITLE } </h1>

       <!-- Author -->
       <p class="lead">
         by
         <a href="#">Code-ring</a>
       </p>

       <hr>

       <!-- Date/Time -->
       <p style="font-size: small;"> 작성</p>

       <hr>

       <!-- Preview Image -->
       <img class="img-fluid rounded mx-auto d-block" src="${TutoringDetail.THUMBNAIL_PATH }" alt="">
<!--         <img class="img-fluid rounded" src="http://placehold.it/900x300" alt=""> -->
       <hr>

       <!-- Post Content -->
       
       <div class="row">
        <div class="col-xs-12 col-sm-3">
        	<p class="lead" style="font-weight: bold;">튜터링 소개</p>
        </div>
		<div class="col-xs-12 col-sm-9">
	        <p class="subcontent">
	        ${TutoringDetail.INTRO}
	        </p>
							
		</div>
	</div>
	
	<hr>
	
	<div class="row">
        <div class="col-xs-12 col-sm-3">
        	<p class="lead" style="font-weight: bold;">상세 정보</p>
        </div>
		<div class="col-xs-12 col-sm-9 subcontent list-unstyled">
			<ul>
				<li><span class="fa fa-map-pin"></span>&nbsp;&nbsp;&nbsp;&nbsp; ${TutoringDetail.REG_NAME} </li>
				<li><span class="far fa-calendar-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;
				${TutoringDetail.REG_NAME} 시작, ${TutoringDetail.WEEK_PERIOD}주</li>
				<li><span class="far fa-clock"></span>&nbsp;&nbsp;&nbsp;&nbsp;
				매주 ${TutoringDetail.WEEK_NAME }, ${TutoringDetail.START_TIME } ~ ${TutoringDetail.END_TIME } </li>
				<li><span class="fa fa-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;
				${TutoringDetail.MIN_NUM}명 ~ ${TutoringDetail.MAX_NUM}명  </li>
				<li><span class="fa fa-tag"></span>&nbsp;&nbsp;&nbsp;&nbsp;
				${TutoringDetail.ENTRY_COST } 원   </li>
			</ul>
			<br>
			<!-- 지도 api 넣을 부분 (임시 img) -->
			<img alt="map" src="<%=cp%>/css/cbr/css/img/img02.jpg" id="mapImg">
			
		</div>
	</div>

	<hr />

	<div class="row">
		<div class="col-xs-12 col-sm-3">
        	<p class="lead" style="font-weight: bold;">튜터 소개</p>
        </div>
		<div class="col-xs-12 col-sm-9">
			<div id="wrapper cell" class="nick">
				<img alt="tutor pic" src="<%=cp%>/css/cbr/css/img/img03.jpg" class="rounded-circle" id="profilePic01"> &nbsp;&nbsp; 
				${TutoringDetail.TUTOR_NAME }
			<br>
			<br>
			</div>
	        <p class="subcontent">
	        ${TutoringDetail.INTRO }
			</p>
		</div>
	</div> <!-- Post Content.row -->
	
	Z
	<div class="row">
		<div class="col-xs-12 col-sm-3">
        	<p class="lead" style="font-weight: bold;">튜터 후기</p>
        </div>
		<div class="col-xs-12 col-sm-9">
			<div class="media-review" id="wrapper cell">
				<img alt="tutor pic" src="https://source.unsplash.com/QAB-WJcbgJk/60x60" class="d-flex mr-3 rounded-circle" id="profilePic02"> 
          			
          			<div class="media-body subcontent">
		            <div class="mt-0 nick">${TutoringDetail_review.NICKNAME }</div>
		            <footer class="blockquote-footer">
		            <cite title="Source Title">${TutoringDetail_review.WRITEDATE } 작성</cite>
		        </div>
          			
			</div>
				<br><br>
			<div>
	        	<p class="subcontent">${TutoringDetail_review.CONTENT }</p>
				<br><br><br>
			</div>
			<input type="button" value="튜터 프로필 및 튜티 후기 더보기" class="btn btn-primary btn-block">
		</div>
	</div> <!-- Post Content.row -->
	
	
	<hr>
	
	
	<!-- 자주 묻는 질문 -->
	<div class="row">
		<div class="col-xs-12 col-sm-3">
        	<p class="lead" style="font-weight: bold;">자주 묻는 질문</p>
        </div>
		<div class="col-xs-12 col-sm-9">
			<div class="subcontent">
				<img alt="q pic" src="images/img05.JPG" class="rounded-circle" id="faq01">
				 신청한 튜터링은 어디서 확인하나요?
				<br><br>
				<img alt="a pic" src="images/img06.JPG" class="rounded-circle" id="faq02">
				 [내 프립] 또는 [내 활동]의 [신청 내역] 탭에서 신청하신 프립을 확인하실 수 있습니다.
			</div>
			<br><br><br>
			<div class="subcontent">
				<img alt="q pic" src="images/img05.JPG" class="rounded-circle" id="faq01">
				 신청 취소 및 환불 처리는 어떻게 되나요?
				<br><br> 
				<img alt="a pic" src="images/img06.JPG" class="rounded-circle" id="faq02">
				 구매 후 14일 이내에는 신청 취소 및 환불이 가능합니다. 
				 다만, 14일이 지나지 않았더라도 이미 호스트님과 일정 확정 후 출석체크가 완료되었다면 환불이 불가합니다.
			</div>
			<br>
		</div>			
	</div> <!-- Post Content.row -->
       


       <hr>

       <!-- Comments Form -->
       <!-- 문의하기 -->
       <div class="card my-4">
         <h5 class="card-header" style="font-weight: bold;">튜터에게 물어보세요.</h5>
         <div class="card-body">
           <form>
             <div class="form-group">
               <textarea class="form-control subcontent" rows="3" placeholder="문의 내용을 입력하세요."></textarea>
             </div>
             <button type="submit" class="btn btn-primary float-right">등록</button>
           </form>
         </div>
       </div>
	
	<hr />
	
       <!-- Single Comment -->
       <div class="media mb-4">
         <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt=""> <!-- 댓글 프로필사진 -->
         <div class="media-body subcontent">
           <div class="mt-0 nick">김소림</div>
           <footer class="blockquote-footer">
           <cite title="Source Title">2019-06-10 18:25 작성</cite>
           <!-- 수정 / 삭제 --> 
        <span class="btn-user float-right"><a>수정</a>&nbsp;&nbsp;<a>삭제</a></span>
        	</footer>
           <br>노트북 필수 지참인가요?
         </div>
       </div>
	
       <!-- Comment with nested comments -->
       <div class="media mb-4 ">
         <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt=""> <!-- 댓글 프로필사진 -->
         <div class="media-body subcontent">
           <div class="mt-0 nick">박손탁</div>
           <footer class="blockquote-footer">
           <cite title="Source Title">2019-06-11 15:03 작성</cite>
           <!-- 신고 --> 
        <span class="btn-user float-right"><a>신고</a></span>
        	</footer>
        	<br>html과 css를 한 번도 해본 적이 없는데 수업을 들을 수 있을까요?

           <div class="media mt-4 tutor-reply">
             <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt=""> <!-- 댓글 프로필사진 -->
             <div class="media-body subcontent">
			<div class="mt-0 nick">하수영 튜터</div>
			<footer class="blockquote-footer">
				<cite title="Source Title">2019-06-11 17:33 작성</cite>
				<!-- 신고 --> 
				<span class="btn-user float-right"><a>신고</a></span>
			</footer>
			<br>네 문제 없습니다.
             </div>
           </div>
         </div>
       </div>

     </div>

     <!-- Sidebar Widgets Column -->
     <div class="col-md-4">

       <!-- Search Widget -->
	<div class="card my-4" id="fixed" style="width: 357px;">
		<h5 class="card-header" style="font-weight: bold;">${TutoringDetail.TITLE }</h5>
		<div class="card-body">
			<div class="row">
				<div class="list-unstyled mb-0" id="table">
					<div class="row-div">
						<span class="cell col1 subcontent">참가비</span>
						<span class="cell col2" style="font-weight: bold;"><h5>${TutoringDetail.ENTRY_COST }</h5></span>
					</div>
					<div class="row-div">
						<span class="cell col1 subcontent">시간</span>
						<span class="cell col2" style="font-weight: bold;"><h5></h5></span>
					</div>
					<div class="row-div">
						<span class="cell col1 subcontent">일정</span>
						<span class="cell col2" style="font-weight: bold;">
						<h5>${TutoringDetail.STARTDATE } 시작
						<br>${TutoringDetail.WEEK_PERIOD  }주<br>
						${TutoringDetail.WHOLETIME  } 시간</h5>
						</span>
					</div>
				</div>
			</div>
			<input type="button" value="참여하기" class="btn btn-primary btn-block">
			<br>
			<input type="button" value="찜하기" class="btn btn-primary btn-block">
		</div>
	 </div> <!-- Search Widget -->
   </div><!-- Sidebar Widgets Column -->

   </div>
   <!-- /.row -->

 </div>
 <!-- /.container -->

 <!-- Footer -->
<!--   <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    /.container
  </footer> -->

 <!-- Bootstrap core JavaScript -->
 <script src="<%=cp%>/vendor/cbr/vendor/jquery/jquery.min.js"></script>
 <script src="<%=cp%>/vendor/cbr/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>