<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String cp = request.getContextPath();
%>
<meta charset="UTF-8">
<title>Matching_qna_done.jsp</title>

<script type="text/javascript">

	$(document).ready(function()
	{
		$(".row1").click(function()
		{
			var FAQ_ID = $(this).attr('id');
			location.href = '<%=cp%>/tutee_qnapage?FAQ_ID=' + FAQ_ID;
		});
	});


</script>







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


.row1 .cell
{
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

@media (max-width: 768px) {
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

<title>Contents_Matching_tutee_qna.jsp</title>




<div class="limiter">
	<div class="container-table">
		<div class="wrap-table">

				<div class="table">

					<div class="row1 header">
						<div class="cell status">처리상태</div>
						<div class="cell question">질문</div>
						<div class="cell writer">작성자</div>
						<div class="cell qDate">질문 날짜</div>
						<div class="cell aDate">답변 날짜</div>
					</div>

					
					
					<c:forEach var="qnaList" items="${qnaList }">
						
						<div class="row1 row-body" id="${qnaList.FAQ_ID }">
							
							<input type="hidden" name="${qnaList.FAQ_ID }" value="${qnaList.FAQ_ID }" />
							
							<div class="cell status" style="width: 15%;">${qnaList.PROCESS }</div>
							<div class="cell question">${qnaList.FAQ_CONTENT }</div>
							<div class="cell writer">${qnaList.NICKNAME }</div>
							<div class="cell qDate">${qnaList.FAQ_DATE }</div>
							<c:choose>
								<c:when test="${qnaList.ANSWERDATE != null }">
									<div class="cell aDate">${qnaList.ANSWERDATE }</div>
								</c:when>
								<c:otherwise>
									<div></div>
								</c:otherwise>
							</c:choose>
						</div>
						
					</c:forEach>
					
				</div>
			</div>
		</div>
	</div>



