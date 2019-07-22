<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper" style="height: 100%;">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="user_main">
				<div class="sidebar-brand-icon rotate-n-15">
					<!-- 윙크 이모티콘 -->
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					Codering <sup>㈜</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - 튜터 프로필 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#tutorProfile"
				aria-expanded="true" aria-controls="tutorProfile"> <i
					class="fas fa-fw fa-folder"></i> <span>튜터 프로필</span>
			</a>
				<div id="tutorProfile" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">tutor profile</h6>
						<a class="collapse-item" href="tutor_info">프로필 보기</a>
						<a class="collapse-item" href="<%=cp %>/tutor_info_updateform" id="updateInfo">프로필 수정</a> 
					</div>
				</div></li>



			<!-- Nav Item - 튜터링 개설 -->
			<li class="nav-item"><a class="nav-link" href="makingtutor"> <i
					class="fas fa-fw fa-folder"></i> <span>튜터링 개설</span></a></li>


			<!-- Nav Item - 나의 튜터링 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#myTutoring"
				aria-expanded="true" aria-controls="myTutoring"> <i
					class="fas fa-fw fa-folder"></i> <span>나의 튜터링</span>
			</a>
				<div id="myTutoring" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">my tutoring</h6>
						<a class="collapse-item" href="tutor_tutorpage_tutoring">진행 중 튜터링</a> 
							<a class="collapse-item" href="tutor_tutorpage_tutorrecruiting">모집 중 튜터링</a> <a
							class="collapse-item" href="tutor_tutorpage_tutorbefore">이전 튜터링</a>
					</div>
				</div></li>


			<!-- Nav Item - 매칭 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#maching" aria-expanded="true"
				aria-controls="maching"> <i class="fas fa-fw fa-folder"></i> <span>매칭</span>
			</a>
				<div id="maching" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">maching</h6>
						<a class="collapse-item" href="tutor_InvitedList">초대받은 튜터링</a> <a
							class="collapse-item" href="tutor_ApplyList">지원한 튜터링</a>
					</div>
				</div></li>



			<!-- Nav Item - 문의관리 -->

			<li class="nav-item"><a class="nav-link" href="tutor_tutorpage_qna_list"> <i
					class="fas fa-fw fa-folder"></i> <span>문의관리</span></a></li>

		</ul>
	</div>