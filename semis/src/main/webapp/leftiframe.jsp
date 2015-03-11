<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="X-Frame-Options" content="SAMEORIGIN">
<title>leftIframe</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">
	function tupian(idt) {
		var nametu = "xiaotu" + idt;
		var tp = document.getElementById(nametu);
		tp.src = "images/blue.gif";//图片为蓝色的正方形

		for (var i = 1; i < 30; i++) {

			var nametu2 = "xiaotu" + i;
			if (i != idt * 1) {
				var tp2 = document.getElementById('xiaotu' + i);
				if (tp2 != undefined) {
					tp2.src = "images/white.gif";
				}//图片为白色的正方形
			}
		}
	}

	function list(idstr) {
		var name1 = "subtree" + idstr;
		var name2 = "img" + idstr;
		var objectobj = document.all(name1);
		var imgobj = document.all(name2);

		//alert(imgobj);

		if (objectobj.style.display == "none") {
			for (i = 1; i < 10; i++) {
				var name3 = "img" + i;
				var name = "subtree" + i;
				var o = document.all(name);
				if (o != undefined) {
					o.style.display = "none";
					var image = document.all(name3);
					//alert(image);
					image.src = "images/closed.gif";
				}
			}
			objectobj.style.display = "";
			imgobj.src = "images/opened.gif";
		} else {
			objectobj.style.display = "none";
			imgobj.src = "images/closed.gif";
		}
	}
