<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="css/style.css " type="text/css" media="all" />
<title>Add_User</title>
</head>
<body>
	<form name="usersForm" method="post" action="adduser">
		<div>
			<table class="CContent">
				<tr>
					<th class="tablestyle_title">管理员信息录入</th>
				</tr>
				<tr>
					<td height="30">
						<table style="width: 100%;">
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
														class="input" id="username" required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">登陆密码：</div></td>
													<td width="43%"><input name="password" type="password"
														class="input" id="password" required /> <span class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">权限：&nbsp;</td>
													<td><select name="limitint">
															<option value="ADMIN">管理员</option>
															<option value="USER">职员</option>
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
				<tr>
					<td colspan="2" align="center" height="50px"><input name="提交"
						type="submit" class="button" value="保存" /> <input name="重置"
						type="reset" class="button" value="重置" /></td>
				</TR>
			</table>
		</div>
	</form>
</body>
</html>