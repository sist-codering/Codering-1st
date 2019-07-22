<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>QTBoard_form.jsp</title>
<script type="text/javascript" src="<%=cp%>/resource/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/jih/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/jih/qtboard_form.css">
<!-- header_css.jsp -->
<c:import url="Header_css.jsp"></c:import>

<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<script type="text/javascript">

	

	// 좌우의 공백을 제거하는 함수
	if (typeof String.prototype.trim !== 'function')
	{
		String.prototype.trim = function()
		{
			var TRIM_PATTERN = /(^\s*)|(\s*$)/g;
			return this.replace(TRIM_PATTERN, "");
		};
	}
	
	function check() 
	{
		var f = document.boardForm;
		var str = f.title.value;
		
		if (!str) 
		{
			alert("제목을 입력하세요. ");
			f.title.focus();
			return false;
		}	
		
		str = f.content.value;
		if (!str || str=="<p>&nbsp;</p>")
		{
			alert("내용을 입력하세요. ");
			f.content.focus();
			return false;
		}	
		
		return true;
	}
	
	$(document).ready(function()
	{
		$("#addFile").on("click", function(e){
			//파일 추가 버튼 
			e.preventDefault(); 
			fn_addFile();
		}); 
		
		$("a[name='delete']").on("click", function(e){ 
			//삭제 버튼 
			e.preventDefault(); 
			fn_deleteFile($(this)); 
		});
	});
	
	var gfv_count = '${fn:length(fileList)+1}';
	
	function fn_addFile()
	{ 
		var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>"; 
		
		$("#fileDiv").append(str); 
		
		$("a[name^='delete']").on("click", function(e)
		{ 
			//삭제 버튼 
			e.preventDefault(); 
			fn_deleteFile($(this)); 
		}); 
	}
	
	function fn_deleteFile(obj)
	{ 
		obj.parent().remove(); 
	}

</script>
</head>
<body>
	<!-- 전체 영역 : flex-container -->
	<div class="flex-container">
		
		<!-- 헤더 header_menu.jsp 영역 -->
		<c:import url="Header_Sidebar_done.jsp"></c:import>

		<!-- 본문 영역 : flex-container-body -->
		<div class="flex-container-body">
			<form name="boardForm" method="post" action="<%=cp%>/qtboard_update" onsubmit="return submitContents(this);" enctype="multipart/form-data">
			<input type="hidden" name="QT_ID" value="${QT_ID }">
			<div class="flex-item">
				<!-- 본문 상단 : top-content -->
				<div class="top-content">
					<div class="divTable">
						<!-- table -->
						<div class="divTableBody">
							<!-- tbody -->
							<div class="divTableRow">
								<!-- tr -->
								<div class="divTableHead">제목</div>
								<!-- th -->
								<div class="divTableCell">
									<select class="block CellRadius" name="HEAD_ID">
										<option value="1" <c:if test="${HEAD_NAME eq '질문'}">selected='selected'</c:if>>질문</option>
										<option value="2" <c:if test="${HEAD_NAME eq '팁'}">selected='selected'</c:if>>팁</option>
										<option value="3" <c:if test="${HEAD_NAME eq '자유'}">selected='selected'</c:if>>자유</option>
									</select>
									<div class=" styleSubject" >
										<input type="text" maxlength="50" class="CellRadius" id="title" name="TITLE" value="${post.TITLE }">
									</div>
								</div>
								<!-- td -->
							</div>
							<div class="divTableRow">
								<!-- tr -->
								<div class="divTableHead">내용</div>
								<!-- th -->
								<div class="divTableCell block">
									<textarea cols="85%" rows="14" class="CellRadius marginTextArea"  id="textContent" name="CONTENT"></textarea>
								</div>
								<!-- td -->
								<div class="inline flex-end">
									<button type="button" class="btn QT-btn-gray marginSave">임시저장</button>
									<button type="button" class="btn QT-btn-gray marginCancel">불러오기</button>
								</div>
							</div>
							<!-- 첨부파일 -->
							<div class="divTableRow">
								<!-- tr -->
								<div class="divTableHead">첨부파일</div>
								<!-- th -->

<!-- 								<div class="filebox">
									<label for="ex_file">파일선택</label>
								</div> -->
								<div id="fileDiv">
									<c:forEach var="file" items="${fileList }" varStatus="var">
										<p>
											<input type="hidden" id="file" name="QT_ID_${var.index }" value="${file.QT_FILE_ID }">
											
											<a href="#this" id="name_${var.index }" name="name_${var.index }">${file.PATH_ORIGN }</a>
											
											<input type="file" id="file_${var.index }" name="file_${var.index }"> 
											
											(${file.FILE_SIZE }kb)
											
											<a href="#this" class="btn" id="delete_${var.index }" name="delete_${var.index }">삭제</a>
										</p>
							</c:forEach>
								</div>
								<br>
								<a href="#this" class="btn" id="addFile">파일 추가</a>
							</div>
						</div>
					</div>
				</div>
				<!-- end top- -->

				<!-- 본문 하단 : bottom-comtent -->
				<div class="bottom-content-center">

					<!-- 목록으로 버튼 -->
					<div style="margin: 20px 20px 20px 0;">
						<button type="button" class="btn QT-btn-purple" id="list"
						onclick="javascript:location.href='<%=cp%>/qtboard_detail?QT_ID=${QT_ID }';">취소하기</button>
					</div>

					<!-- 글쓰기 버튼 -->
					<div style="margin: 20px 0 20px 0;">
						<button type="submit" class="btn QT-btn-purple">수정하기</button>
					</div>

				</div>
				<!-- end bottom-content -->
			</div>
			</form>
			<!-- end flex-item -->
		</div>
		<!-- end flex-container-body -->
		<br>
		<!-- 푸터 영역 : flex-container-footer -->
		<div class="flex-container-footer">
			<!-- <div class="footer">
				<H2>FOOTER</H2>
			</div> -->


		</div>
		<!-- end flex-container-footer -->

	</div>
	<!-- end flex-container -->
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame(
		{
			oAppRef: oEditors
			, elPlaceHolder: "textContent"
			, sSkinURI: "<%=cp%>/resource/se/SmartEditor2Skin.html"
			, htParams : 
			  {
				bUseToolbar : true
				, fOnBeforeUnload : function()
				  {
					//alert("아싸!");
				  }
			  }
			, //boolean
			  fOnAppLoad : function()
			  {
					oEditors.getById["textContent"].exec("PASTE_HTML", [ "${post.CONTENT}" ]);
			  }
			, fCreator : "createSEditor2"
		});
	
		function pasteHTML()
		{
			var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입한다.<\/span>";
			oEditors.getById["textContent"].exec("PASTE_HTML", [ sHTML ]);
		}
	
		function showHTML()
		{
			var sHTML = oEditors.getById["textContent"].getIR();
			alert(sHTML);
		}
		
		function submitContents(elClickedObj)
		{
			oEditors.getById["textContent"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용된다.
			
			// 에디터의 내용에 대한 값 검증은 
			// 이곳에서 document.getElementById("content").value를 이용해서 처리하면 된다.
			
			try
			{
				// elClickedObj.form.submit();
				return check();
			} 
			catch (e)
			{
				
			}
		}
	
		function setDefaultFont()
		{
			var sDefaultFont = '돋움';
			var nFontSize = 24;
			oEditors.getById["textContent"].setDefaultFont(sDefaultFont, nFontSize);
		}
	</script>
</body>
</html>