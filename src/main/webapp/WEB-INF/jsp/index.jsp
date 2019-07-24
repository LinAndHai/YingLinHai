<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>6点9官网</title>
<meta name="keywords" content="">
<!--关键词-->
<meta name="description" content="">
<!--描述-->
<link rel="stylesheet" href="static/css/style.css">
<link rel="stylesheet" href="static/css/home.css">
</head>
<body>
	<div class="wrap about_page" id="wrap">
		<div class="wrapper">
			<div class="header">
				<div class="head">

					<div class="logo_box">
						<h1 class="hide_txt">
							<a href="index" title="6点9官网" class="a_title"><span
								class="title">6点9官网</span></a>

						</h1>
					</div>
					<div class="nav_box">
						<ul class="nav_list" id="nav_list">
							<li><a href="javascript:void(0);" onclick="autoPlay()"
								id="playbtn" class="btn_sound"></a></li>
							<!--判断用户是否登录  -->
							<c:choose>
							<c:when test="${userid == null }">
								<li><a href="registered">注册</a></li>
								<li><a href="landing">登陆</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="registered">个人中心</a></li>
							</c:otherwise>
							</c:choose>
							
						</ul>
						<span class="ic_line" id="h_line"></span>
					</div>
				</div>
			</div>
			<div class="events_sec" id="events_sec">
				<div class="content">
					<div align="center">
						<span class="titles">6点9官网</span>
					</div>

					<div class="events_list">
						<span class="ic_time png"></span>
						<ul>
							<li class="right_li"><span class="ic_events png"></span>
								<p class="txt_events">
									<a href="#"><strong>个人中心</strong></a>
								</p></li>
							<li class="left_li"><span class="ic_events"><i
									class="png"></i></span>
								<p class="txt_events">
								<a href="#"><strong>6点9动态</strong></a>
								</p></li>
							<li class="right_li"><span class="ic_events png"></span>
								<p class="txt_events">
								<a href="WarehouseManagement/mainMenu"><strong>仓库管理</strong></a>
								</p></li>
							<li class="left_li"><span class="ic_events"><i
									class="png"></i></span>
								<p class="txt_events">
								<a href="#"><strong>信息管理</strong></a>
								</p></li>
							<li class="right_li"><span class="ic_events png"></span>
								<p class="txt_events">
								<a href="#"><strong>情感树洞</strong></a>
								</p></li>
							<li class="left_li"><span class="ic_events"><i
									class="png"></i></span>
								<p class="txt_events">
								<a href="#"><strong>个人想法</strong></a>
								</p></li>
						</ul>
						<span class="ic_arr png"></span>
					</div>
				</div>
			</div>

			<div class="wage_sec" id="wage_sec">
				<div class="content">
					<h3 class="tt_bg">网站介绍</h3>
					<center><p>一个为自己而生的网站</p><br/> <br/> <br/></center>
					<br> <br> <br>
				</div>
			</div>
		</div>
	</div>

	<audio id="myaudio" src="static/Audio/AlexandroQuerevalú.mp3"
		controls="controls" loop="false" hidden="true"></audio>

	<script src="static/js/ListUI.js"></script>
	<script src="static/js/canvas-nest.min.js"></script>
	<script src="static/js/jquery-1.8.3.js"></script>
</body>
</html>