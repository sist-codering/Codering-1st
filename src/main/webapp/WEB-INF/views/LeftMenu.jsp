<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<style type="text/css">


div 
{
	/* border: 1px solid #ccc; */
}

#sidebar 
{
	/* width: 200px; */
	/* padding: 20px; */
	float: left;
	/* margin-bottom: 20px; */
	
}

.side-list-group {
	list-style: none;
}

.sidbar2 {
	list-style: none;
	font-size: small;
}

/* 사이드바 글씨크기 */
.list-group-item {
	font-size: 15pt;
	font-weight: bold;
	margin-left: -20px;
}

/* ----아코디언메뉴---- */
/* checkbox 눈에안보이게 */
input[id="sidemenu"] {
	display: none;
}

/* checkbox덮은 label 설정 */
input[id="sidemenu"]+label {
	display: block;
	border-bottom: 0;
	color: #000;
	font-weight: bold;
	font-size: 15pt;
	background-color: #fff;
	cursor: pointer;
	margin-left: 40px;
	margin-bottom: 10px;
	color: #007BFF;
}

/* label밑에있는 div영역 설정 */
input[id="sidemenu"]+label+div {
	/* 최대 높이값 */
	max-height: 0;
	/* 움직이는 옵션 */
	transition: all .35s;
	/* 안 컨텐츠가 삐져나오지 않도록 */
	overflow: hidden;
	font-size: 11pt;
}

/* checkbox가 checked 되면 움직이게 만듦 */
input[id="sidemenu"]:checked+label+div {
	max-height: 200px;
}

</style>
<div id="sidebar">

	<!-- 아코디언바 설정 -->
 	 <div class="accordion">
 	 	<!-- checkbox이용 -->
      	<input type="checkbox" id="sidemenu">
      	<label for="sidemenu">나의 튜터링</label>
      	<div>
      	 <ul class="side-list-group">	
	      <li class="list-group-item-primary sidbar2"><a href="mypage_tuteeing">현재 진행중 튜터링</a></li>
	      <li class="list-group-item-primary sidbar2"><a href="mypage_tuteebefore">이전에 참여한 튜터링</a></li>
	      <li class="list-group-item-primary sidbar2"><a href="mypage_tuteeafter">예정된 튜터링</a></li>
	      <li class="list-group-item-primary sidbar2"><a href="mypage_tuteereserve">예약 튜터링</a></li>
	      <!-- <li class="list-group-item-primary sidbar2"><a href="#">후기</a></li> -->
	    </ul>
      	</div>
      	
      </div>
      	
      	
      
      	 <ul class="side-list-group">	     
      <li class="list-group-item"><a href="tutee_open">개설 튜터링</a></li>
      <li class="list-group-item"><a href="mypage_pick">찜한 튜터링</a></li>
      <li class="list-group-item"><a href="tutee_mypage_writtenboard">내가 쓴 글</a></li>
    </ul>
</div>
