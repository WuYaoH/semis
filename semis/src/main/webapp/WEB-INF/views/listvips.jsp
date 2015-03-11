<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>List_Users</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<table style="width: 100%">
		<tr>
			<td>
				<div align="center">
					<table style="width: 95%">
						<tr>
							<td height="20"><span class="newfont07">会员信息查看</span></td>
						</tr>
						<tr>
							<td height="40" class="font42">
								<table style="width: 100%; background-color: #0071c5"
									class="newfont03">
									<tr>
										<td height="22" colspan="8" align="center"
											style="font-size: 16px; color: #FFFFFF;">会员信息列表</td>
									</tr>
									<tr bgcolor="#EEEEEE">
										<td width="4%" align="center" height="30">会员编号</td>
										<td width="10%" align="center">姓名</td>
										<td width="10%" align="center">性别</td>
										<td width="12%" align="center">执行操作</td>
									</tr>
									<c:forEach var="vip" items="${vips}">
										<tr bgcolor="#FFFFFF">
											<td height="22" align="center">${vip.vipid }</td>
											<td height="22" align="center">${vip.name }</td>
											<td height="22" align="center"><c:if
													test="${vip.sex == 1}">男
										</c:if> <c:if test="${vip.sex == 0}">女</c:if></td>
											<td height="22" align="center"><a
												href="detailvips?vipid=${vip.vipid}">查看</a>&nbsp;&nbsp;<a
												href="updatevips?vipid=${vip.vipid}">修改</a>&nbsp;&nbsp;<a
												href="deletevips/${vip.vipid}">删除</a></td>
										</tr>
									</c:forEach>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>

