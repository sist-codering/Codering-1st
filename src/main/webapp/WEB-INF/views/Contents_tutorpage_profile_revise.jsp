<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<style type="text/css">
#contents {
	float: left;
	height: 100%;
	width: 80%;
}

.bold {
	font-size: 15pt;
	font-weight: bold;
}

.tab1 {
	text-align: left;
	font-size: 18pt;
	font-weight: bold;
}

.row-career
{
	margin-bottom: 20px;
}

.col-career
{
	margin-bottom: 10px;
}


.profilephoto {
	margin: 10px;
	width: 100%;
	/* float: left; */
	height: 100%;
}

.profilephoto1 {
	float: left;
}

.tutorprofile {
	float: left;
	margin-top: 20px;
	margin-left: 40px;
	width: 80%;
}

.tutorname {
	font-size: 18pt;
	font-weight: bold;
}

.tutorProfileReviseBox {
	float: left;
	width: 50%
}

.tutorProfileButtons1 {
	float: left;
	width: 130px;
	margin-right: 10px;
}

.tutorProfileButtons2 {
	float: left;
	width: 120px;
	margin-right: 10px;
}
</style>

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
		$("#datepicker1, #datepicker2").datepicker();
	});
	
	
	$(document).ready(function()
	{
		
		var list_category = new Array();
		
		// 카테고리 리스트 값 받아와서 해당되는 체크박스 체크하기
		<c:forEach var='category' items='${category}'> 
			list_category.push('${category.INTEREST_ID}') 
		</c:forEach>

		for(var i=0; i<list_category.length; i++)
		{
			$('input:checkbox[name="category-check"]').each(function()
			{
				if(this.value == list_category[i])
				{
					this.checked = true;
				}
					
			});
		
		}
		
		
		/* 체크박스 테스트
		$('input:checkbox[name="category-check"]').each(function()
		{
			if(this.value == 7)
			{
				this.checked = true;
			}
		});
		*/
		
		
		// 경력 추가하기 버튼 클릭 시, 입력창 생성
		$("#add-button").click(function()
		{
			var tag = "	 <div class='row'>" 
					  + "	<div class='col-3'> <span class='bold'></span>"
					  + "	</div>"
					  + "	<div class='col-8'>"
					  + "		<div class='row row-career'>"
					  + "			<div class='col-12 col-career'>"
					  + "				<input type='text' id='datepicker1' value='' "
					  + "				 readonly='readonly' placeholder='시작 날짜'"
					  + "				 style='width: 38%'> ~ <input type='text' id='datepicker2' value=''"
					  + "				 readonly='readonly' placeholder='종료 날짜' style='width: 38%'>"
					  + "			</div>"
					  + "			<div class='tutorProfileReviseBox col-8 col-career'>"
					  + "				<input type='text' class='form-control' value=''"
					  + "				id='tutorname' placeholder='경력사항을 입력하세요.'>"
					  + "			</div>"
					  + "			<div class='tutorProfileReviseBox col-4 col-career'>"
					  + "				<button type='button' class='btn btn-primary' id='add-button'>삭제하기</button>"
					  + "			</div>"
					  + "		</div>"
					  + "	</div>"
					  + "</div>";
			
			//text함수를 적용하여 html함수를 사용했던 같은 내용의 문자열을 표출해본다.
			$("#tag-html").before(tag);	
		});
		
		
		
		$("#delete-career").click(function()
		{
			var rowid = "'#"+ $("#delete-career").parents(".del-car").attr("id") + "'";
			
			alert(rowid);
			
			$(rowid).css.attr("display", "none");
			
		});
		
		
		
		
		
		
		// 언어 및 레벨 추가하기 버튼 클릭 시, 입력창 생성
		$("#add-lang").click(function()
		{
			var lang = $("#lang-select option:selected").text();
			var lvl = $("#lvl-select option:selected").text();
			
			var tag = "	<div class='alert alert-dismissible alert-secondary tutorProfileButtons1'>"
					  + "<button type='button' class='close' data-dismiss='alert'>&times;</button>"
					  + lang + " " + lvl
					  + "</div>";
					  
			//text함수를 적용하여 html함수를 사용했던 같은 내용의 문자열을 표출해본다.
			$("#tag-lang").append(tag);	
		});
		
		
		
		
		
		
		
		/* 
		// 경력 삭제
		$(".delete-career").click(function(a)
				{
					// 이벤트 객체의 값을 가져옴.
					var CAREER_ID = a.target.value;
					doAjax(CAREER_ID);
				});
		 */
		
		
	});
	
	/* 
	
	function doAjax(CAREER_ID) {
		var param = {};
		param.CAREER_ID = CAREER_ID;
		
		$.ajax({
			type : 'POST'
			, url : '/tutor_info_deleteCareer_ajax'
			, data : param
			, success : function(data, textStatus, jqXHR) {
				doNext(data);
			}
			, error : function(jqXHR, textStatus, errorThrown) {
				alert('ERROR : ' + textStatus);
				console.log(jqXHR, textStatus, errorThrown);
			}
		});
	});
	
	function doNext(data) {
		var json = JSON.parse(data);
		
		var thisMidText = json.mid;
		var thisNameText = json.name;
		var thisTelephoneText = json.telephone;
		
		$('#midResult').val(thisMidText);
		$('#nameResult').val(thisNameText);
		$('#telephoneResult').val(thisTelephoneText);
	}
	 */
	
	
	
