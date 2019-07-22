<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<head>
	
 <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">	
 
 <meta charset="utf-8">

 <title>Tuteejang_TutoringSearch.jsp</title>

 <!-- Bootstrap core CSS -->
 <link href="<%=cp %>/vendor/ces/bootstrap/css/bootstrap.min.css" rel="stylesheet">

 <!-- Custom styles for this template -->
 <link href="css/business-frontpage.css" rel="stylesheet">
 
 <!-- 가격 슬라이더바 -->  
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 

 
 
 <link href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
   
	<style type="text/css">
	
	body
	{
		margin-top:20px;
		background:#eee;
		text-decoration:none;
	}
	.avatar.avatar-xl 
	{
	    width: 6rem;
	    height: 6rem;
	}
	.avatar 
	{
	    width: 4rem;
	    height: 4rem;
	    line-height: 4rem;
	    border-radius: 10%;
	    display: inline-block;
	    background: #ced4da no-repeat center/cover;
	    position: relative;
	    text-align: center;
	    color: #868e96;
	    font-weight: 600;
	    vertical-align: bottom;
	}
	.card 
	{
	    background-color: #fff;
	    border: 0 solid #eee;
	    border-radius: 0;
	}
	.card 
	{
	    margin-bottom: 30px;
	    -webkit-box-shadow: 2px 2px 2px rgba(0,0,0,0.1), -1px 0 2px rgba(0,0,0,0.05);
	    box-shadow: 2px 2px 2px rgba(0,0,0,0.1), -1px 0 2px rgba(0,0,0,0.05);
	}
	.card-body 
	{
	    padding: 1.25rem;
	}
	.tile-link
	{
	    position: absolute;
	    cursor: pointer;
	    width: 100%;
	    height: 100%;
	    left: 0;
	    top: 0;
	    z-index: 30;
	}
	
	/* paging css */
	a{
	    color:#555;
	    text-decoration:none;
	}
	 
	#paging{
	    text-align:center;
	    line-height:1.3em;
	    margin-top:10px;
	}
	#paging a,
	#paging strong{
	    padding:2px 5px;
	    border:1px solid #CCC;
	    display:inline-block;
	    border-radius:5px;
	    
	}
	#paging a:hover,
	#paging strong{
	    color:#000;
	    border:1px solid #666;
	    background:#CDAFD1;
	    text-decoration:none;
	    border-radius:5px;
	}
	
	
	</style>
    
    
 <script type="text/javascript">

	/* 클릭시 필터창 열리고 닫힘 */
	function filter()
	{			
    var filter = document.getElementById("filterlist");
    var filter1 = document.getElementById("filterlist1");
    var filter2 = document.getElementById("filterlist2");
    var filter3 = document.getElementById("filterlist3");

	    if(filter.style.display=='none')
		{
	    	filter.style.display = 'block';
	    }
	    else
		{
	        filter.style.display = 'none';
	    }
	    if(filter1.style.display=='none')
		{
	        filter1.style.display = 'block';
	    }else
		{
	        filter1.style.display = 'none';
	    }
	    if(filter2.style.display=='none')
		{
	        filter2.style.display = 'block';
	    }else
        {
	        filter2.style.display = 'none';
	    }
	    if(filter3.style.display=='none')
		{
	        filter3.style.display = 'block';
	    }else
        {
	        filter3.style.display = 'none';
	    }
	
	}
	/* 클릭시 필터창 열리고 닫힘 End */

	
	/* 필터 가격 슬라이더바 페이지 로드 */
	$(document).ready( function() 
	{
		$("#sliderbar").load("Filter_Sliderbar.jsp");
	}); 
	/* 필터 가격 슬라이더바 페이지 로드 End */
		
		
		$(document).ready( function() 
		{
			$("#Header").load("Header_Sidebar_done_SearchPage.jsp");
		}); 
	</script>


	


</head>

<body>
    
    
   <div id="Header" style="position:relative; width:100%; top:-55px;"></div> 
    
  <!-- 제목부터 필터까지 -->  
  <div class="container">

    <br>
    <br>
    <br>
              
    <!-- 튜터링 찾기 제목 -->         
    <div style="padding:200px 0px 50px 0px;">    
	    <span style="font-family:Noto Sans KR; font-weight:bold; font-size:25px; border-top:1px solid gray; border-bottom:1px solid gray;
	    padding: 10px;">
	    튜터링 찾기 - 튜터/튜티 모집</span>
    </div>
    <!-- 튜터링 찾기 제목 End--> 
    
    <!-- 튜터링 모집하기 버튼 -->
    <div>
    	<button class="btn btn-primary btn-lg btn-block" style="font-weight:bold; height:70px; 
    	background-color:#8D44AD;">튜터링 모집하기</button>
    </div>
    <!-- 튜터링 모집하기 버튼 End-->
    
    <br>
    <br>  
           
           
	<div style="border-top:1px solid gray; border-bottom:1px solid gray; padding:10px;">
	    <span style="font-family:Noto Sans KR; font-weight:bold; font-size:20px;">Filter</span>
    </div>   
         
     
    <!-- 4칸 영역 -->
