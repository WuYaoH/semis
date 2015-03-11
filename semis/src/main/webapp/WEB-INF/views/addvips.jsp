<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="css/style.css " type="text/css" media="all" />
<title>Add_Vips</title>
</head>
<body>
	<form name="vipsForm" method="post" action="addvips">
		<div>
			<table class="CContent">
				<tr>
					<th class="tablestyle_title">会员信息录入</th>
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
								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">
											<legend>会员信息</legend>

											<table style="width: 100%">
												<tr>
													<td nowrap align="right" width="9%">会员编号：</td>
													<td width="36%"><input name="vipid" type="text"
														class="input" id="vipid" required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">会员姓名：</div></td>
													<td width="43%"><input name="name" type="text"
														class="input" id="name" required /> <span class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">会员年龄：</td>
													<td width="36%"><input name="age" type="text"
														class="input" id="age" required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">会员性别：</div></td>
													<td><input name="sex" type="radio" value="1" id="sex"
														checked="checked"> 男 <input name="sex"
														type="radio" value="0" id="sex">女</td>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">会员职业：</td>
													<td width="36%"><input type="text" id="profession"
														class="input" name="profession" required /> <span
														class="red">*</span></td>
													<td nowrap align="right" width="9%">联系邮箱：</td>
													<td width="36%"><input type="text" id="email"
														class="input" name="email" required /> <span class="red">*</span></td>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">联系电话：</td>
													<td width="36%"><input type="text" id="telnum"
														class="input" name="telnum" /> <span class="red">*</span></td>
													<td nowrap align="right" width="9%">住址：</td>
													<td width="36%"><input type="text" id="location"
														class="input" name="location" /> <span class="red">*</span></td>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">入会时间：</td>
													<td width="36%"><input type="text" id="jointime"
														class="input" name="jointime" placeholder="yyyy-mm-dd"
														required /> <span class="red">*</span></td>
													<td nowrap align="right" width="9%">会员积分：</td>
													<td width="36%"><input type="text" id="score"
														class="input" name="score" required /> <span class="red">*</span></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
											</table>
											<br />
										</fieldset>
									</td>
								</tr>
							</table>
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