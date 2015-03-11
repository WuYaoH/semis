<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Detail_Vips</title>
<link rel="stylesheet" href="css/style.css "
	type="text/css" media="all" />
</head>
<body class="ContentBody">
	<div>
		<table style="width: 99%" class="CContent">
			<tr>
				<th class="tablestyle_title">会员详细信息</th>
			</tr>

			<tr>
				<td class="CPanel">
					<div align="center">
						<table style="width: 80%">
							<tr>
								<td width="100%">
									<fieldset style="height: 100%; border: 0px;">
										<table style="width: 100%">
											<tr>
												<td align="right" width="9%">编号:</td>
												<td width="36%">${vip.vipid}</td>
												<td width="20%"><div align="right">姓名:</div></td>
												<td width="43%">${vip.name}</td>
											</tr>
											<tr>
												<td align="right" width="9%">年龄:</td>
												<td>${vip.age}</td>
												<td><div align="right">性别:</div></td>
												<td><c:if test="${vip.sex == 1}">男
										</c:if> <c:if test="${vip.sex == 0}">女</c:if></td>
											</tr>
											<tr>
												<td align="right">专业:</td>
												<td>${vip.profession}</td>
												<td><div align="right">邮箱:</div></td>
												<td>${vip.email}</td>
											</tr>
											<tr>
												<td align="right">电话:</td>
												<td>${vip.telnum}</td>
												<td><div align="right">住址:</div></td>
												<td>${vip.location}</td>
											</tr>
											<tr>
												<td align="right">入会时间：</td>
												<td>${vip.jointime}</td>
												<td><div align="right">积分:</div></td>
												<td>${vip.score}</td>
											</tr>
											<tr>
												<td colspan="4" align="center"><a href="listvips">返回</a></td>
											</tr>
										</table>
									</fieldset>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>

