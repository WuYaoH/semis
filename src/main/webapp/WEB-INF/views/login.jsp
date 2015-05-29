<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<link type="text/css" href="css/login.css" rel="stylesheet" />
</head>
<body>
	<div id="container">
		<div class="logo">
			<a href="http://crystal.theegg.me/" target="_blank"><img
				src="images/logo.png" alt="访问个人博客" /> </a>
		</div>
		<%-- <c:if test="${!empty message}">
			<script type="text/javascript">
				alert("${message}");
			</script>
		</c:if> --%>
		<div id="box">
			<form action="login" method="POST">
				<p class="main">
					<label>用户名: </label> <input name="username" placeholder="请输入用户名"
						required /> <label>密码: </label> <input type="password"
						name="password" placeholder=请输入密码 required>
				</p>
				<p class="space">
					<span><input type="hidden" /><!-- 记住我 --></span> <input type="submit"
						value="登录" class="login" /> <a href="help.html">忘记密码？</a>
				</p><input type="hidden"                        
        name="${_csrf.parameterName}"
        value="${_csrf.token}"/>
			</form>
		</div>
	</div>
	<br class="clearboth" />
	<div style="background: #fff">
		<div id="footer">
			<!-- <ul>
				<li>Help</li>
				<li>Terms</li>
				<li>Privacy Policy</li>
				<li>Safety Tips</li>
				<li>Report Abuse</li>
				<li>Advertise</li>
				<li>Developers</li>
				<li>MySpace International</li>
				<li>lMySpace Latino</li>
			</ul> -->
			<p style="font-size: 12px;">
				©2014 <a href="http://crystal.theegg.me/">crystal.theegg.me</a>. All
				Rights Reserved.
			</p>
		</div>
	</div>
</body>
</html>