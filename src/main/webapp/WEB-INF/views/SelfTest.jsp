<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
<title>Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">

.btn
{
	border-radius: 20px;
}

</style>
</head>
<body>
<!-- 자가 진단 테스트폼 -->
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">
	<div class="container">

		<div class="card">
			<div class="card-body">
				<div class="container h-100" style="padding: 200px;">
					<div class="card">
						<div class="card-body" style="padding-bottom: 100px;">
							<div class="text-center" style="margin-bottom: 100px;">
								<h1 class="h2">자가진단 테스트(JAVA)</h1>
							</div>
							<form>
								<div class="form-group" style="margin-bottom: 100px;">
									<table class="table table-bordered">
										<tr>
											<th style="text-align: center; width: 450px;">문항</th>
											<th>1</th>
											<th>2</th>
											<th>3</th>
											<th>4</th>
											<th>5</th>
										</tr>
										<tr>
											<td style="width: 450px;">1. 변수를 선언하여 연산자를 통한 수식처리가
												가능하다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="1" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">2. 조건문과 반복문을 활용하여 연산처리가
												가능하다.(중첩문 사용가능)</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="2" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">3. 배열을 선언하여 연산처리 및 반복문활용이
												가능하다.(이중배열 사용가능)</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="3" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">4. 메소드정의와 호출이 가능하다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="4" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">5. 클래스와 인스턴스 그리고 객체에대해 이해하고
												활용이 가능하다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="5" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">6. 상속과 생성자를 이해하고 활용이 가능하다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="6" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">7. 추상화와 접근제어자의 사용이유를 알고 활용이
												가능하다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="7" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">8. 인터페이스사용 이유와 다형성에 대한 이해와 활용이
												가능하다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="8" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">9. 참조와 복제에 대해 알고있으며, 제너릭사용과
												사용이유에대해 알고있다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="9" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
										<tr>
											<td style="width: 450px;">10. 컬렉션 프레임워크구성과 사용이 가능하다.</td>
											<%
												for (int i = 1; i <= 5; i++) {
											%>
											<td><input type="radio" name="10" value="<%=i%>">
											</td>
											<%
												}
											%>
										</tr>
									</table>
								</div>
							<div class="row">
								<div class="col">
									<button type="button" class="btn">이전으로</button>
								</div>
								<div class="col">
									<button type="button" class="btn btn-primary" style="margin-left: 70%;">제출하기</button>
								</div>
							</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>