<div class="row text-center" style="font-family:Noto Sans KR; border-bottom:1px solid gray; padding:20px;">
    
    <!-- 필터링 제목들 -->
    <div style="display:inline;">
    	<div style="display:inline; float:left;">
		    <div style="display:inline; float:left; padding:0px 15px;">
		    	<button id="region" style="font-weight:bold; background-color:gray; color:white; width:180px; height:80px; border:0; outline:0;" onclick="filter()">
		    	지역<br><span>전체</span></button>
		    </div>	    
		    <div style="display:inline; float:left; padding:0px 15px;">
		    	<button style="font-weight:bold; background-color:gray; color:white; width:180px; height:80px; border:0; outline:0;">언어<br>전체</button>
		    </div>	    
		    <div style="display:inline; float:left; padding:0px 15px;">
		    	<button style="font-weight:bold; background-color:gray; color:white; width:180px; height:80px; border:0; outline:0;">희망시간<br>전체</button>
		    </div>	    
		    <div style="display:inline; float:left; padding:0px 15px;">
		    	<button style="font-weight:bold; background-color:gray; color:white; width:180px; height:80px; border:0; outline:0;">예상가격<br>전체</button>
		    </div>	    
	    </div>
	    <div style="display:inline; float:left; padiing:0px 0px 0px 10px;">
	    	<button style="font-weight:bold; background-color:#8D44AD; color:white; width:220px; height:80px; font-size:30px;">필터 검색</button>
	    </div>	    
	</div> 
	<!-- 필터링 제목들 End-->
			
			    <ul id="filterlist" style="list-style:none; display:none;" >
					<li style="padding:10px 0px 0px 0px;">
						<ul style="list-style:none;">
							<li>
							<label >
								<input type="checkbox">
								<span>홍대</span>
							</label>
							</li>								
						</ul>
					</li>						
					<li >
						<ul style="list-style:none;">
							<li>
							<label >
								<input type="checkbox">
								<span>강남</span>
							</label>
							</li>								
						</ul>
					</li>						
					<li >
						<ul style="list-style:none;">
							<li>
							<label >
								<input type="checkbox">
								<span>종로</span>
							</label>
							</li>								
						</ul>
					</li>						
				</ul>
				
				
				
				<ul id="filterlist1" style="list-style:none; position:relative; left:85px; display:none;;">
					<li style="padding:10px 0px 0px 0px;">
						<ul style="list-style:none;">
							<li >
							<label style="position:relative; right:20px;">
								<input type="checkbox" >
								<span>JAVA</span>
							</label>
							</li>								
						</ul>
					</li>			
					<li >
						<ul style="list-style:none;">
							<li>
							<label style="position:relative; right:7px;">
								<input type="checkbox">
								<span>PYTHON</span>
							</label>
							</li>								
						</ul>
					</li>			
					<li >
						<ul style="list-style:none;">
							<li>
							<label style="position:relative; right:12px;">
								<input type="checkbox">
								<span>MYSQL</span>
							</label>
							</li>								
						</ul>
					</li>			
				</ul>
				
				<ul id="filterlist2" style="list-style:none; position:relative; left:120px; display:none;;">
					<li style="padding:10px 0px 0px 0px;">
						<ul style="list-style:none;">
							<li>
							<label >
								<input type="checkbox">
								<span>평일오전</span>
							</label>
							</li>								
						</ul>
					</li>			
					<li >
						<ul style="list-style:none;">
							<li>
							<label >
								<input type="checkbox">
								<span>평일오후</span>
							</label>
							</li>								
						</ul>
					</li>			
					<li >
						<ul style="list-style:none;">
							<li>
							<label >
								<input type="checkbox">
								<span>주말오전</span>
							</label>
							</li>								
						</ul>
					</li>			
					<li >
						<ul style="list-style:none;">
							<li>
							<label >
								<input type="checkbox">
								<span>주말오후</span>
							</label>
							</li>								
						</ul>
					</li>			
				</ul>	
				
				<!-- 필터링 가격대 슬라이드바 -->
				<ul id="filterlist3" style="position:relative; left:160px; display:none;" >
					<li style="padding:10px 0px 0px 0px; ">
						<ul style="list-style:none;">
							<li>
								<span id="sliderbar"></span>
							</li>								
						</ul>
					</li>											
				</ul>								
			  
