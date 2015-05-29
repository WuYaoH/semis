<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css " type="text/css" media="all" />
<title>Update_User</title>
<style type="text/css">
</style>
</head>
<body>
	<form name="userForm" method="post" action="updateuser">
		<div>
			<table style="width: 99%" class="CContent">
				<tr>
					<th class="tablestyle_title">管理员信息更新</th>
				</tr>
				<tr>
					<td height="30">
						<table style="width: 100%">
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							<table style="width: 80%">
								<TR>
									<TD width="100%">
										<fieldset style="height: 100%;">
											<legend>管理员信息</legend>
											<table style="width: 100%">
												<tr>
													<td nowrap align="right" width="9%">用户名：</td>
													<td width="36%"><input name="username" type="text"
														id="username" value="${user.username}" required> <span
														class="red">*</span></td>
													<td width="12%"><div align="right">登陆密码：</div></td>
													<td width="43%"><input name="password" type="text"
														class="input" id="password" value="${user.password}"
														required /> <span class="red">*</span>
												</tr>
												<tr>
													<td>权限：</td>
													<td><select name="limit">
															<option value="0">管理员</option>
															<option value="1">职员</option>
													</select></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
											</table>
											<br />
										</fieldset>
									</TD>

								</TR>
							</TABLE>
						</div>
					</td>
				</tr>
				<TR>
					<TD colspan="2" align="center" height="50px"><input
						type="submit" class="button" value="更新" /> <input type="reset"
						class="button" value="重置" /></TD>
				</TR>
			</TABLE>
		</div>
	</form>
</body>
</html>

