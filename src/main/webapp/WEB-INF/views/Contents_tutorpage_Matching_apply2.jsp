<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<!-- TODO TEST1 -->
<%-- <div id="test1">
${LIST}
</div> --%>
<section class="content">
	<!-- -------------------------------- -->
	<br /><br />
	<div class="tabs">
	
		<div class="tab-button-outer">
			<ul id="tab-button">
				<li><a href="#tab01">대화</a></li>
				<li><a href="#tab02">개설</a></li>
			</ul>
		</div>
		
		<div class="tab-select-outer">
			<select id="tab-select">
				<option value="#tab01">대화</option>
				<option value="#tab02">개설</option>
			</select>
		</div>
	
		<!-- TAB1 -->
		<div id="tab01" class="tab-contents">
			<!------------------------------- 내용 ---------------------------->
			<div class="">
				<div class="messaging">
					<div class="inbox_msg">
					
						<h5 class="title title_name">
							튜티장 아기천사 님
						</h5>
						
						<div class="mesgs">
							<div class="msg_history mCustomScrollbar">
							
<c:forEach var="list" items="${LIST}">
<c:if test="${list.TEXT_ALIGN eq 'RIGHT'}">	
								<!-- 보낸 메시지 : RIGHT [ -->
								<div class="outgoing_msg">
									<div class="sent_msg">
										<p class="padding_msg">
											${list.CONTENT }
										</p>
										<div class="time_date_flex_end">
											<div class="time_date read_right_color">
												${list.READCHECK}
											</div>
											<div class="time_date">
												${list.WRITEDATE } <!--  11:01 AM | July 9 -->
											</div>
										</div>
									</div>
								</div>
								<!-- 보낸 메시지 : RIGHT ] -->
</c:if>
<c:if test="${list.TEXT_ALIGN eq 'LEFT'}">
								<!-- 받은 메시지 -->
								<div class="incoming_msg">
									<div class="incoming_msg_img">
										<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" alt="sunil" class="rounded-circle">
									</div>
									
									<!-- 메시지 내용 -->
									<div class="received_msg">
										<div class="received_withd_msg">
											<p class="padding_msg">
												${list.CONTENT }
											</p>
											
											<div class="time_date_flex_start">
												<div class="time_date">
													${list.WRITEDATE } <!--  11:01 AM | July 9 -->
												</div>
												<div class="time_date read_left_color">
													${list.READCHECK}
												</div>
											</div>
										</div>
									</div>
								</div>
	</c:if>
</c:forEach>
<%--  
<c:if test="${LIST[0].MACH_LV_ID eq 8}">
							<!-- 확정 메시지 -->
							<div class="FixTutoringMsg">
							 	튜터링 내용을 확정하였습니다.   
								<br>
								튜티장의 확정 이후 튜터링을 개설해주세요!   
							</div>
</c:if>	
 --%>			
<!----------------------------------------------------------------------------------------------------------------------------------------------------->
							<form id="formTutorMsg" name="formTutorMsg" action="tutor_ApplyBoardMsg" method="post">	
								<div class="type_msg">
									<div class="input_msg_write input-group md-form" align="center">
										<div class="wrapper">
											<input type="hidden" id="APPLY_ID" name="APPLY_ID" value="${APPLY_ID}" />
											<%-- <input type="hidden" id="MACH_LV_ID" name="MACH_LV_ID" value="${LIST[0].MACH_LV_ID}" /> --%>
											<input type="text" id="TUTOR_MSG" name="TUTOR_MSG" class="write_msg form-control input-msg" placeholder="메시지를 입력하세요." />
											<button type="submit" id="TUTOR_SENDBTN" class="btn btn-default msg_send_btn input-group-btn input-btn-position">
												전송
											</button>
										</div>
									</div>
								</div>
							</form>
							
							<!-- 확정 버튼 -->
							<div align="center" class="margin-btn">
								<button type="button" id="APPLYLIST" class="btn btn-default-list msg_list_btn" >초대목록</button>
								<button type="button" id="TUTORFIX" class="btn btn-primary msg_confirm_btn">확정</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- close TAB1 -->
	
	
		<!-- TAB2 -->
		<div id="tab02" class="tab-contents">
	
			<div class="row">
				<div class="col">
	
					<div class="card">
						<div class="card-body">
							<div class="" style="padding: 50px;">
								<div class="text-center" style="margin-bottom: 50px;">
									<h1 class="h1">오라클 뿌시기</h1>
								</div>
								<div class="divTable">
									<div class="divTableBody">
										<div class="divTableRow">
											<div class="divTableCell1">권장 언어 및 레벨</div>
											<div class="divTableCell2">JAVA 고급</div>
										</div>
										<div class="divTableRow">
											<div class="divTableCell1">희망 지역</div>
											<div class="divTableCell2">신촌</div>
										</div>
										<div class="divTableRow">
											<div class="divTableCell1">희망 일정</div>
											<div class="divTableCell2">12주</div>
										</div>
										<div class="divTableRow">
											<div class="divTableCell1">희망 시간</div>
											<div class="divTableCell2">평일 오후</div>
										</div>
										<div class="divTableRow">
											<div class="divTableCell1">희망 인원수</div>
											<div class="divTableCell2">6 ~ 8명</div>
										</div>
										<div class="divTableRow">
											<div class="divTableCell1">희망 참가비</div>
											<div class="divTableCell2">450,000 원</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="content-invited">
							<h4>해당 튜터링을 개설하시겠습니까?</h4>
							<br>
							<h6 style="color: #2BBCDE">개설 버튼을 누르면 튜터링 개설 페이지로 이동됩니다.</h6>
							<br>
							<br>
							<br>
							<br>
						</div>
						<div class="text-center">
							<input type="button" value="목록" class="btn btn-default">
							<input type="button" value="개설" class="btn btn-primary">
	
						</div>
						<br>
						<br>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- -------------------------------- -->
</section>
