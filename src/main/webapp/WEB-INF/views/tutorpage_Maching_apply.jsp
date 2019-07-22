<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>튜터페이지_매칭</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!-- Custom fonts for this template-->
<link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/ces/Accordion.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/lsh/sb-admin-2.css" rel="stylesheet" type="text/css">

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lsh/myCss02.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lsh/matching07.css" />


<style type="text/css">

.divTable{
	display: table;
	width: 100%;
	height: 300px;
}
.divTableRow {
	display: table-row;
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
}
.divTableCell1, .divTableHead {
	display: table-cell;
	padding: 3px 10px;
	width: 42%;
}
.divTableCell2 {
	display: table-cell;
	padding: 3px 10px;
	font-weight: bold;
}
.divTableBody {
	display: table-row-group;
}


.applyListSubject {
	font-family: Noto Sans KR; 
	font-size: 20px; 
	border-top: 2px solid gray; 
	border-bottom: 2px solid gray; 
	padding: 10px; 
	position: relative; 
	top: 50px; 
	left: 100px;
}

.applyListStyle1st {
	font-size: 20px; 
	font-family: Noto Sans KR; 
	border-top: 2px solid gray; 
	border-bottom: 2px solid gray; 
	padding: 50px; 
	position: relative; 
	left: 100px; 
	top: 120px; 
	width: 1100px !important;
}

.applyTutoringSubjectStyle {
	font-family: 맑은고딕; 
	font-weight: bold;
}

.applyTutoringLevle {

	padding: 5px; 
	font-family: Noto Sans KR;
}

.applyTutoringButtonDiv {
	font-family: Noto Sans KR;  
	position: relative; 
	left: 20px; 
	bottom: 55px;
}

.applyTutoringButtonDelete {
	border-radius: 5px; 
	font-weight: bold; 
	float: right; 
	font-size: 15px; 
	background-color: #E74C3C; 
	color: white; 
	width: 100px; 
	height: 40px; 
	border: 0; 
	outline: 0;
}

.applyTutoringButtonStandby {

	border-radius: 5px; 
	margin-right: 10px; 
	font-weight: bold; 
	float: right; 
	font-size: 15px; 
	background-color: #ffc107; 
	/* background-color: #E74C3C; */ 
	color: white; 
	width: 100px; 
	height: 40px; 
	border: 0;
	outline: 0;
}

.applyutoringButtonDel {
	border-radius: 5px; 
	font-weight: bold; 
	float: right; 
	font-size: 15px; 
	background-color: #E74C3C; 
	color: white; 
	width: 100px; 
	height: 40px; 
	border: 0; 
	outline: 0;
}
.applyTutoringButtonReject {
	border-radius: 5px; 
	margin-right: 10px; 
	font-weight: bold; 
	float: right; 
	font-size: 15px; 
	background-color: gray; 
	color: white; 
	width: 100px; 
	height: 40px; 
	border: 0; 
	outline: 0;
}

.applyTutoringButtonDialog {

	border-radius: 5px; 
	margin-right: 10px; 
	font-weight: bold; 
	float: right; 
	font-size: 15px; 
	background-color: #3F65D4; 
	color: white; 
	width: 100px; 
	height: 40px; 
	border: 0; 
	outline: 0;
}

.applyTutoringButtonDetail {

	border-radius: 5px; 
	margin-right: 10px; 
	font-weight: bold; 
	float: right; 
	font-size: 15px; 
	background-color: #9B59B6; 
	color: white; 
	width: 100px; 
	height: 40px; 
	border: 0; 
	outline: 0;
}


.applyTutoringButtonRejCancel {
	border-radius: 5px; 
	font-weight: bold; 
	float: right; 
	font-size: 15px; 
	background-color: #E74C3C; 
	color: white; 
	width: 100px; 
	height: 40px; 
	border: 0; 
	outline: 0;
}

.applyListStyle2nd {
	font-size: 20px;
	font-family: Noto Sans KR;  
	border-bottom: 2px solid gray; 
	padding: 50px; 
	position: relative; 
	left: 100px; 
	top: 120px; 
	width: 1100px !important;
}


.applyTutoringMsg {
	display: flex;
	flex-direction: row-reverse;
	font-family: Noto Sans KR !important;
	font-size: 14px !important;
	color: #224abe !important;
	margin: 0px 60px 0px 0px !important;
}

</style>


<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript">
	
	$(document).ready(function(){
	
		// 상세보기 버튼 클릭시 튜티장 개설 튜터링 페이지로 이동  
		$('[id^=btnDetail]').on('click', function(){
			
			
			// location.href="/";
			
		})
		
		// 삭제 버튼 클릭시 튜터링 지원 내역 삭제		
		$("button[name='btnDelete']").on('click', function(e)
		{
			e.preventDefault();
			
			var APPLY_ID = $(e.target).closest("#applyList").find("input[name='APPLYID']").val()
	 
			
			$.ajax({
				type : 'get', 
				url : 'tutor_ApplyStatus', 
				data : { 'APPLY_ID' : APPLY_ID }, 
				success : function(data) 
				{
					alert("지원한 튜터링이 삭제되었습니다.");
					location.href="tutor_ApplyList";
				}				
			});
			
		});
		
		// 대화 버튼 클릭시 
		$("button[name='btnDialog']").on('click', function(e) {
			
			var APPLY_ID = $(e.target).closest("#applyButton").find("input[name='APPLYID']").val() 
			var MACH_LV_ID = $(e.target).closest("#applyButton").find("input[name='MACH_LV_ID']").val() 
			
			
			
			location.href="${pageContext.request.contextPath}/tutor_ApplyBoard?APPLY_ID=" + APPLY_ID ;
			
			
			// 지원 게시판으로 이동 
			/* $.ajax({
				type : 'POST', 
				url : '${pageContext.request.contextPath}/tutorApplyBoard', 
				data : { 'APPLY_ID' : APPLY_ID , 'MACH_LV_ID' : MACH_LV_ID }, 
				success : function(data) 
				{
					alert("지원한 튜터링이 매칭 되었습니다. ");
					// location.href="tutorApplyList";
				}				
			});
			 */	
			// 대화 가능 메시지 출력
			// var MACH_LV_ID = $("#applyButton").find("[id^=MACH_LV_ID]").val()
			
			// if ( $("[id^=MACH_LV_ID]").val == 6 ), function() {
			//	$("[id^=dialogMsg]").show();
					
		});
		
	});

</script>
</head>
<body>
	<!-- 메뉴 영역 -->
	<div id="wrapper">
	
		<!-- 사이드바 -->
		<div id="sidebar">
			<c:import url="tutorpage_sidebar.jsp"></c:import>
		</div>
		
		<!-- 헤더 -->
		<div id="content-wrapper" class="d-flex flex-column">
			
			<div id="content">
				<c:import url="tutorpage_header.jsp"></c:import>
				
				<!-- 내용 -->
				<div class="container-fluid">
					<c:import url="Contents_tutorpage_Matching_apply.jsp"></c:import>
				</div>

			</div>

		</div>
	</div>
</body>
</html>