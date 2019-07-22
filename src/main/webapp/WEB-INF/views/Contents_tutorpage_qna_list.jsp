<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.wrap-table {
	width: 100%;
	border-radius: 10px;
	overflow: hidden;
}

.table {
	width: 100%;
	display: table;
	margin: 5px;;
}

@media screen and (max-width: 768px) {
	.table {
		display: block;
	}
}

.row1 {
	display: table-row;
	background: #fff;
}

.row1.header {
	color: #ffffff;
	background: #bb68db;
}

@media screen and (max-width: 768px) {
	.row1 {
		display: block;
	}
	.row.header {
		padding: 0;
		height: 0px;
	}
	.row1.header .cell {
		display: none;
	}
	.row1 .cell:before {
		font-family: Poppins-Bold;
		font-size: 12px;
		color: #808080;
		line-height: 1.2;
		text-transform: uppercase;
		font-weight: unset !important;
		margin-bottom: 13px;
		content: attr(data-title);
		min-width: 98px;
		display: block;
	}
}

.cell {
	display: table-cell;
}

@media screen and (max-width: 768px) {
	.cell {
		display: block;
	}
}

.row1 .cell {
	font-family: Poppins-Regular;
	font-size: 15px;
	color: #666666;
	line-height: 1.2;
	font-weight: unset !important;
	padding-top: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #f2f2f2;
}

.row1.header .cell {
	font-family: Poppins-Regular;
	font-size: 18px;
	color: #fff;
	line-height: 1.2;
	font-weight: unset !important;
	padding-top: 19px;
	padding-bottom: 19px;
}

.row1 .cell:nth-child(1) {
	width: 15%;
}

.row1 .cell:nth-child(2) {
	width: 36%;
}

.row1 .cell:nth-child(3) {
	width: 15%;
}

.row1 .cell:nth-child(4) {
	width: 17%;
}

.row1 .cell:nth-child(5) {
	width: 17%;
}

.row1 .cell {
	align-content: center;
	text-align: center;
	padding: 10px;
}

.table, .row1 {
	width: 100% !important;
}

.row-body:hover {
	background-color: #fdf5fe;
	cursor: pointer;
}

@media ( max-width : 768px) {
	.row1 {
		border-bottom: 1px solid #f2f2f2;
		padding-bottom: 18px;
		padding-top: 30px;
		padding-right: 15px;
		margin: 0;
	}
	.row1 .cell {
		border: none;
		padding-left: 30px;
		padding-top: 16px;
		padding-bottom: 16px;
	}
	.row1 .cell:nth-child(1) {
		padding-left: 30px;
	}
	.row1 .cell {
		font-family: Poppins-Regular;
		font-size: 18px;
		color: #555555;
		line-height: 1.2;
		font-weight: unset !important;
	}
	.table, .row1, .cell {
		width: 100% !important;
	}
}
</style>

<title>Matching_qna_done.jsp</title>




<div class="limiter">
	<div class="container-table">
		<div class="wrap-table">

			<!-- <table class="table">
			 <thead>
			 
			 <tr class="table-active">
      			<th scope="row">처리상태</th>
		      <th>질문</th>
		      <th>작성자</th>
		      <th>질문 날짜</th>
		      <th>답변 날짜</th>
		    </tr>
			 
			 
			  </thead>
		
		
		</table> 
		</div>
		</div>
		</div> -->








			<div class="table">

				<div class="row1 header">
					<div class="cell status">처리상태</div>
					<div class="cell question">질문</div>
					<div class="cell title">강의명</div>
					<div class="cell writer">작성자</div>
					<div class="cell qDate">질문 날짜</div>
					
				</div>

				<c:forEach var="list" items="${faqList }">
					<div class="row1 row-body">
						<div class="cell status">
							<c:choose>
								<c:when test="${list.COUNT_REPLY == 0 }">
									답변요청
								</c:when>
								<c:when test="${list.COUNT_REPLY == 1 }">
									답변완료
								</c:when>
							</c:choose>
						</div>
						<div class="cell question"><a href="tutor_tutorpage_qna_answer?FAQ_ID=${list.FAQ_ID }">${list.FAQ_CONTENT }</a></div>
						<div class="cell title">${list.TITLE }</div>
						<div class="cell writer">${list.NICKNAME }</div>
						<div class="cell qDate">${list.FAQ_DATE }</div>
					</div>
				</c:forEach>
				

				
			</div>
		</div>
	</div>
</div>




<!-- <div class="row row-body">
							<div class="cell" data-title="Full Name">
								Sean Guzman
							</div>
							<div class="cell" data-title="Age">
								25
							</div>
							<div class="cell" data-title="Job Title">
								Web Designer
							</div>
							<div class="cell" data-title="Location">
								San Francisco
							</div>
						</div>

						<div class="row row-body">
							<div class="cell" data-title="Full Name">
								Keith Carter
							</div>
							<div class="cell" data-title="Age">
								20
							</div>
							<div class="cell" data-title="Job Title">
								Graphic Designer
							</div>
							<div class="cell" data-title="Location">
								New York, NY
							</div>
						</div>

						<div class="row row-body">
							<div class="cell" data-title="Full Name">
								Austin Medina
							</div>
							<div class="cell" data-title="Age">
								32
							</div>
							<div class="cell" data-title="Job Title">
								Photographer
							</div>
							<div class="cell" data-title="Location">
								New York
							</div>
						</div>

						<div class="row row-body">
							<div class="cell" data-title="Full Name">
								Vincent Williamson
							</div>
							<div class="cell" data-title="Age">
								31
							</div>
							<div class="cell" data-title="Job Title">
								iOS Developer
							</div>
							<div class="cell" data-title="Location">
								Washington
							</div>
						</div>
 -->