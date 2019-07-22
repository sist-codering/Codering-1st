<html lang="en">
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
			$("#LOGIN_MAIL").on("propertychange change keyup paste input",function(e){
				
				e.preventDefault();
				
				$.ajax({
					type : "post",
					url : "user_idOverlap",
					data : {'LOGIN_MAIL' : $(this).val()},
					success : function(data)
					{
						// 아이디 중복검사에 대한 절차
						if(data == 0)
						{
							$("#check").html("사용가능한 아이디 입니다.");
						}
						else
						{
							$("#check").html("중복된 아이디 입니다.");
						}
					}
				});
				
				
			});
		});
		
		
	
	</script>
    
</head>

<body>

<div id="Header"></div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<!-- 회원가입 페이지-->
<div class="container h-100" style="position:relative; top:-730px;">
    		<div class="row h-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">
						
						<!-- 회원가입 폼 제목 부분 -->
						<div class="text-center mt-4">
							<h1 class="h2">회원가입</h1><br><br>
							<p class="lead">
								코드링에서는 Email 로 회원가입이 이뤄집니다.<br><br>
							</p>
						</div>
						<!-- 회원가입 폼 제목 부분 End -->
					
						
						<!-- 회원가입 Form -->
						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<form action="user_signUp" method="post">
										<!-- ID 입력 -->
										<div class="form-group">
												<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID로 사용할 Email을 입력해주세요.</label>
												<br>												
												<div style="display:inline;">										
												<div style="display:inline; float:left; font-size:30px; padding:5px;">
													<span style="color:red; font-weight:bold;">*</span>&nbsp;
												</div>											
												<div style="display:inline; float:left;">
													<input class="form-control form-control-lg" type="text" id="LOGIN_MAIL"
													name="LOGIN_MAIL" style="width:410px;"placeholder="Email 입력">
												</div>
													<span id="check">사용가능한 아이디입니다.</span>
																						
											</div>											
										</div>
										<!-- ID 입력 End-->
										
										<br>
										<br>
										<br>
										
										<!-- 비밀번호 입력 -->
										<div class="form-group">
											<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호를 입력해주세요.</label>
											<br>
											<div style="display:inline;">										
												<div style="display:inline; float:left; font-size:30px; padding:5px;">
													<span style="color:red; font-weight:bold;">*</span>&nbsp;
												</div>											
												<div style="display:inline; float:left;">
													<input class="form-control form-control-lg" type="password" 
													name="PASSWORD" style="width:410px;"placeholder="Password 입력">
												</div>											
											</div>
										</div>
										<!-- 비밀번호 입력 End -->
										
										<br>
										<br>
										<br>
										
										<!-- 입력한 비밀번호 확인 -->
										<div class="form-group">
											<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호를 한 번 더 입력해주세요.</label>
											<br>
											<div style="display:inline;">										
												<div style="display:inline; float:left; font-size:30px; padding:5px;">
													<span style="color:red; font-weight:bold;">*</span>&nbsp;
												</div>											
												<div style="display:inline; float:left;">
													<input class="form-control form-control-lg" type="password" 
													style="width:410px;"placeholder="Password 확인">
												</div>											
											</div>
										</div>
										<!-- 입력한 비밀번호 확인 End-->
										
										<br>
										<br>
										<br>
										
										<!-- 사용할 닉네임 입력 -->
										<div class="form-group">
											<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사용할 닉네임을 입력해주세요.</label>
											<div style="display:inline;">										
																			
												<div style="display:inline; position:relative; left:27px;">
													<input class="form-control form-control-lg" type="text" 
													name="NICKNAME" style="width:410px;"placeholder="닉네임 입력">
												</div>											
											</div>
										</div>
										<!-- 사용할 닉네임 입력 End-->
										
										<br>
										
										<!-- 휴대폰 번호 입력 -->
										<div class="form-group">
											<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;휴대폰 번호를 입력해주세요.</label>
											<div style="display:inline;">										
																							
												<div style="display:inline; position:relative; left:27px;">
													<input class="form-control form-control-lg" type="tel" 
													name="PHONENUM" style="width:410px;"placeholder="휴대폰 번호 입력">
												</div>											
											</div>																					
										</div>
										<!-- 휴대폰 번호 입력 End -->
										
										
										<!-- 휴대폰 번호 인증 부분 코멘트와 인증하기 버튼 -->
										<div style="float:right;">
										<button type="submit" class="btn" style="background-color:#BE81F7; color:white; 
										font-weight:bold; position:relative; right:18px;">인증하기</button>
										</div>										
										
										<div>
										<span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;휴대폰 번호는 아이디 찾기에 사용됩니다.
										<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;미입력시 <span style="color:red;">아이디 찾기 기능</span>을 이용하실 수 <br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;없습니다.
										</span>										
										</div>
										<!-- 휴대폰 번호 인증 부분 코멘트와 인증하기 버튼 End -->
										
										<br><br>
										
										
										<!-- 이용약관 동의 -->
										<div style="text-align:center;">
											<input type="checkbox" style="width:20px; height:20px; vertical-align: middle; margin: 0px;">
											&nbsp;&nbsp;이용약관에 동의합니다.
											<br>								
											<br>		
											<a href="http://www.naver.com" style="color:blue; text-decoration:none;">약관보기</a>
										</div>
										<!-- 이용약관 동의 End-->
										
										<br>
										
										
										<!-- 가입하기 버튼 -->
										<div class="text-center mt-3">
											<button type="submit" class="btn btn-lg btn-primary" 
											style="text-align:center; color:white; background-color:#9A2EFE; height: 50px; width:270px;">
											가입하기</button>											
										</div>
										<!-- 가입하기 버튼 End-->
										
										
										</form>
									</div>
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