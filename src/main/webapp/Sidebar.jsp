<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String cp = request.getContextPath();
%>
<link type="text/css" rel="stylesheet" href="<%=cp %>/headerFiles/css/sidebar.css">

<!-- 사이드바 아이콘 -->
<input type="checkbox" id="menuicon">
<label for="menuicon" style="width: 18px; height: 18px;"> 
 	<span class="span-sidebar"></span>
	<span class="span-sidebar"></span> 
	<span class="span-sidebar"></span>
</label>
<!--  <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
        		<span class="fas fa-bars"></span>
       </button>
        -->
       
       
       
       

<c:choose>
<c:when test="${empty loginInfo }">
<div class="sidebar" id="sidebar1" style="color: white; width: 350px;">

	<div class="row row-sidebar" style="margin-top: 90px; background: black;">
		<div class="col-4"></div>
		<div class="align-items-center" style="margin-left:10px;">
			<span style="background-image: url(  );" class="avatar avatar-xl mr-3 span-sidebar"></span>
		</div>
	</div>
	<div class="row row-sidebar" style="background: black; display:inline-block; padding:0px;">
		<div class="text-center">
			<p>로그인안한놈</p>
		</div>
	</div>
	<div class="row row-sidebar" style="background: black; display:inline-block;">
		<div class="text-center">
			<button type="button" class="btn btn-primary" onclick="javascript:location.href='user_loginForm'">로그인</button>
		</div>
	</div>
	<div class="row row-sidebar" >
		<div class="col">
			<span class="span-sidebar">튜터링 찾기</span>
			<div>
				<br>
				<a class="a-sidebar" href="#">-튜터</a><br>
				<a class="a-sidebar" href="#">-튜티장</a>
			</div>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">질문 게시판</a>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">자주 묻는 질문</a>
		</div>
	</div>
</div>
</c:when>


<c:when test="${empty loginInfo.TUTOR_ID }">
<div class="sidebar"  id="sidebar2" style="color: white; height: 100%;">

	<div class="row row-sidebar" style="margin-top: 90px; background: black;">
		<div class="col-4"></div>
		<div class="media align-items-center" style="margin-left:10px;">
			<span style="background-image: url( <%=cp %>/images/bill.jpg );" <%-- 이미지 삽입 --%>
				class="avatar avatar-xl mr-3 span-sidebar"></span>
		</div>
	</div>
	<div class="row row-sidebar" style="background: black; display:inline-block; padding:0px;">
		<div class="text-center">
			<p>튜티인놈</p>
		</div>
	</div>
	<div class="row row-sidebar" style="background: black; display:inline-block;">
		<div class="text-center">
			<button type="button" class="btn btn-primary">마이페이지</button>
			<button type="button" class="btn">로그아웃</button>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<span class="span-sidebar">튜터링 찾기</span>
			<div>
				<br> <a class="a-sidebar" href="#">-튜터</a><br> <a class="a-sidebar" href="#">-튜티장</a>
			</div>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<span class="span-sidebar">튜터링 개설</span>
			<div>
				<br> <a class="a-sidebar" href="#">-튜터</a><br> <a class="a-sidebar" href="#">-튜티장</a>
			</div>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">질문 게시판</a>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">마이 페이지</a>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">튜터 신청</a>
		</div>
	</div> 
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">자주묻는 질문</a>
		</div>
	</div>

</div>
</c:when>


<c:otherwise>
<div class="sidebar" id="sidebar3" style="color: white; height: 100%;">

	<div class="row row-sidebar" style="margin-top: 90px; background: black;">
		<div class="col-4"></div>
		<div class="media align-items-center" style="margin-left:10px;">
			<span style="background-image: url( img/bill.jpg );" <%-- 이미지 삽입 --%>
				class="avatar avatar-xl mr-3 span-sidebar"></span>
		</div>
	</div>
	<div class="row row-sidebar" style="background: black; display:inline-block; padding:0px;">
		<div class="text-center">
			<p>튜터인놈</p>
		</div>
	</div>
	<div class="row row-sidebar" style="background: black; display:inline-block;">
		<div class="text-center">
			<button type="button" class="btn btn-primary">마이페이지</button>
			<button type="button" class="btn">로그아웃</button>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<span class="span-sidebar">튜터링 찾기</span>
			<div>
				<br> <a class="a-sidebar" href="#">-튜터</a><br> <a class="a-sidebar" href="#">-튜티장</a>
			</div>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<span class="span-sidebar">튜터링 개설</span>
			<div>
				<br> <a class="a-sidebar" href="#">-튜터</a><br> <a class="a-sidebar" href="#">-튜티장</a>
			</div>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">질문 게시판</a>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">마이 페이지</a>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">튜터 페이지</a>
		</div>
	</div>
	<div class="row row-sidebar">
		<div class="col">
			<a class="a-sidebar" href="#" style="font-size: 20pt; font-weight: bold;">자주묻는 질문</a>
		</div>
	</div>
</div>
</c:otherwise>
</c:choose>
       