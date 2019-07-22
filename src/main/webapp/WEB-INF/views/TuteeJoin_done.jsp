<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<title>TuteeJoin_done.jsp</title>

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    
    

<script type="text/javascript">
		$(document).ready( function() 
		{
			$("#Header").load("Header_Sidebar_done.jsp");
		}); 
</script>

</head>

<body>


<!-- 회원가입 완료 페이지 -->

<div id="Header" style="position:absolute; width:100%; height:70px;"></div>

<div style="text-align:center; position:relative; top:300px; font-family:Noto Sans KR; ">
	<!-- <div id="Header" style="position:relative; top:100px; width:1325px; height:70px; "></div> -->
	
	<div>
		<img src="images/check.png" style="width:250px; height:180px;"> <!-- 회원가입 V자 아이콘 이미지 -->
	</div>		
	<h1>
		회원가입이 완료되었습니다.
	</h1>
	<div>
		<p style="font-size:25px;">코드링에서 꿈과 날개를 펼치세요!</p>
	</div>
	
	<!-- 버튼(메인으로, 로그인)  -->
	<div style="position:relative; top:50px; ">
		
		<button style="padding:0; border:none; background-color:#E6E6E6; position:relative; top: 50px; right:50px; width:150px; height:70px;
		color:gray; font-weight:bold; border-radius:30px; font-size:20px;" 
		onclick="javascript:location.href='user_main'">메인으로</button>
		
		<button style="position:relative; top: 50px; left:20px; width:100px; height:50px; border:none; background-color:#AC58FA; width:150px;
		height:70px; color:white; font-weight:bold; border-radius:30px; font-size:20px;" 
		onclick="javascript:location.href='user_loginForm'">로그인</button>
		
	</div>
	<!-- 버튼(메인으로, 로그인) End -->
</div>
<!-- 회원가입 완료 페이지 End -->

		
</body>
</html>
