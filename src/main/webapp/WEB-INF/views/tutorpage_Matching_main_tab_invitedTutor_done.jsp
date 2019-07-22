<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Tutor_Tutoring_Invited.jsp</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

<!-- Custom fonts for this template-->
<link href="${cp}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="${cp}/css/ces/Accordion.css" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${cp}/css/lsh/sb-admin-2.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${cp}/css/lsh/matching08.css">
<link rel="stylesheet" href="${cp}/css/lsh/matching07.css" />
<link rel="stylesheet" href="${cp}/css/lsh/myCss02.css" />
<style type="text/css">
.btn-default-list {
	display: inline-block;
	font-weight: 400;
	text-align: center;
	vertical-align: middle;
	color: #5e5d5d;
	background-color: #fff;
	border-color: #5e5d5d;
	border: 1px solid #5e5d5d;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	line-height: 1.5;
	border-radius: 0.35rem;
	/* transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out,
		-webkit-box-shadow 0.15s ease-in-out; */
	width: 100px;
}

.wrapper {
    display: flex;
    width: 100%;
}

.input-msg {
    float: left;
    box-sizing: border-box;
    padding-right: 80px;
    width: 100%;
}

.input-btn-position {
    position: absolute;
    top: 0;
    right: 0;
    width: 80px;
    min-height: 42.5px !important;
}

.FixTutoringMsg {
	display: block;
	font-family: Noto Sans KR !important;
	font-size: 15px !important;
	color: #224abe !important;
	text-align: center;
	margin: 90px !important;
}
</style>

<!-- Custom styles for this template -->
<!------ Include the above in your HEAD tag ---------->
<script type="text/javascript" src="${cp}/js/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript">
	/* Matching_main_tab_invitedTutor_done.jsp 의 js : 대화 / 개설 이동 jQuery */ 
	$(document).ready(function() {
		showTab();
		
		// 대화 탭에서 초대목록으로 이동
 		$('#INVITEDLIST').on('click', function() {
			location.href="${cp}/tutor_InvitedList";
		});
		
		// 개설 탭에서 초대목록으로 이동
 		$('#INVITEDLIST2').on('click', function() {
			location.href="${cp}/tutor_InvitedList";
		});
		
		// 개설 탭에서 튜터링 개설로 이동
 		$('#CREATE').on('click', function() {
			location.href="${cp}/makingtutor";
		});
		
		
		// 튜터의 튜터링 확정 
		$('[id^=TUTORFIX]').on('click', function() {
			var INVITED_ID = $('#formTutorMsg').find('[id^=INVITED_ID]').val();
			var MACH_LV_ID = 8;
			
			var form = $('#tutorInvitedStatusForm');
			form.find('#INVITED_ID').val(INVITED_ID);
			form.find('#MACH_LV_ID').val(MACH_LV_ID);
			form.submit();
		});
		
		// 탭 대화/개설
		$('#tab-button a').on('click', function() {
			var id = $(this).attr('id');
			
			var INVITED_ID = $('#INVITED_ID_ALL').val();
			var MACH_LV_ID = $('#MACH_LV_ID_ALL').val();
			
			if(id == 'tabBtn01') {
				location.href = '${cp}/tutor_InvitedBoard?INVITED_ID=' + INVITED_ID;
			} else {
				location.href = '${cp}/tutor_InvitedTutoringDetail?INVITED_ID=' + INVITED_ID + '&MACH_LV_ID=' + MACH_LV_ID;
			}
		});
	});
	
	function showTab() {
		var tab = '${TAB}';
		var tab_button_li = $('#tab-button li');
		var activeClass = 'is-active';
		var INVITED_ID = $('#INVITED_ID').val();
		var MACH_LV_ID = $('#MACH_LV_ID').val();
		if(tab == '1') {
			tab_button_li.first().addClass(activeClass);
			tab_button_li.last().removeClass(activeClass);
			$('#tab01').show();
			$('#tab02').hide();
			$('#INVITED_ID_ALL').val(INVITED_ID);
			$('#MACH_LV_ID_ALL').val(MACH_LV_ID);
		} else {
			tab_button_li.first().removeClass(activeClass);
			tab_button_li.last().addClass(activeClass);
			$('#tab01').hide();
			$('#tab02').show();
		}
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
					<c:import url="Matching_main_tab_invitedTutor_done.jsp"></c:import>
				</div>
				
			</div>
		</div>
	</div>
	
	<form id="tutorInvitedStatusForm" action="tutor_InvitedBoardFix" method="post">
		<input type="hidden" id="INVITED_ID" name="INVITED_ID" />
		<input type="hidden" id="MACH_LV_ID" name="MACH_LV_ID" />
	</form>
</body>
</html>