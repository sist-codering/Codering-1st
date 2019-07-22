<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<meta charset="UTF-8">
<script type="text/javascript">
	$(document).ready(function()
	{
		$(".matching").click(function()
		{
			var id = $(this).attr('id');
			var TUTORING_TUTEE_ID = $('input[name='+ id + ']').val();
			location.href = '<%=cp%>/tutee_tutorlist?TUTORING_TUTEE_ID=' + TUTORING_TUTEE_ID;
		});
	});
	

	
	
</script>





<style type="text/css">
#contents {
	width: 930px;
	float: left;
}

.tab {
	text-align: right;
	font-size: 1.5rem;
}

.listcontents2 {
	float: left;
	margin-bottom: 30px;
	/* width: 300px; */
}

.listname span {
	font-size: 15pt;
	font-weight: bold;
}

.listcontents {
	width: 100%;
	float: left;
}

/* 예약튜터링 박스 */
.listcontens1 {
	margin: 10px;
	width: 900px;
	float: left;
}

.listname {
	float: left;
	width: 800px;
}

.listcontentsbutton {
	float: right;
}

.listcontents2_0 {
	margin-top: 40px;
}
</style>






<div id="contents" class="col-md-12">




	<div class="tab">
		| 개설 튜터링 |
		<hr>
	</div>
	<br>

	<!-- 리스트 DIV -->
	<div class="classlists">

		<!-- //한 줄// -->
		<!-- 튜터링 정보 -->
		<div class="listcontents">
		


			<c:forEach var="openList" items="${openList }" varStatus="status" >
			
				<!-- 튜터링 이름 -->
				<div class="listname">
					<span>${openList.TUTORING_TITLE }</span>
				</div>
				
				<!-- 튜터링 매칭/폐지 버튼 -->
				<div class="listcontens1_0">
					<div class="listcontentsbutton">
						<input type="hidden" name="${status.count }" value="${openList.TUTORING_TUTEE_ID }" />
						<button type="button" class="btn btn-primary matching" id="${status.count }">매칭</button>
						<button type="button" class="btn btn-primary" id="cancel">폐지</button>
					</div>
				</div>
				<br>
				
				<!-- 튜터링 정보 -->
				<div class="listcontents2_0">현재 예약 인원 : ${openList.RESERV_COUNT } │ 초대한 튜터 : ${openList.INVITE_COUNT } │ 지원한
					튜터 : ${openList.APPLY_COUNT }</div>
				<br>
				<hr>
			</c:forEach>
		</div>
	</div>
</div>

