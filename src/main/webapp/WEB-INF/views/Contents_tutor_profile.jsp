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
						<li class="nav-item"><a class="nav-link active"
							href="profile_tutor?TUTOR_ID=${career[0].TUTOR_ID}">프로필</a></li>
						<li class="nav-item"><a class="nav-link"
							href="profile_tutor_review?TUTOR_ID=${career[0].TUTOR_ID}">후기</a></li>
					</ul>

					<div class="profilephoto">
						<div class="profilephoto1">
							<img width="100px" height="100px" src="${info.PROF_PATH }"
								style="border-radius: 100%;">
						</div>


						<!-- 프로필 상세내용 -->
						<div class="tutorprofile">

							<!-- 튜터이름 -->
							<div class="tutorname">
								<h3>${info.TUTOR_NAME }</h3>
							</div>

							<c:if test="${!empty info.INTRO }">
								<!-- 튜터 자기소개 -->
								<div class="row1">${info.INTRO }</div>
								<br>
							</c:if>

							<c:if test="${!empty interest }">
								<!-- 주요 언어 -->
								<div class="row1 bold">주요 언어</div>
								<div class="row1">
									<c:forEach var="interest" items="${interest }">
					${interest.INTEREST_CAT } - ${interest.LEVEL_NAME} <br>
									</c:forEach>
								</div>
								<br>
							</c:if>

							<c:if test="${!empty career }">
								<!-- 경력 -->
								<div class="row1 bold">경력</div>
								<div class="row1">
									<c:forEach var="career" items="${career }">
					${career.CAREER_START } ~ ${career.CAREER_END } :: ${career.CAREER_CONTENT } <br>
									</c:forEach>

								</div>
								<br>
							</c:if>

							<c:if test="${!empty category }">
								<!-- 카테고리 -->
								<div class="row1 bold">카테고리</div>
								<div class="row1">
									<c:forEach var="category" items="${category }">
					${category.INTEREST_CAT } <br>
									</c:forEach>
								</div>
								<br />
							</c:if>

							<c:if test="${!empty link }">
								<!-- 블로그/영상주소 -->
								<div class="row1">
									<c:forEach var="link" items="${link }">
					${link.LINK_ADDR } <br>
									</c:forEach>

								</div>
							</c:if>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>