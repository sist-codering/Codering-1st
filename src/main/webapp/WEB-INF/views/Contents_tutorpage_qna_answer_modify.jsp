<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Matching_qna_answer_done.jsp</title>

<script type="text/javascript">
	function updateqna()
	{
		var content = $("#CONTENT").val();

		document.getElementById("FAQ_CONTENT").value = content;

	}
</script>





<div class="container">


	<!-- -------------------------------- -->




	<div class="media mb-4 ">
		<div class="media-body subcontent">

			<div class="media mt-4 tutor-reply">
				<img class="d-flex mr-3 rounded-circle" src="${qnaQ.PROF_PATH }"
					style="border-radius: 100%;">
				<!-- 댓글 프로필사진 -->
				<div class="media-body subcontent">
					<div class="mt-0">${qnaQ.NICKNAME }</div>
					<footer class="blockquote-footer">
						<cite title="Source Title">${qnaQ.FAQ_DATE } 작성</cite>
						<!-- 신고 -->
						<span class="btn-user float-right"><a>신고</a></span>
					</footer>
					<br>${qnaQ.FAQ_CONTENT } <br> <br>
				</div>
			</div>

			<form action="tutor_tutorpage_qna_update" method="POST">
				<div class="input-group mb-3">
					<textarea class="form-control" rows="5" style="resize: none;"
						id="CONTENT">${qnaA.FAQ_CONTENT }</textarea>
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="submit"
							id="button-addon2" onclick="updateqna()">등록</button>

						<input type="hidden" id="FAQ_CONTENT" name="FAQ_CONTENT">
						<input type="hidden" name="FAQ_ID" value="${qnaQ.FAQ_ID }">

					</div>


				</div>
			</form>


			<br> <br> <br>
			<div align="center">
				<a href="tutor_tutorpage_qna_list"><button
						class="btn btn-outline-secondary" type="button">문의목록</button></a>
			</div>

		</div>
	</div>

</div>






