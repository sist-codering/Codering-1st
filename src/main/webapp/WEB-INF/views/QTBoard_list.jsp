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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>QTBoard_list_headtest.jsp</title>
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/jih/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/jih/qtboard_list.css?after">
<c:import url="Header_css.jsp"></c:import>

<script type="text/javascript">
	$(init);
	function init() {
		$('#btnSearchTop').focus();
	}
</script>

</head>
<body>
	<!-- 전체 영역 : flex-container -->
	<div class="flex-container">


		<!-- 헤더 영역 -->
		<c:import url="Header_Sidebar_done.jsp"></c:import>

		<!-- 본문 영역 : flex-container-body -->
		<div class="flex-container-body">
			<div class="flex-item">

				<!-- 본문 상단 : top-content -->
				<div class="top-content">

				<div>
					<div class="styleQTboardName">질문 / 답 게시판</div>
				</div>
					<div class="topmenu card">

						<!-- 상단 왼쪽 게시판 : 많이본 게시물 -->
						<div class="maxHit">
							<div class="maxBestSubject">많이본 게시물</div>
							<div class="maxBestContent">
								<div class="divTable card">
									<c:forEach var="hit" items="${hitList }">
									<div class="divTableRow">
										<div class="divTableCell inline margin">
											<a href="qtboard_detail?QT_ID=${hit.QT_ID }">${hit.TITLE }</a>
										</div>
										<div class="divTableCell inline floatmargin">
											<span>${hit.HITCOUNT } view</span>
										</div>
									</div>		
									</c:forEach>
																
								</div>
							</div>
						</div>
						<!-- end maxHit -->



						<!-- 상단 왼쪽 게시판 : 많이본 게시물 -->

						<div class="bestHit">
							<div class="maxBestSubject">추천 게시물</div>
							<div class="maxBestContent">
								<div class="divTable card">
									<c:forEach var="best" items="${bestList }">
									<div class="divTableRow">
										<div class="divTableCell inline margin" id="subject6">										
										<a href="qtboard_detail?QT_ID=${best.QT_ID }">${best.TITLE }</a>
										</div>
										<div class="divTableCell inline floatmargin">${best.RECOMM }회</div>
									</div>
									</c:forEach>								
								</div>
							</div>
						</div>
						<!-- end bestHitBoard -->
					</div>
					<!-- end topmenu -->
				</div>
				<!-- end top-content -->

				<br>
				<!-- 본문 중간 : middle-content -->
				<div class="middle-content">
					<!-- start middle-content -->

					<div class="middlemenu">
						<div>
							<div class="divTableQT">
								<div class="divTableColgroupQT">
									<div class="colQT5"></div>
									<div class="colQT10"></div>
									<div class="colQT40"></div>
									<div class="colQT10"></div>
									<div class="colQT10"></div>
									<div class="colQT10"></div>
									<div class="colQT10"></div>
								</div>
								<div class="divTableHeadingQT">
									<div class="divTableRowQT">
										<div class="divTableHeadQTCol5">번호</div>
										<div class="divTableHeadQTCol10">말머리</div>
										<div class="divTableHeadQTCol40" id="subject">제목</div>
										<div class="divTableHeadQTCol10">작성자</div>
										<div class="divTableHeadQTCol10">추천수</div>
										<div class="divTableHeadQTCol10">조회수</div>
										<div class="divTableHeadQTCol10">작성일</div>
									</div>
								</div>
								<div class="divTableRowgroupQT">
									<c:forEach var="post" items="${list }">
									<div class="divTableRowQT">
										<div class="divTableCellQTCol5">${post.QT_ID }</div>
										<div class="divTableCellQTCol10">${post.HEAD_NAME }</div>
										<div class="divTableCellQTCol40" id="subject">
											<a href="${articleUrl}&QT_ID=${post.QT_ID}">${post.TITLE } <c:if test="${post.COMM ne '0'}">[${post.COMM }]</c:if></a>
											<c:if test="${post.NEW ==1}" >											
												<span class="badge badge-purple">new</span>											
											</c:if>
										</div>
										<div class="divTableCellQTCol10">${post.NICKNAME }</div>
										<div class="divTableCellQTCol10">${post.RECOMM }</div>
										<div class="divTableCellQTCol10">${post.HITCOUNT }</div>
										<div class="divTableCellQTCol10">${post.WRITEDATE }</div>
									</div>
									</c:forEach>								
								</div>
							</div>
							<br>
						</div>
						<!-- 페이징 바 -->
						<div class="pageMargin">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">${paging}</ul>
							</nav>
						</div>
						
						
						<!-- 본문 하단 : bottom-comtent -->
						<div class="bottom-content-between">
						
							<!-- 검색 -->
							<div>
								<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0" action="<%=cp%>/qtboard_list">
									<div class="input-group-prepend mb-3 d-flex justify-content-end row align-items-start">
										<!-- 검색 분류 -->
										<select name="searchKey" class="selectFiled custom-select">
											<option value="TITLE" selected="selected">제목</option>
											<option value="NICKNAME">닉네임</option>
											<option value="CONTENT">내용</option>
										</select>
										
										<div class="input-group">
											<input type="text" id="btnSearch" class="form-control" placeholder="검색어를 입력하세요." aria-label="Search" aria-describedby="basic-addon2" name="searchValue">
											<div class="input-group-append">
												<button class="btn btn-primary" type="submit">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</div>						
								</form>
							</div>

							<div>
							<button type="button" class="btn btn-primary" onclick="javascript:location.href='<%=cp%>/qtboard_create';">글쓰기</button>
							</div> 
						</div>
						<!-- end bottom-content -->

					</div>
					<!-- end middle menu -->
				</div>
				<!-- end middle-content -->
				
				
<%-- 			
				<!-- 본문 하단 : bottom-comtent -->
				<div class="bottom-content-between">

					<!-- 검색 -->
					<div>
						<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0" action="<%=cp%>/qtboard_list">
							<div class="input-group-prepend mb-3 d-flex justify-content-end row align-items-start">
								<!-- 검색 분류 -->
								<select name="searchKey" class="selectFiled custom-select">
									<option value="TITLE" selected="selected">제목</option>
									<option value="NICKNAME">닉네임</option>
									<option value="CONTENT">내용</option>
								</select>
								
								<div class="input-group">
									<input type="text" id="btnSearch" class="form-control" placeholder="검색어를 입력하세요." aria-label="Search" aria-describedby="basic-addon2" name="searchValue">
									<div class="input-group-append">
										<button class="btn btn-primary" type="submit">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</div>						
						</form>
					</div>
					
					<div>
						<button type="button" class="btn btn-primary" onclick="javascript:location.href='<%=cp%>/qtboard_create';">글쓰기</button>
					</div> 
				</div>
				
				<!-- end bottom-content -->

				<!-- 글쓰기 버튼 -->
				<div>
					<button type="button" class="btn btn-primary" onclick="javascript:location.href='<%=cp%>/qtboard_create';">글쓰기</button>
				</div>  
--%>
				
			</div>
			<!-- End flex-item -->

		</div>
		<!-- End flex-containerbody -->

	<!-- 푸터 영역 : flex-container-footer -->
	<div class="flex-container-footer">
		<!-- <div class="footer">
			<H2>FOOTER</H2>
		</div> -->
	</div>
	<!-- end flex-container-footer -->
</div>
<!-- End Flex-container -->

</body>
</html>