</div>		

  </div>
  <!-- 제목부터 필터까지 End--> 
  
  <br>
  <br>
 

<!-- 검색된 튜터링 리스트 출력 -->
<div class="container">
	<div class="card">
            <div class="card-body" style="position:relative; left:30px;">
          	   <div class="row">
                <div class="col">
                   <div class="media align-items-center">
                      <span style="background-image: url( 'images/tutor1.png' ); border-radius:50%"
                         class="avatar avatar-xl mr-3"></span>
                      <div class="media-body overflow-hidden">
                         <h5 class="card-text mb-0">김정규</h5>
                         <p class="card-text text-uppercase text-muted">Memora</p>
                         <p class="card-text">

                            경력사항: 강원도 감자를 잘캠<br> 전화번호: 010-1111-1111
                         </p>
                      </div>
                   </div>
                   <a href="#" class="tile-link"></a>
                </div>
                <div class="col-2">
                   <br> <br> <span style="font-size:20px; position:relative; right:20px;">240,0000원</span>
                </div>
             </div>
          </div>
       </div>
       <div class="card">
          <div class="card-body" style="position:relative; left:30px;">
             <div class="row">
                <div class="col">
                   <div class="media align-items-center">
                      <span style="background-image: url( 'images/tuti.jpg' ); border-radius:50%"
                         class="avatar avatar-xl mr-3"></span>
                      <div class="media-body overflow-hidden">
                         <h5 class="card-text mb-0">김정규</h5>
                         <p class="card-text text-uppercase text-muted">Memora</p>
                         <p class="card-text">

                            경력사항: 강원도 감자를 잘캠<br> 전화번호: 010-1111-1111
                         </p>
                      </div>
                   </div>
                   <a href="#" class="tile-link"></a>
                </div>
                <div class="col-2">
                   <br> <br> <span style="font-size:20px; position:relative; right:20px;">240,0000원</span>
                </div>
             </div>
          </div>
       </div>
       <div class="card">
          <div class="card-body" style="position:relative; left:30px;">
             <div class="row">
                <div class="col">
                   <div class="media align-items-center">
                      <span style="background-image: url( 'images/tutor2.png' ); border-radius:50%"
                         class="avatar avatar-xl mr-3"></span>
                      <div class="media-body overflo w-hidden">
                         <h5 class="card-text mb-0">김정규</h5>
                         <p class="card-text text-uppercase text-muted">Memora</p>
                         <p class="card-text">

                            경력사항: 강원도 감자를 잘캠<br> 전화번호: 010-1111-1111
                         </p>
                      </div>
                   </div>
                   <a href="#" class="tile-link"></a>
                </div>
                <div class="col-2">
                   <br> <br> <span style="font-size:20px; position:relative; right:20px;">240,0000원</span>
                </div>
             </div>
          </div>
       </div>
</div>
<!-- 검색된 튜터링 리스트 출력 End-->

<br>
<br>

	<!-- 튜터링 리스트 페이징 -->
	
	<div id="paging" style="padding: 0px 0px 100px; text-decoration:none;">
    <a href="#">Prev</a>
    <a href="#">1</a>
    <strong>2</strong>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">Next</a>
	</div>
	
	<!-- 튜터링 리스트 페이징 End-->
	
            

  <!-- 코드링 앱에서도 만나요 Footer -->
  <footer class="py-5" style="background-color: #9B59B6; height:400px;">
    <div class="container">
  	 
	      <p class="m-0 text-white" style="font-size:40px; font-weight:bold; padding:60px 0px 0px 230px;">코드링,</p>
	      <p class="m-0 text-white" style="font-size:40px; font-weight:bold; padding:20px 0px 0px 230px;">곧 앱에서도 만나요!</p>
       	  
    </div>
    
    <div style="position:relative; top:-210px; padding:0px 0px 0px 1050px;">
	      <img src="images/cellphone.png">
    </div>   
  </footer>
  <!-- 코드링 앱에서도 만나요 Footer End-->
  
  

  <!-- Bootstrap core JavaScript -->
  <script src="<%=cp %>/vendor/ces/jquery/jquery.min.js"></script>
  <script src="<%=cp %>/vendor/ces/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
