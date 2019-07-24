<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>6点9官网</title>
<!-- 自己的样式 -->
<link rel="stylesheet" href="static/css/home.css">
<link rel="stylesheet" href="static/css/landing.css">
<!-- 框架样式 -->
<link rel="stylesheet" href="static/css/style.css">
<link rel="stylesheet" href="static/css/bootstrap.min.css" />

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
							<li><a href="landing">登陆</a></li>
							<li><a href="index">首页</a></li>
						</ul>
						<span class="ic_line" id="h_line"></span>
					</div>
				</div>
			</div>
			<div class="events_sec" id="events_sec">
				<div class="content">
					<div align="left" class="div_cs">
						<div align="left" class="div_c">
							<span class="titlets">6&nbsp;点&nbsp;9&nbsp;官&nbsp;网</span>
						</div>
						<div align="left" class="div_s">
							<form class="form-signin" id="loginForm" action="login"
								method="post">
								<div align="center">
									<span class="title">6点9官网</span>
								</div>

								<input type="text" id="username" name="username"
									class="form-control" placeholder="用户名" required autofocus
									onblur='usernamee()'> <br> <input type="password"
									id="pswd" name="pswd" class="form-control" placeholder="密码"
									required onblur='userpass()'><br> <input
									type="password" id="pswds" name="pswds" class="form-control"
									placeholder="在输入密码" required onblur='userPassoft()'><br>
								<input type="text" id="qqtext" name="qqtext"
									class="form-control" placeholder="填写qq账号获取验证码" required
									style="width: 239px" onblur='userqq()'>
								<button type="submit" class="btn btn-primary" id="qqtexte"
									style="margin-right: -347px; margin-left: 248px; margin-top: -56px;">
									获取验证码</button>

								<br> <input type="text" id="Verificationcode"
									name="Verificationcode" class="form-control" placeholder="验证码"
									required onblur='useryanz()'><br>

								<div align="right">
									<label><input type="checkbox" id="remember"
										value="remember-me"> 记住密码 </label>
								</div>

								<button type="submit" class="btn btn-primary"
									style="width: 300px;">注册</button>
							</form>



						</div>
					</div>
					<div id='tablediv'></div>


				</div>
			</div>

			<div class="wage_sec" id="wage_sec">
				<div class="content">
					<h3 class="tt_bg">网站介绍</h3>
					<center>

						<p>一个为自己而生的网站</p>

						<br> <br> <br>
					</center>
					<br> <br> <br>
				</div>
			</div>
		</div>
	</div>

	<audio id="myaudio" src="static/Audio/AlexandroQuerevalú.mp3"
		controls="controls" loop="false" hidden="true"></audio>


	<script src="static/js/canvas-nest.min.js"></script>
	<script src="static/js/jquery-1.8.3.js"></script>
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/registered.js"></script>
	<script src="static/js/ListUI.js"></script>

</body>
</html>