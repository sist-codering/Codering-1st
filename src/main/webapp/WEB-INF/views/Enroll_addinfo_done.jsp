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




<title>Enroll_addinfo_done.jsp</title>


<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>

<!-- <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script> -->
<script type="text/javascript">


	//script for tab steps
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
	
	    var href = $(e.target).attr('href');
	    var $curr = $(".process-model  a[href='" + href + "']").parent();
	
	    $('.process-model li').removeClass();
	
	    $curr.addClass("active");
	    $curr.prevAll().addClass("visited");
	});
	//end  script for tab steps	

</script>




</head>
<body class="mybody">

<div class="container">

	<c:import url="Header_Sidebar_done.jsp"></c:import>

	<div class="row">
		<div class="col-xs-12"> 
	        <!-- design process steps--> 
	        <!-- Nav tabs -->
	        <ul class="nav nav-tabs process-model more-icon-preocess mynav" role="tablist">
	          <li role="presentation" class="active"><a href="#discover" aria-controls="discover" role="tab" data-toggle="tab"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
	            <p>참여신청</p>
	            </a></li>
	          <li role="presentation"><a href="#strategy" aria-controls="strategy" role="tab" data-toggle="tab"><i class="fa fa-credit-card" aria-hidden="true"></i>
	            <p>결제하기</p>
	            </a></li>
	          <li role="presentation"><a href="#optimization" aria-controls="optimization" role="tab" data-toggle="tab"><i class="fa fa-check-square-o" aria-hidden="true"></i>
	            <p>참여완료</p>
	            </a></li>
	        </ul>
	        <!-- end design process steps--> 
	        <!-- Tab panes -->
	        <div class="tab-content">
	          <div role="tabpanel" class="tab-pane active" id="discover">
	            <div class="design-process-content">
	              <h3 class="semi-bold">아직 추가정보가 입력되지 않은 튜티입니다.</h3>
	             <p>튜터링에 참여하기 위해서는 추가정보를 입력해야 합니다. </p>
			     <p style="padding: 60px;">지금 선택정보를 입력하시겠습니까? <br>
					입력하기를 누르면 개인정보 수정 페이지로 이동합니다.</p>
	          	 <div>
		              <button class="btn btn-outline-secondary mybtn" type="button">취소</button>
		              <button class="btn btn-primary mybtn" type="button">입력하기</button>
		         </div>
	            </div>
	          </div>
<!-- 	          <div role="tabpanel" class="tab-pane" id="strategy">
	            <div class="design-process-content">
	              <h3 class="semi-bold">Strategy</h3>
	              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
	              </div>
	          </div>
	          <div role="tabpanel" class="tab-pane" id="optimization">
	            <div class="design-process-content">
	              <h3 class="semi-bold">Optimization</h3>
	              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
	            </div>
              </div> -->
        	</div>
        	<!-- end Tab panes -->
      </div>
    </div>
</div>











</body>
</html>