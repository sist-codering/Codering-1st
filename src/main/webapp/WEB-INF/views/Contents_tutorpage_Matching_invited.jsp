<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- TODO TEST -->
<%-- <div id="test">${list}</div> --%>

<!-- 제목 부분[ -->
<div>
	<span class="invitedListSubject"> 초대받은 튜터링 </span>
</div>
<!-- 제목 부분] -->

<!-- 리스트 목록[ -->
<c:if test="${list.size() > 0}">
	<c:forEach var="item" items="${list}" varStatus="vs">
		<div class="invitedListStyle" id="invitedList${vs.index}">
			<input type="hidden" id="invitedId${vs.index}" name="invitedId" value="${item.INVITE_ID}" />
			<span class="invitedTutoringSubjectStyle">
				${item.TUTORING_TITLE}
			</span>
			<br />
			<span class="invitedTutoringContentStyle">
				권장 언어 및 레벨 : ${item.INTEREST_CAT} - ${item.LEVEL_NAME} / 지역 : ${item.REG_NAME} / 시간 : ${item.WEEDAY_END} - ${item.AM_PM}
			</span>
			<br />

			<div class="invitedTutoringButtonDiv">
				<button type="button" id="tutorDeny${vs.index}" class="btn invitedTutoringButtonReject">
					거절
				</button>
				<button type="button" id="tutorAccept${vs.index}" class="btn invitedTutoringButtonAccept">
					수락
				</button>
				<button type="button" id="dialog${vs.index}" style="display: none;" class="btn invitedTutoringButtonAccept">
					대화
				</button>
				<button type="button" id="detail${vs.index}" class="btn invitedTutoringButtonDetail">
					상세보기
				</button>
			</div>
			<div id="dialogMsg${vs.index}" class="invitedTutoringMsg" style="display: none;">
				초대받은 튜터링을 수락하였습니다!
				<br />
				이제 튜티장과 대화를 나눠 보세요 :)
			</div>
		</div>
	</c:forEach>
</c:if>
<c:if test="${list.size() <= 0}">
		<div class="invitedListStyle" id="invitedList0">
			<span class="invitedTutoringSubjectStyle">
				초대받은 튜터링이 없습니다.
			</span>
			<br />
			<span class="invitedTutoringContentStyle">
			</span>
			<br />
		</div>
</c:if>
<!-- 리스트 목록] -->