<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
<div>
${list}
</div>
 --%>
<div id="wrapper">
	<!-- 튜터가 지원한 튜터링 목록 페이지 -->
	<div class="container-fluid">

		<div>
			<span class="applyListSubject">지원한 튜터링</span>
		</div>
<c:forEach var="item" items="${list}" varStatus="vs">
	<div id="applyList" id="applyList">
		<div class="applyListStyle1st" id="applyList">
			<input type="hidden" id="applyId${vs.index}" name="applyId" value="${item.APPLY_ID }"/> 
			<span class="applyTutoringSubjectStyle">${item.TUTORING_TITLE} </span> 
			<br> 
			<span class="applyTutoringLevle">
				권장 언어 및 레벨 : ${item.INTEREST_CAT} - ${item.LEVEL_NAME} / 지역 : ${item.REG_NAME} / 시간 : ${item.WEEDAY_END} ${item.AM_PM}
			</span>
			
			<div class="applyTutoringButtonDiv" id="applyButton">
				<div>
					<input type="hidden" id="APPLYID" name="APPLYID" value="${item.APPLY_ID }" />
					<button id="btnDelete" name="btnDelete" class="applyTutoringButtonDelete">
						삭제
					</button>
				</div>
<c:if test="${item.MACH_LV_ID == 3}">
				<div>
					<button id="btnStandBy" class="applyTutoringButtonStandby">
						대기
					</button>
				</div>
</c:if>
<c:if test="${item.MACH_LV_ID == 4}">
				<div>
					<button id="btnReject" class="applyTutoringButtonReject">
						거절
					</button>
				</div>
</c:if>
<c:if test="${item.MACH_LV_ID == 6}">
				
				<input type="hidden" id="APPLYID" name="APPLYID" value="${item.APPLYID }"/> 
				<input type="hidden" id="MACH_LV_ID" name="MACH_LV_ID" value="${item.MACH_LV_ID }"/> 
				<div>
					<button id="btnDialog" name="btnDialog" class="applyTutoringButtonDialog">
						대화
					</button>
				</div>
</c:if>
				<button id="btnDetail" class="applyTutoringButtonDetail">
					상세보기
				</button>
				<div id="dialogMsg" class="applyTutoringMsg" style="display: none;">
					지원한 튜터링에 매칭되었습니다. 
					<br />
					이제 튜티장과 대화를 나눠 보세요 :)
				</div>
			</div>
		</div>
	</div>
</c:forEach>		

		
<!-- 
		<div class="applyListStyle2nd">
			<span class="applyTutoringSubjectStyle">코딩테스트와 실무 모두 잡는 스터디 : Java 반</span> 
			<br> 
			<span class="applyTutoringLevle">권장 언어 및 레벨 : JAVA - 초급 / 지역 : 홍대 / 시간 : 평일오후</span>
			
			<div class="applyTutoringButtonDiv">
				<div>
					<button class="applyTutoringButtonCancel">
						거절
					</button>
				</div>
				<div>
					<button class="applyTutoringButtonDialog">
						대화
					</button>
				</div>
				<button class="applyTutoringButtonDetail">
					상세보기
				</button>
			</div>
		</div>

		<div class="applyListStyle2nd">
			<span class="applyTutoringSubjectStyle">코딩테스트와 실무 모두 잡는 스터디 : Java 반</span> 
			<br> 
			<span class="applyTutoringLevle">권장 언어 및 레벨 : JAVA - 초급 / 지역 : 홍대 / 시간 : 평일오후</span>
			
			<div class="applyTutoringButtonDiv">
				<div>
					<button class="applyutoringButtonDel">
						삭제
					</button>
				</div>
				<div>
					<button class="applyTutoringButtonReject">
						거절
					</button>
				</div>
				<button class="applyTutoringButtonDetail">
					상세보기</button>
			</div>
		</div>
	<!-- 튜터가 지원한 튜터링 목록 페이지 End --> 
	</div>
</div>
<!-- End of Main Content -->
