<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>


<style type="text/css">
#contents {
	/* width: 930px; */
	float: left;
}

.tab {
	text-align: right;
	font-size: 18pt;
}

/* 사진 가운데정렬 */
.TutoringPhoto {
	position: relative;
	text-align: center;
}

.TutoringPhoto img {
	display: inline-block;
	/* position:absolute; top:50%; left:50%; */
	width: 850px;
	height: 400px;
	margin: 0px auto;
}

/* 튜터링 이름과 간략한 정보부분 */
.TutoringName1 {
	margin-top: 20px;
	margin-left: 10px;
}

.TutoringName1 span {
	font-size: 15pt;
	font-weight: bold;
}

.TutoringName2 {
	margin: 10px;
	/* width: 600px; */
	float: left;
	width: 100%;
	height: 100%;
}

.TutoringName2_1 {
	float: left;
}

.TutoringName2_2 {
	float: left;
	margin-top: 20px;
}

.TutoringName3 {
	float: left;
	/* margin-bottom: 30px; */
	margin-left: 10px;
	width: 900px;
}

.TutoringName3_1 {
	float: left;
	width: 280px;
}

.middleTab {
	margin-top: 20px;
	float: left;
	margin-bottom: 20px;
}

.boardContents {
	float: left;
	width: 100%;
	height: 100%;
}

.TutoringBoardPaging {
	float: left;
	margin-left: 40%;
}

.TutoringBoardButton {
	float: right;
}

.boardcenter {
	display: flex;
	align-items: center;
	font-weight: bold;
	font-size: 1.2rem;
}
</style>


<div id="contents" class="col-xs-12 col-sm-12 col-md-8">

	<hr>
	<!-- 제목 -->
	<div class="row">
		<div class="col-2 boardcenter">제목</div>
		<div class="col-8">
			<input type="text" class="form-control" id="inputDefault">
		</div>
	</div>
	<hr>

	<!-- 내용 -->
	<div class="row">
		<div class="col-2 boardcenter">내용</div>
		<div class="col-8">

			<div class="form-group">
				<textarea class="form-control" id="exampleTextarea" rows="20"></textarea>
			</div>
		</div>

	</div>

	<!-- 임시저장 / 불러오기 -->
	<div class="row">
		<div class="col-8"></div>
		<div class="col-3">
			<button type="button" class="btn btn-primary btn-sm"
				style="margin-right: 10px;">임시저장</button>
			<button type="button" class="btn btn-primary btn-sm">불러오기</button>
		</div>
	</div>

	<hr>

	<!-- 첨부파일 -->
	<div class="row">
		<div class="col-2 boardcenter">첨부파일</div>
		<div class="col-8">

			<div class="form-group" style="width: 50%;">
				<div class="input-group mb-3">
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="inputGroupFile02">
						<label class="custom-file-label" for="inputGroupFile02">Choose
							file</label>
					</div>
					<div class="input-group-append">
						<span class="input-group-text" id="">Upload</span>
					</div>
				</div>
			</div>
			<p>※첨부파일은 10MB까지 가능</p>



		</div>
	</div>

	<hr>

	<!-- 하단 버튼 -->
	<div class="row">
		<div class="col-4"></div>
		<div class="col-4">
			<button type="button" class="btn btn-primary btn-lg">목록으로</button>
			<button type="button" class="btn btn-primary btn-lg">글쓰기</button>
		</div>
	</div>






</div>

