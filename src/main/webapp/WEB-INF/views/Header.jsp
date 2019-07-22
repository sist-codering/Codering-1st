<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>




<style type="text/css">
#header {
	/* width: 1200px; */
	text-align: center;
	padding: 20px;
	margin-bottom: 20px;
	height: 100%;
	margin: 0 auto;
}

div {
	/* border: 1px solid #ccc; */
	
}

.mypageliter {
	text-align: left;
	height: 80px;
}

#container {
	/* width: 1200px; */
	/* padding: 20px; */
	margin: 0 auto;
	height: 100%;
}

#contents {
	width: 930px;
	/* padding: 20px; */
	float: right;
	margin-bottom: 20px;
}

#footer {
	clear: both;
	padding: 20px;
	text-align: center;
	font-size: small;
}

.profileimg {
	width: 80px;
	height: 80px;
	margin-left: 10px;
	float: left;
}

.profile0 {
	float: left;
	/* width: 500px; */
	margin-top: 18px;
	margin-left: 30px;
}

.profile1 {
	text-align: left;
	width: 100%;
	float: left;
}

#name {
	text-align: left;
	font-size: 18pt;
	font-weight: bold;
}

.profilediv {
	float: left;
}

.profile2 {
	float: left;
}

.coupondiv {
	border-radius: 40px;
	width: 100%;
	height: 110px;
	background: rgba(0, 0, 0, 0.1);
}

.coupon0 {
	height: 50%;
	width: 100%;
	float: left;
	padding-top: 10px;
}

.coupon1 {
	height: 50%;
	width: 100%;
	float: left;
}

#coupon1 {
	font-size: 22pt;
	font-weight: bold;
}

.couponspan {
	font-size: 18pt;
	font-weight: bold;
}
</style>

<!-- header 사이드바 -->




<!-- 
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<a class="navbar-brand" href="#">Codering</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarColor01" aria-controls="navbarColor01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarColor01">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Features</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
					Dropdown
				</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Link 1</a>
					<a class="dropdown-item" href="#">Link 2</a>
					<a class="dropdown-item" href="#">Link 3</a>
				</div>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text" placeholder="Search">
			<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>
 -->

<!-- 마이페이지 헤더 -->

<div id="header" class="col-md-8 col-sm-12 col-xs-12">
	<div class="row">
		<div class="col-md-12 mypageliter">
			<h3>| 마이페이지 |</h3>
		</div>
	</div>


	<div class="row">
		<div class="profilediv col-md-9 col-sm-9 col-xs-12">
			<div class="profileimg">
				<img width="100px" height="100px" src="${loginInfo.PROF_PATH }" style="border-radius: 100%;">
			</div>
			<div class="profile0 col-md-7 col-sm-8 col-xs-10">
				<div class="profile1">
					<a href="tutee_profile2"><span id="name">${loginInfo.NICKNAME }님</span></a>
				</div>
				<div class="profile2">
					<button type="button" class="btn btn-default btn-xs">정보수정</button>
				</div>
			</div>
		</div>
		<div class="coupondiv col-md-3 col-sm-3 col-xs-12">
			<div class="coupon0">쿠폰</div>
			<div class="coupon1">
				<span id="coupon1">0개</span>
			</div>
		</div>
	</div>
	<hr>
</div>

