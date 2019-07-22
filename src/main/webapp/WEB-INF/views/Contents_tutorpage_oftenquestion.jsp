<%@ page contentType="text/html; charset=UTF-8"%>


	<!-- 메뉴 영역 -->
	<div id="wrapper">

		<div id="sidebar">
			<c:import url="tutorpage_sidebar.jsp"></c:import>
		</div>

		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="tutorpage_header.jsp"></c:import>

				<!-- 자주묻는 질문 아코디언 -->
				<div class="container-fluid">
						<div>
							<span style="font-size:20px; font-family:Noto Sans KR; border-top:1px solid gray; border-bottom:1px solid gray;
							padding:10px; position:relative; top:50px; left:100px;">자주묻는질문</span>
						</div>					
						
						<div style="width: 1200px; position:relative; top:100px; left:100px;">
							<button style="border:0; outline:0;" class="accordion">
							<img src="image/ces/questionicon.png" style="width:30px; height:30px;">
							<span style="padding:0px 0px 0px 10px;">[취소 및 환불] 환불 요청은 어떻게 하나요?</span></button>
						<div class="panel">
							  <pre>
							  
	신청 취소 및 환불 신청 방법은 다음과 같습니다.
							 
	[환불 신청 방법]
							
							
	1. 해당 튜터링을 결제한 계정으로 로그인
							
	2. [내 튜터링] 클릭
							
	3. [신청 내역] 탭에서 취소를 원하는 튜터링의 [상세 정보] 클릭
							
	4. 상세 정보 > 튜터링 하단의 [이 옵션 취소] 또는 [이 일정 취소] 클릭
							
	5. 환불신청 절차에 따라 필요한 경우 예금주, 은행명, 계좌번호 입력
							
							
	환불 관련으로 문의사항 있으시면 카카오톡 또는 전화로 문의 주시기 바랍니다.
							
							
	전화 : 02-512-3662
							
							
	(평일 11:00~18:00)
							
	(점심시간 13:00~14:00)
	 						</pre>
						</div>						
							<button style="border:0; outline:0;" class="accordion">
							<img src="image/ces/questionicon.png" style="width:30px; height:30px;">
							<span style="padding:0px 0px 0px 10px;">[서비스 사용] 후기는 어떻게 작성하나요?</span></button>
						<div class="panel">
							<pre>
							
	후기 잘 부탁드립니다. 허허허
							</pre>
						</div>						
							<button style="border:0; outline:0;" class="accordion">
							<img src="image/ces/questionicon.png" style="width:30px; height:30px;">
							<span style="padding:0px 0px 0px 10px;">[결제] 현장에서 현금으로 드리면 안되나요?</span></button>
						<div class="panel">
							<pre>
							
	전 현금이 좋아요. 현금사랑
							</pre>
						</div>	
					</div>		
					
					
					<!-- Accordion 자바스크립트 -->
					<script>
					var acc = document.getElementsByClassName("accordion");
					var i;
					
					for (i = 0; i < acc.length; i++) {
					  acc[i].addEventListener("click", function() {
					    this.classList.toggle("active");
					    var panel = this.nextElementSibling;
					    if (panel.style.maxHeight){
					      panel.style.maxHeight = null;
					    } else {
					      panel.style.maxHeight = panel.scrollHeight + "px";
					    } 
					  });
					}
					</script>
										
				</div>
				<!-- 자주묻는 질문 아코디언 End-->
				
				
				<!-- 질문/답변 등록하기 -->
				<div class="container" style="position:relative; left:100px; top:200px;">				
				<div>
					<span style="border-bottom:1px solid gray; padding:10px; font-family:Noto Sans KR;">질문과 답변 등록하기</span>
				</div>
				
				<div style="padding:20px 0px 0px 0px;">
					<div class="row">	                                
	                    <div class="col-5">
	                       <div class="form-group">
	                          <label for="question" style="padding:0px 10px;">Q.</label>
	                          <input type="text" class="form-control" id="question" style="width:600px; display:inline-block;" placeholder="질문을 입력해주세요.">  
	                           <button type="button" style="position:relative; bottom: 35px; left:620px; width:25px; display:inline-block; 
	                           vertical-align:middle;" id="minus">-</button>        
	                       </div>
	                       
	                       <div class="form-group" style="display:inline-block; position:relative; top:-30px;">
	                          <label for="question" style="float:left; padding:0px 10px;">A.</label><input type="text" class="form-control" id="answer"
	                          style="width:600px; display:inline-block" placeholder="답변을 입력해주세요.">         
	                       </div>
	                    </div>
		             </div>
		             
		             <div class="row">
	                        <div class="col-4">
	                           <div class="form-group">	                           	
	                              <label for="question" style="float:left; padding:0px 10px;">Q.</label>	                                                                            
	                              <input type="text" class="form-control" id="question"style="width:600px; display:inline-block;" 
	                              placeholder="질문을 입력해주세요.">  
	                              <button type="button" style="position:relative; bottom: 35px; left:620px; width:25px; display:inline-block; 
	                              vertical-align:middle;" id="minus">-</button>       
	                              <button type="button" style="position:relative; bottom: 35px; left:620px; width:25px; display:inline-block; 
	                              vertical-align:middle;" id="plus">+</button>       
	                           </div>
	                           
	                           <div class="form-group" style="display:inline-block; position:relative; top:-30px;">
	                              <label for="question" style="float:left; padding:0px 10px;">A.</label>
	                              <input type="text" class="form-control" id="answer"style="width:600px; display:inline-block" placeholder="답변을 입력해주세요.">         
	                           </div>
	                        </div>	                              
		             </div>
	             </div>	             	             
              </div>	
              <!-- 질문/답변 등록하기 End-->
              		
			</div>							
		</div>
	</div>
