<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
<title>Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">



<style type="text/css">
.process {
	font-size: 43px;
	font-weight: bold;
}

.container {
	margin-top: 100px;
}
</style>



<div class="container">
	<div class="row flex-lg-nowrap">

		<div class="col mb-3">
			<div class="card">
				<div class="card-body">

					<!-- 탭 -->
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link"
							href="profile_tutor?TUTOR_ID=${review[0].TUTOR_ID}">프로필</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="profile_tutor_review?TUTOR_ID=${review[0].TUTOR_ID}">후기</a></li>
					</ul>

					<div class="jumbotron">

						<c:if test="${empty review }">
						아직 작성된 후기가 없습니다.
					</c:if>

						<c:forEach var="rv" items="${review }">
							<!-- //한 줄 시작//  -->
							<div class="row">
								<!-- 튜티사진 -->
								<div class="col-1">
									<img width="80px" height="80px" src="${rv.PROF_PATH }"
										style="border-radius: 100%;">
								</div>
								<!-- 튜티이름/날짜/튜터링평가별점  -->
								<div class="col-8">
									<span style="font-weight: bold;">${rv.NICKNAME }</span> <br>${rv.WRITEDATE }&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${rv.TITLE }<br> 
									<span style="color: purple"> <c:choose>
											<c:when test="${rv.REVIEW_GRADE eq 1}">★☆☆☆☆</c:when>
											<c:when test="${rv.REVIEW_GRADE eq 2}">★★☆☆☆</c:when>
											<c:when test="${rv.REVIEW_GRADE eq 3}">★★★☆☆</c:when>
											<c:when test="${rv.REVIEW_GRADE eq 4}">★★★★☆</c:when>
											<c:when test="${rv.REVIEW_GRADE eq 5}">★★★★★</c:when>
										</c:choose>
									</span>
								</div>
							</div>

							<!-- 후기 작성 줄 -->
							<div class="row" style="margin-left: 10px; margin-top: 10px;">
								${rv.CONTENT }</div>
							<br>
							<!-- //한 줄 끝//  -->
						</c:forEach>


					</div>
				</div>
			</div>
		</div>
	</div>