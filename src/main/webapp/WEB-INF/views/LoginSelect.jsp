<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

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

<div id="Header" style="position:absolute; width:100%; height:70px;"></div>

<!-- 로그인 종류 선택 -->
<div style="text-align:center; position:relative; top:300px; font-family:Noto Sans KR;">
	<div>
		<p style="font-size:70px;">Login</p>
	</div>
	
	<!-- 이메일로 로그인 -->
	<div>
		<button style="padding:0; border:none; background-color:#A4A4A4; width:480px; height:60px;
		color:#404040; font-weight:bold; border-radius:10px; font-size:20px;" onclick="">이메일로 로그인</button>
	</div>
	<!-- 이메일로 로그인 End-->
	
	<br>
	
	<!-- 카카오 계정으로 로그인 -->
	<div>
		<button style="padding:0; border:none; background-color:#F1C40F; width:480px; height:60px;
		color:#404040; font-weight:bold; border-radius:10px; font-size:20px;" onclick="">카카오계정으로 로그인</button>
		<div style="position:relative; right:170px; bottom:60px;">
			<img src="images/kakaologo.png" style="width:55px; height:55px;">
		</div>
	</div>
	<!-- 카카오 계정으로 로그인 End-->
	
	<!-- 구글 계정으로 로그인 -->
	<div>
		<div style="position:relative; top:-35px;">	
			<button style="padding:0; border:none; background-color:#4285F4; width:480px; height:60px;
			color:#404040; font-weight:bold; border-radius:10px; font-size:20px;" onclick="">구글계정으로 로그인</button>
		</div>
		<div style="position:relative; right:165px; bottom:90px;">
			<img src="images/googlelogo.png" style="width:55px; height:55px;">
		</div>
	</div>
	<!-- 구글 계정으로 로그인 End-->
	
</div>
<!-- 로그인 종류 선택 End-->

		
</body>
</html>
