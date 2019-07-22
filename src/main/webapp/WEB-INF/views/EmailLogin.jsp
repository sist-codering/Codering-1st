<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>


<head>
    <meta charset="utf-8">
    
    <title>TuteeJoin.jsp</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">   
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">       
    <style type="text/css">
    
    body
    {
    margin-top:20px;
    background-color: #f2f3f8;
	}
	.card 
	{
	    margin-bottom: 1.5rem;
	    box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
	}
	.card 
	{
	    position: relative;
	    display: -ms-flexbox;
	    display: flex;
	    -ms-flex-direction: column;
	    flex-direction: column;
	    min-width: 0;
	    word-wrap: break-word;
	    background-color: #fff;
	    background-clip: border-box;
	    border: 1px solid #e5e9f2;
	    border-radius: .2rem;
	}
	
    </style>
	    
	<script type="text/javascript">
	
	
		$(document).ready( function() 
		{
			$("#Header").load("Header_Sidebar_done.jsp");
		}); 
	</script>
	
	<script type="text/javascript">
		$(document).ready(function()
		{
			$("#LOGIN_MAIL").keydown(function(key)
			{
				if(key.keyCode == 13)
				{
					$("#login").click();
				}				
			});
			
			$("#PASSWORD").keydown(function(key)
			{
				if(key.keyCode == 13)
				{
					$("#login").click();
				}				
			});
	
			$("#login").click(function()
			{
				var LOGIN_MAIL = $("#LOGIN_MAIL").val();
				var PASSWORD = $("#PASSWORD").val();
				
				$.ajax({
					type : "post",
					url : "user_logincheck",
					data : {"LOGIN_MAIL" : LOGIN_MAIL , "PASSWORD" : PASSWORD},
					success : function(data)
					{
						if(data==0)
						{
							alert("아이디 또는 패스워드가 일치하지 않습니다.");
							return;
						}
						else
						{
							$("#loginGo").submit();
						}
					}
				})
				
			});			
		});
		
	</script>
    
</head>

<body>

 <div id="Header"></div>
 
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<!-- 회원가입 페이지-->
<div class="container h-100" style="position:relative; top:-730px;">
    		<div class="row h-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">
						
						<!-- 회원가입 폼 제목 부분 -->
						<!-- <div class="text-center mt-4">
							<h1 class="h2">회원가입</h1><br><br>
							<p class="lead">
								코드링에서는 Email 로 회원가입이 이뤄집니다.<br><br>
							</p>
						</div> -->
						<!-- 회원가입 폼 제목 부분 End -->
					
						
						<div class="card">
							<div class="card-body">
								<form id="loginGo" method="post" action="user_login">
								<div class="m-sm-4">									
									 <div>
								       <img src="images/userlogin.png" style="width:170px; height:170px; margin-left:32%; border-radius:100px;"><br><br>
								       <span style=" position:relative; left:188px; font-size:40px;">Login</span>								       
										</div>
									<br>
										<!-- ID 입력 -->
										<div class="form-group">
												<br>
												<div style="display:inline; float:left;">
													<input class="form-control form-control-lg" type="text" id="LOGIN_MAIL"
													name="LOGIN_MAIL" style="width:490px;"placeholder="Email 입력">
												</div>											
										</div>
										<!-- ID 입력 End-->
										
										<br>
										
										<!-- 비밀번호 입력 -->
										<div class="form-group">
											<br>
											<div style="display:inline;">										
												<div style="display:inline; float:left;">
													<input class="form-control form-control-lg" type="password" id="PASSWORD"
													name="PASSWORD" style="width:490px;"placeholder="Password 입력">
												</div>											
											</div>
										</div>
										<!-- 비밀번호 입력 End -->
										
										<br>
										<br>
										<br>										
																			
										
										<!-- 가입하기 버튼 -->
										<div class="text-center mt-3">
											<button type="button" class="btn btn-lg btn-primary" id="login"
											style="text-align:center; color:white; background-color:#9A2EFE; height: 50px; width:100%;">
											로그인하기</button>
											<!-- <button type="submit" class="btn btn-lg btn-primary">Reset password</button> -->
										</div>
										<!-- 가입하기 버튼 End-->
										
										<br>
										
										 <div style="padding:30px; font-size:17px;">
											<a href="user_openSignUp" style="text-decoration:none; position:relative; left:42%;">회원가입</a>
											<br><br>
											<a href="http://www.naver.com" style="text-decoration:none; position:relative; left:31%;">아이디/비밀번호 찾기</a>
											<br><br>
											<a href="user_main" style="text-decoration:none; position:relative; left:42%;">메인으로</a>
								        </div>
										
										
									</div>
									</form>
								</div>
							</div>
							<!-- 회원가입 Form -->
					</div>
				</div>
			</div>
</div>

<!-- 회원가입 페이지 End-->

</body>
</html>