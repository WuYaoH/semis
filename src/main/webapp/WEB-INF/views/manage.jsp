<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
#header {
	background-color: #0071c5;
	color: white;
	text-align: left;
	padding: 5px;
}

#nav {
	margin: 0px 0px 0px 50px;
	height: 400px;
	width: 200px;
	float: left;
}

#section {
	overflow: auto;
	margin: 0px 50px 0px 0px;
	height: 400px;
	float: left;
	margin: 0px 50px 0px 0px;
}

#footer {
	background-color: #0071c5;
	color: #eeeeee;
	clear: both;
	text-align: center;
	padding: 5px;
}
</style>
<script type="text/javascript">
	function resetIframeSize() {
		var a = document.body.clientWidth - 308;
		document.getElementById("section").style.width = a + "px";
	}
	window.onload = resetIframeSize;
	window.onresize = resetIframeSize;
</script>
<title>管理</title>
</head>
<body>
	<div id="header">
		<h1 align="center" >欢迎使用SEMIS商场会员管理系统</h1>
	</div>
	<script type="text/javascript">
		function resetIframeSize() {
			var a = document.body.clientWidth - 308;
			document.getElementById("section").style.width = a + "px";
		}
		window.onload = resetIframeSize;
		window.onresize = resetIframeSize;
	</script>
	<iframe id="nav" src="leftiframe.jsp" name="leftiframe"> </iframe>
	<iframe id="section" src="rightiframe.html" name="rightiframe">
	</iframe>

	<div id="footer">Copyright me.theegg</div>
</body>


</html>