</script>
<body>
	<table style="width: 180px" class="left-table01">
		<tr>
			<TD>
				<!--  任务系统开始    -->
				<TABLE style="width: 100%;" class="left-table03">
					<tr>
						<td height="35">
							<div align="center">
								<table style="width: 85%">
									<tr>
										<td width="8%"><img name="img8" id="img8"
											src="images/closed.gif" width="8" height="11" /></td>
										<td width="92%"><a href="javascript:"
											target="rightiframe" class="left-font03" onClick="list('8');">商品信息管理</a></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</TABLE>
				<div align="center">
					<table id="subtree8" style="display: none; width: 80%;"
						class="left-table02">
						<tr>
							<td width="9%" height="20"><img id="xiaotu1"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="addcommodity" target="rightiframe"
								class="left-font03" onClick="tupian('1');">商品信息录入</a></td>
						</tr>
						<tr>
							<td width="9%" height="21"><img id="xiaotu2"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="listcommodity" target="rightiframe"
								class="left-font03" onClick="tupian('2');">商品信息查看</a></td>
						</tr>

					</table>
				</div> <!--  商品系统结束    --> <!--  VIP管理系统开始    -->
				<TABLE style="width: 100%;" class="left-table03">
					<tr>
						<td height="35">
							<div align="center">
								<table style="width: 85%">
									<tr>
										<td width="8%"><img name="img7" id="img7"
											src="images/closed.gif" width="8" height="11" /></td>
										<td width="92%"><a href="javascript:"
											target="rightiframe" class="left-font03" onClick="list('7');">VIPs信息管理</a></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</TABLE>
				<div align="center">
					<table id="subtree7" style="DISPLAY: none; width: 80%"
						class="left-table02">
						<tr>
							<td width="9%" height="20"><img id="xiaotu3"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="addvips" target="rightiframe"
								class="left-font03" onClick="tupian('3');">VIP信息录入</a></td>
						</tr>
						<tr>
							<td width="9%" height="20"><img id="xiaotu4"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="listvips" target="rightiframe"
								class="left-font03" onClick="tupian('4');">VIP信息查看</a></td>
						</tr>
					</table>
				</div> <!--  VIP系统结束    --> <!--  消费信息开始    -->
				<table style="width: 100%" class="left-table03">
					<tr>
						<td height="35">
							<div align="center">
								<table style="width: 85%">
									<tr>
										<td width="8%"><img name="img6" id="img6"
											src="images/closed.gif" width="8" height="11" /></td>
										<td width="92%"><a href="javascript:"
											target="rightiframe" class="left-font03" onClick="list('6');">消费信息管理</a></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
				<div align="center">
					<table id="subtree6" style="DISPLAY: none; width: 80%"
						class="left-table02">
						<tr>
							<td width="9%" height="20"><img id="xiaotu5"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="addconsume" target="rightiframe"
								class="left-font03" onClick="tupian('5');">消费信息录入</a></td>
						</tr>
						<tr>
							<td width="9%" height="20"><img id="xiaotu6"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="listconsume" target="rightiframe"
								class="left-font03" onClick="tupian('6');">消费信息查看</a></td>
						</tr>
					</table>
				</div> <!--  消费信息结束    --> <!--  系统工具开始    -->
				<table style="width: 100%" class="left-table03">
					<tr>
						<td height="35">
							<div align="center">
								<table style="width: 85%">
									<tr>
										<td width="8%" height="12"><img name="img5" id="img5"
											src="images/closed.gif" width="8" height="11" /></td>
										<td width="92%"><a href="javascript:"
											target="rightiframe" class="left-font03" onClick="list('5');">系统用户管理</a></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
				<div align="center">
					<table id="subtree5" style="DISPLAY: none; width: 80%"
						class="left-table02">

						<tr>
							<td width="9%" height="20"><img id="xiaotu7"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="adduser" target="rightiframe"
								class="left-font03" onClick="tupian('7');">添加管理员</a></td>
						</tr>
						<tr>
							<td width="9%" height="20"><img id="xiaotu8"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="listusers" target="rightiframe"
								class="left-font03" onClick="tupian('8');">查看管理员</a></td>
						</tr>
					</table>
				</div> <!--  系统工具结束    --> <!--  邮件系统开始    -->
				<table style="width: 100%" class="left-table03">
					<tr>
						<td height="35">
							<div align="center">
								<table style="width: 85%">
									<tr>
										<td width="8%" height="12"><img name="img4" id="img4"
											src="images/closed.gif" width="8" height="11" /></td>
										<td width="92%"><a href="javascript:"
											target="rightiframe" class="left-font03" onClick="list('4');">邮件系统管理</a></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
				<div align="center">
					<table id="subtree4" style="DISPLAY: none; width: 80%"
						class="left-table02">
						<tr>
							<td width="9%" height="20"><img id="xiaotu9"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="sendemail" target="rightiframe"
								class="left-font03" onClick="tupian('9');">发送新的邮件</a></td>
						</tr>
						<tr>
							<td width="9%" height="20"><img id="xiaotu10"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="listemail" target="rightiframe"
								class="left-font03" onClick="tupian('10');">查看历史邮件</a></td>
						</tr>
					</table>
				</div> <!--  邮件系统结束    --> <!--  帮助关于开始    -->
				<table style="width: 100%;" class="left-table03">
					<tr>
						<td height="35">
							<div align="center">
								<table style="width: 85%;">
									<tr>
										<td width="8%" height="12"><img name="img3" id="img3"
											src="images/closed.gif" width="8" height="11" /></td>
										<td width="92%"><a href="javascript:"
											target="rightiframe" class="left-font03" onClick="list('3');">帮助和关于</a></td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
				<div align="center">
					<table id="subtree3" style="DISPLAY: none; width: 80%"
						class="left-table02">
						<tr>
							<td width="9%" height="20"><img id="xiaotu11"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="help.html" target="_top"
								class="left-font03" onClick="tupian('11');">帮助和关于</a></td>
						</tr>
						<!-- <tr>
							<td width="9%" height="20"><img id="xiaotu12"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="about.html" target="rightiframe"
								class="left-font03" onClick="tupian('12');">关于</a></td>
						</tr> -->
						<tr>
							<td width="9%" height="20"><img id="xiaotu13"
								src="images/white.gif" width="8" height="12" /></td>
							<td width="91%"><a href="logout" target="_parent"
								class="left-font03" onClick="tupian('13');">退出</a></td>
						</tr>
					</table>
				</div>
			</TD>
		</tr>
	</table>
</body>
</html>