</script>


<div id="contents">

	<div class="tab1">
		| 프로필수정 |
		<hr>
	</div>


	<!-- 사진 / 사진수정 -->
	<div class="row">
		<div class="col-3">
			<img width="100px" height="100px"
				src="${info.PROF_PATH }"
				alt="프로필 이미지">
		</div>
		<div class="col-7">

			<div class="form-group" style="width: 70%; margin-top: 20px;">
				<div class="input-group mb-3">
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="inputGroupFile02">
						<label class="custom-file-label" for="inputGroupFile02"></label>
					</div>
					<div class="input-group-append">
						<span class="input-group-text" id="">등록하기</span>
					</div>
				</div>
			</div>
			<p>5MB 이하, jpg / png
		</div>
	</div>

	<!-- 상세정보 -->

	<!-- 이름 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">이름</span>
		</div>
		<div class="col-8">
			<input type="text" class="form-control" value="${info.TUTOR_NAME }" id="tutorname"
				style="width: 41%">
		</div>
	</div>
	<br>

	<!-- 전화번호 -->
	


	<div class="row">
		<div class="col-3">
			<span class="bold">전화번호</span>
		</div>
		<div class="col-8">
			<div class="row row-career">
				<div class="tutorProfileReviseBox col-8">
					<input type="text" class="form-control" value="${info.PHONENUM }" id="tutorphone">
				</div>
				<div class="col-4">
					<button type="button" class="btn btn-primary">인증하기</button>
				</div>
			</div>
		</div>
	</div>
	<br>

	<!-- 레벨설정 -->

	<div class="row">
		<div class="col-3">
			<span class="bold">레벨설정</span>
		</div>
		<div class="col-8">
			<div class="row row-career">
				<div class="col-8">
					<select class="custom-select" id="lang-select" style="width: 45%">
						<option value="1" selected="selected">Java</option>
						<option value="2">Oracle</option>
						<option value="3">MySQL</option>
						<option value="4">JavaScript</option>
						<option value="5">PYTHON</option>
					</select> <select id="lvl-select" class="custom-select" style="width: 45%">
						<option value="1" selected="selected">초급</option>
						<option value="2">중급</option>
						<option value="3">고급</option>
					</select>
				</div>
				<div class="col-4">
					<button type="button" class="btn btn-primary" id="add-lang">추가하기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 레벨 설정 프린트 -->
	<div class="row">
		<div class="col-3"></div>
		<div class="col-7" id="tag-lang">
			
			<c:forEach var="interest" items="${interest }">
				<div class="alert alert-dismissible alert-secondary tutorProfileButtons1">
					<button type="button" class="close" data-dismiss="alert" id="${interest.TUTOR_INTEREST_ID }">&times;</button>
					${interest.INTEREST_CAT } ${interest.LEVEL_NAME }
				</div>
			</c:forEach>
					
		</div>
	</div>
	
	<br>

	<!-- 경력 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">경력</span>
		</div>
		<div class="col-8">
			<c:forEach var="career" items="${career }" varStatus="status">
				<div class="row row-career del-car" id="${status.count}" >
					<div class="col-12 col-career">
						<input type="text" value="${career.CAREER_START }" readonly="readonly"
							style="width: 38%"> ~ <input type="text" value="${career.CAREER_END }"
							readonly="readonly" style="width: 38%">
					</div>
					<div class="tutorProfileReviseBox col-8 col-career">
						<input type="text" class="form-control" value="${career.CAREER_CONTENT }"
							id="tutorname">
					</div>
					<div class="tutorProfileReviseBox col-4 col-career">
						<input type="button" class="btn btn-primary"value="삭제하기">
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<br>
	
	<div class="row" id="tag-html">
		<div class="col-3">
			<span class="bold"></span>
		</div>
		<div class="col-8">
			<div class="row row-career">
				<div class="col-12 col-career">
					<input type="text" id="datepicker1" value="" ${careerCount >= 3 ? 'disabled="disabled"' : ''}
						readonly="readonly" placeholder="시작 날짜"
						style="width: 38%"> ~ <input type="text" id="datepicker2" value="" ${careerCount >= 3 ? 'disabled="disabled"' : ''}
						readonly="readonly" placeholder="종료 날짜" style="width: 38%">
				</div>
				<div class="tutorProfileReviseBox col-8 col-career">
					<input type="text" class="form-control" value="" ${careerCount >= 3 ? 'disabled="disabled"' : ''}
						id="tutorname" placeholder="경력사항을 입력하세요.">
				</div>
				<div class="tutorProfileReviseBox col-4 col-career">
					<button type="button" class="btn btn-primary" id="add-button" ${careerCount >= 3 ? 'disabled="disabled"' : ''}>추가하기</button>
				</div>
				<span style="color: red; font-weight: bold; ${careerCount >= 3 ? 'display: inline;' : 'display:none;'} "> &nbsp;&nbsp;&nbsp; ※ 경력은 최대 3개까지 입력 가능합니다.</span>
			</div>
		</div>
	</div>

	<br>



	<!-- 카테고리 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">카테고리</span>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck1" value="6"> <label
					class="custom-control-label" for="interestCheck1">웹</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck2" value="7"> <label
					class="custom-control-label" for="interestCheck2">모바일</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox"> 
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck3" value="8"> <label
					class="custom-control-label" for="interestCheck3">블록체인</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck4" value="9"> <label
					class="custom-control-label" for="interestCheck4">자료구조</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck5" value="10"> <label
					class="custom-control-label" for="interestCheck5">알고리즘</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck6" value="11"> <label
					class="custom-control-label" for="interestCheck6">게임개발</label>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck7" value="12"> <label
					class="custom-control-label" for="interestCheck7">언어기초</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck8" value="13"> <label
					class="custom-control-label" for="interestCheck8">최신기술</label>
			</div>
		</div>
		<div class="col-2">
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" name="category-check"
					id="interestCheck9" value="14"> <label
					class="custom-control-label" for="interestCheck9">디자인</label>
			</div>
		</div>
	</div>
	<br>

	<!-- 자기소개 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">자기소개</span>
		</div>
	
		<div class="col-8">
				<div class="row row-career">
					<div class="col-12 col-career">
						<textarea class="form-control" rows="5">${info.INTRO }</textarea>
					</div>
				</div>
		</div>
	</div>



	<%-- <div class="row">
		<!-- <textarea class="form-control" rows="5" placeholder="내용을 입력하세요."></textarea> -->
		<textarea class="form-control" rows="5">${info.INTRO }</textarea>
	</div> --%>

	<!-- 링크등록 -->
	<div class="row">
		<div class="col-3">
			<span class="bold">링크등록</span>
		</div>
		
		<div class="col-8">
				<div class="row row-career">
					<c:forEach var="link" items="${link }">
						<div class="col-3">
							<select class="form-control" id="link-select">
				 				<option  ${link.LINK_CAT_ID == 1 ? "selected = 'selected'" : '' }>영상</option>
								<option  ${link.LINK_CAT_ID == 2 ? "selected = 'selected'" : '' }>블로그</option>
								<option  ${link.LINK_CAT_ID == 3 ? "selected = 'selected'" : '' }>기타</option>
							</select>
						</div>
						<div class="col-7">
							<input type="text" class="form-control" value="${link.LINK_ADDR }">
						</div>
						<div class="col-2">
							<button type="button" class="btn btn-primary">삭제</button>
						</div>
						<br><br>
					</c:forEach>
				</div>
				<div class="row row-career">
					<div class="col-3">
						<select class="form-control">
							<option value="1">영상</option>
							<option value="2">블로그</option>
							<option value="3">기타</option>
						</select>
					</div>
					<div class="col-7">
						<input type="text" class="form-control">
					</div>
					<div class="col-2">
						<button type="button" class="btn btn-primary">추가</button>
					</div>
				</div>
		</div>
		<br> <br> <br> <br>
		<button type="button" class="btn btn-primary btn-lg"
			style="width: 200px; height: 50px; margin-left: 40%;" id="updateBtn">수정하기</button>
		<br> <br> <br> <br>
	</div>
</div>




