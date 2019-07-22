<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>튜터페이지</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="${cp}/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="${cp}/css/ces/Accordion.css" rel="stylesheet">
<link href="${cp}/css/lsh/sb-admin-2.css" rel="stylesheet">
<style type="text/css">
.invitedListSubject {
	font-family: Noto Sans KR;
	font-size: 20px;
	border-top: 2px solid gray;
	border-bottom: 2px solid gray;
	padding: 10px;
	position: relative;
	top: 50px;
	left: 100px;
}

.invitedListStyle {
	font-size: 20px;
	border-top: 2px solid gray;
	border-bottom: 2px solid gray;
	padding: 50px;
	position: relative;
	left: 100px;
	top: 120px;
	width: 1100px;
}

.invitedTutoringSubjectStyle {
	font-family: 맑은고딕;
	font-weight: bold;
}

.invitedTutoringContentStyle {
	padding: 5px;
	font-family: Noto Sans KR;
}

.invitedTutoringButtonDiv {
	/* font-family: monospace; 
	position: relative; 
	left: 20px; 
	bottom: 55px; */
	position: absolute;
	top: 55px;
	right: 50px;
	left: 50px;
	bottom: 50px;
}

.invitedTutoringButtonReject {
	font-family: Noto Sans KR !important;
	border-radius: 5px !important;
	font-weight: bold !important;
	float: right !important;
	font-size: 16px !important;
	background-color: #9B59B6 !important;
	color: white !important;
	width: 100px !important;
	height: 40px !important;
	border: 0 !important;
	outline: 0 !important;
}

.invitedTutoringButtonAccept {
	font-family: Noto Sans KR !important;
	border-radius: 5px !important;
	font-weight: bold !important;
	float: right !important;
	font-size: 16px !important;
	background-color: #9B59B6 !important;
	color: white !important;
	width: 100px !important;
	height: 40px !important;
	border: 0 !important;
	outline: 0 !important;
	margin-right: 10px !important;
}

.invitedTutoringButtonDetail {
	font-family: Noto Sans KR !important;
	border-radius: 5px !important;
	font-weight: bold !important;
	float: right !important;
	font-size: 16px !important;
	background-color: #9B59B6 !important;
	color: white !important;
	width: 100px !important;
	height: 40px !important;
	border: 0 !important;
	outline: 0 !important;
	margin-right: 10px !important;
}

.invitedTutoringButtonDialog {
	font-family: Noto Sans KR !important;
	border-radius: 5px !important;
	font-weight: bold !important;
	float: right !important;
	font-size: 16px !important;
	background-color: #ffbb33 !important;
	color: white !important;
	width: 100px !important;
	height: 40px !important;
	border: 0 !important;
	outline: 0 !important;
	margin-right: 10px !important;
}

.invitedTutoringMsg {
	display: flex;
	flex-direction: row-reverse;
	font-family: Noto Sans KR !important;
	font-size: 14px !important;
	color: #224abe !important;
	margin: 0px 60px 0px 0px !important;
}
</style>

<script type="text/javascript" src="${cp}/js/jquery.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 초대수락 버튼 클릭시 대화 버튼으로 변경
		$("[id^=tutorAccept]").on('click', function() {
			$(this).hide();
			$("[id^=dialog]").show();
			$("[id^=dialogMsg]").show();
		});
		
		// 초대거절 버튼 클릭시 초대받은 튜터링 삭제 
		$('[id^=tutorDeny]').on('click', function() {
			$('[id^=invitedList]').remove();

			var INVITED_ID = $(this).parents('[id^=invitedList]').find('[id^=invitedId]').val();
			var MACH_LV_ID = 2;
			setTutorStatus(INVITED_ID, MACH_LV_ID);
		});
		
		// 초대수락 버튼 클릭시
		$('[id^=dialog]').on('click', function() {
			var INVITED_ID = $(this).parents('[id^=invitedList]').find('[id^=invitedId]').val();
			var MACH_LV_ID = 5;
			setTutorStatus(INVITED_ID, MACH_LV_ID);
		});
	});
	
	function setTutorStatus(INVITED_ID, MACH_LV_ID) {
		var form = $('#tutorInvitedStatusForm');
		form.find('#INVITED_ID').val(INVITED_ID);
		form.find('#MACH_LV_ID').val(MACH_LV_ID);
		form.submit();

	}
</script>
</head>

<body>
	<!-- 메뉴 영역 -->
	<div id="wrapper">

		<!-- 사이드바 -->
		<div id="sidebar">
			<c:import url="tutorpage_sidebar.jsp"></c:import>
		</div>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">

				<!-- 헤더 -->
				<c:import url="tutorpage_header.jsp"></c:import>

				<!-- 내용 -->
				<div class="container-fluid">
					<c:import url="Contents_tutorpage_Matching_invited.jsp"></c:import>
				</div>

			</div>
		</div>
	</div>
	
	<form id="tutorInvitedStatusForm" action="${cp}/tutor_InvitedStatus" method="post">
		<input type="hidden" id="INVITED_ID" name="INVITED_ID" />
		<input type="hidden" id="MACH_LV_ID" name="MACH_LV_ID" />
	</form>
</body>
</html>