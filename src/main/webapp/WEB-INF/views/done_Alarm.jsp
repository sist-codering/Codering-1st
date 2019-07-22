<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage.jsp</title>


<style type="text/css">
html {
	font-size: 16px;
}
</style>

</head>
<body>
	<!-- 전체 영역 : container -->
	<div class="flex-container">
		<!-- 헤더 영역 : flex-container-header -->
		<div class="flex-container-header">

			<!-- 헤더 : header -->
			<c:import url="Header_Sidebar_done.jsp"></c:import>
		</div>


		<br><br><br>
		<!-- 본문 영역 : flex-container-body -->
		<div class="flex-container-body">
			<div class="flex-item">




				<!-- 본문 상단 : top-content -->
				<div class="top-content">


					<c:import url="Alarm.jsp"></c:import>


					<!-- 	</div> end bottom-content -->






				</div>
			</div>
			<!-- 푸터 영역 : flex-container-footer -->
			<div class="flex-container-footer">
				<div class="footer">
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>