<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>tutorpage</title>

<!-- Custom fonts for this template-->
<!-- 2019-07-18 없는 파일 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%-- <link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> --%>
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/lsh/sb-admin-2.css" rel="stylesheet">

<!-- contents -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/contents/css/lsh/Accordion.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lsh/myCss02.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lsh/matching07.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/headerFiles/js/jquery.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<style>

/* 튜터링 개설 상세정보 */

.divTable{
	display: table;
	width: 100%;
	height: 300px;
}
.divTableRow {
	display: table-row;
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
}
.divTableCell1, .divTableHead {
	display: table-cell;
	padding: 3px 10px;
	width: 42%;
}
.divTableCell2 {
	display: table-cell;
	padding: 3px 10px;
	font-weight: bold;
}
.divTableBody {
	display: table-row-group;
}


</style>


<!------ Include the above in your HEAD tag ---------->
<script type="text/javascript">
	$(function()
	{
		var $tabButtonItem = $('#tab-button li'), $tabSelect = $('#tab-select'), $tabContents = $('.tab-contents'), activeClass = 'is-active';

		$tabButtonItem.first().addClass(activeClass);
		$tabContents.not(':first').hide();

		$tabButtonItem.find('a').on('click', function(e)
		{
			var target = $(this).attr('href');

			$tabButtonItem.removeClass(activeClass);
			$(this).parent().addClass(activeClass);
			$tabSelect.val(target);
			$tabContents.hide();
			$(target).show();
			e.preventDefault();
		});

		$tabSelect.on('change', function()
		{
			var target = $(this).val(), targetSelectNum = $(this).prop(
					'selectedIndex');

			$tabButtonItem.removeClass(activeClass);
			$tabButtonItem.eq(targetSelectNum).addClass(activeClass);
			$tabContents.hide();
			$(target).show();
		});
	});
</script>


</head>
<body>

	<!-- 메뉴 영역 -->

	<div id="wrapper">
		
		<!-- 사이드바 -->
		<div id="sidebar">
			<c:import url="tutorpage_sidebar.jsp"></c:import>

		</div>
		
		<!-- 헤더 -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<c:import url="tutorpage_header.jsp"></c:import>
				
				<!-- 내용 -->
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<c:import url="Contents_tutorpage_Matching_apply2.jsp"></c:import>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->
		</div>
	</div>

	
</body>
</html>