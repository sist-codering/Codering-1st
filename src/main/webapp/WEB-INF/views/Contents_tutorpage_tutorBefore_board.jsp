<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>


<style type="text/css">
#contents {
	/* width: 50%; */
	float: left;
}

.tab {
	text-align: right;
	font-size: 18pt;
}

/* 사진 가운데정렬 */
.TutoringPhoto {
	position:relative;
	text-align: center;
}

.TutoringPhoto img {
    display:inline-block;
    /* position:absolute; top:50%; left:50%; */
    width:850px;
    height: 400px;
    margin: 0px auto;

 }

/* 튜터링 이름과 간략한 정보부분 */
.TutoringName1
{
	margin-top: 20px;
	margin-left: 10px;
}


.TutoringName1 span
{
	font-size: 15pt;
	font-weight: bold;

}

.TutoringName2
{
    margin: 10px;
	/* width: 600px; */
	float: left;
	width: 100%;
	height: 100%;
	

}

.TutoringName2_1
{
	float: left;
}

.TutoringName2_2
{
	float : left;
	margin-top: 20px;
}

.TutoringName3 {

	float :left;
	/* margin-bottom: 30px; */
	margin-left: 10px;
	width: 900px;
}

.TutoringName3_1 {

	float: left;
	width: 280px;
}

.middleTab
{
	margin-top: 20px;
	float:left;
	margin-bottom: 20px;
	width: 100%;
}

.boardContents
{
	float: left;
	width: 100%;
	height: 100%;
}

.TutoringBoardPaging
{
	float: left;
	margin-left: 40%;
}

.TutoringBoardButton
{
	float: right;
}

.middletab
{
	width: 100%;
	height: 100%;
}


</style>


<div id="contents" class="col-xs-12 col-sm-12 col-md-8">


	<div class="top">

		<div class="tab">
			| 이전 튜터링 |
			<hr>
		</div>
		<br>

		<!-- 튜터링 사진 -->
		<div class="TutoringPhoto"><img src="https://s3.ap-northeast-2.amazonaws.com/taling.me/Content/Uploads/Cover/d034f6c1701134881ab1c650c2896801df83b857.png"></div>
		
		<!-- 튜터링 이름 -->
		<div class="TutoringName1"><span>코딩테스트와 실무 역량 모두 잡는 스터디 : java반</span></div>
		
		<!-- 튜터 사진 / 튜터링 참가 인원수 -->
		<div class="TutoringName2">
			<div class="TutoringName2_1">
			<img width="50px" height="40px" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='48' height='48' viewBox='0 0 48 48'%3E %3Cg fill='none' fill-rule='nonzero'%3E %3Ccircle cx='24' cy='24' r='24' fill='%23C2E0FF'/%3E %3Cpath fill='%23FFF' d='M19 24.5h10a4 4 0 0 1 4 4v4H15v-4a4 4 0 0 1 4-4zm5-1.5a4.5 4.5 0 1 1 0-9 4.5 4.5 0 0 1 0 9z'/%3E %3C/g%3E %3C/svg%3E" alt="프로필 이미지"> </div>
			<div class="TutoringName2_2">6명</div>
		</div>

		<!-- 튜터링 정보 -->
		<div class="TutoringName3">
			<div class="TutoringName3_1">시작일:2019년 5월 30일</div>
			<div class="TutoringName3_1">4주 과정</div>
			<div class="TutoringName3_1"></div>
		</div>
	
	
	<div class="middle">
		<!-- 탭-->
		<div class="middleTab">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#">상세정보</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#">튜터링게시판</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#">일정정보</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#">튜티관리</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#">후기</a>
			  </li>
			</ul>
		</div>
		<!-- 탭 END -->
		
		<!-- 튜터링 상세페이지 부분 -->
	<div class="boardContents">
		
		<!-- 테이블 -->
		<table class="table table-hover">
		<tbody>
		    <tr class="table-active">
		      <th scope="row">No.</th>
		      <th>내용</th>
		      <th>작성자</th>
		      <th>작성일</th>
		      <th>조회수</th>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
			 <tr>
		      <td scope="row">20</td>
		      <td>2번째 수업 내용 정리해 보았습니다.</td>
		      <td>전훈의</td>
		      <td>2019.06.20</td>
		      <td>20</td>
		    </tr>
		</table>
		
		<!-- 페이징 -->
		<div class="TutoringBoardPaging">
		  <ul class="pagination pagination-sm">
		    <li class="page-item disabled">
		      <a class="page-link" href="#">&laquo;</a>
		    </li>
		    <li class="page-item active">
		      <a class="page-link" href="#">1</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">2</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">3</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">4</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">5</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">&raquo;</a>
		    </li>
		  </ul>
		</div>

		<!-- 글쓰기 버튼 -->
		<div class="TutoringBoardButton">
		<button type="button" class="btn btn-secondary">글쓰기</button>
		</div>
	
	
	
	</div>
		
		
		
		
	</div>
	</div>
	</div>

<div></div>
