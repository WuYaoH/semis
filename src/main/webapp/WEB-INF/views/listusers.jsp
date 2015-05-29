<%@page import="me.theegg.semis.domain.Users"%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@page import="java.util.List"%>
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
			<td><div align="center">
					<table style="width: 95%">
						<tr>
							<td height="20"><span class="newfont07">管理员信息查看</span></td>
						</tr>
						<tr>
							<td height="40" class="font42">
								<table style="width: 100%; background-color: #0071c5"
									class="newfont03">
									<tr>
										<td height="22" colspan="8" align="center"
											style="font-size: 16px; color: #FFFFFF;">管理员信息列表</td>
									</tr>
									<tr bgcolor="#EEEEEE">
										<td width="4%" align="center" height="30">用户名</td>
										<td width="10%" align="center">密码</td>
										<td width="10%" align="center">权限</td>
										<td width="12%" align="center">执行操作</td>
									</tr>
									<%
										//泛型警告
										@SuppressWarnings("unchecked")
										List<Users> users = (List<Users>) request.getAttribute("users");
									%>

									<%
										for (Users user : users) {
									%>
									<tr bgcolor="#FFFFFF">
										<td height="22" align="center">
											<%
												out.print(user.getUsername());
											%>
										</td>
										<td height="22" align="center">
											<%
												out.print(user.getPassword());
											%>
										</td>
										<td height="22" align="center">
											<%
												out.print(user.getAuthorities().iterator().next()
															.getAuthority());
											%>
										</td>
										<td height="22" align="center"><a
											href="updateuser?username=<%out.print(user.getPassword());%>">修改</a>&nbsp;&nbsp;<a
											href="deleteuser/<%out.print(user.getPassword());%>">删除</a></td>
									</tr>
									<%
										}
									%>
								</table>
							</td>
						</tr>
					</table>
				</div></td>
		</tr>
	</table>
</body>
</html>

