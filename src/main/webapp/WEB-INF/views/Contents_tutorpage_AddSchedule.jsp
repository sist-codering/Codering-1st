<%@ page contentType="text/html; charset=UTF-8"%>

<script type="text/javascript">
	$.datepicker.setDefaults(
	{

		dateFormat : 'yy-mm-dd',
		changeMonth : true,
		changeYear : true,
		dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
		prevText : "이전달",
		nextText : "다음달",
		monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
				'9월', '10월', '11월', '12월' ],

	});

	$(function()
	{
		$("#datepicker1").datepicker();
	});
</script>

<div class="container">



	<div class="m-sm-4">
		<form>

			<div class="text-center" style="margin-bottom: 50px;">
				<h1 class="h5">3회차 일정정보</h1>
			</div>
			<div class="row">
				<div class="col-1"></div>
				<div class="col-2">
					<label>일자</label>
				</div>
				<div class="col-8">
					<div class="form-group">
						<input type="text" id="datepicker1" placeholder="수업 날짜"
							readonly="readonly">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-1"></div>
				<div class="col-2">
					<label>시간</label>
				</div>
				<div class="col-4">
					<div class="form-group">
						<select class="form-control"
							style="width: 100px; display: inline-block">
							<%
								for (int i = 1; i <= 24; i++)
								{
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								}
							%>
						</select><span> 시</span>
					</div>
				</div>
				<div class="col-4">
					<div class="form-group">
						<select class="form-control" id="hour"
							style="width: 100px; display: inline-block">
							<%
								for (int i = 10; i <= 59; i = i + 10)
								{
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								}
							%>
						</select><span> 분</span>
					</div>
				</div>
			</div>
			<div class="row" style="margin-bottom: 30px;">
				<div class="col-1"></div>
				<div class="col-2">
					<label>위치</label>
				</div>
				<div class="col-5">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="검색후 자동입력"
							readonly="readonly">
					</div>
				</div>
				<div class="col-3">
					<button type="button" class="btn btn-primary">검색</button>
				</div>
			</div>
		</form>
	</div>
</div>


