<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Update_Vips</title>
</head>
<body>
	<form name="vipsForm" method="post" action="updatevips">
		<div>
			<table style="width: 99%" class="CContent">
				<tr>
					<th class="tablestyle_title">会员信息更新</th>
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
											<legend>会员信息</legend>

											<table style="width: 100%">
												<tr>
													<td nowrap align="right" width="9%">会员编号：</td>
													<td width="36%"><input name="vipid" type="text"
														class="input" id="vipid" value="${vip.vipid}" required />
														<span class="red">*</span></td>
													<td width="12%"><div align="right">会员姓名：</div></td>
													<td width="43%"><input name="name" type="text"
														class="input" id="name" value="${vip.name}" required /> <span
														class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">会员年龄：</td>
													<td width="36%"><input name="age" type="text"
														class="input" id="age" value="${vip.age}" required /> <span
														class="red">*</span></td>
													<td width="12%"><div align="right">会员性别：</div></td>
													<td><c:if test="${vip.sex==1}">
															<input name="sex" type="radio" value="1" checked id="sex">男 <input
																name="sex" type="radio" value="0" id="sex">女</c:if></td>
													<td><c:if test="${vip.sex==0}">
															<input name="sex" type="radio" value="1" id="sex">男
												<input name="sex" type="radio" value="0" id="sex" checked>女</c:if>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">会员职业：</td>
													<td width="36%"><input type="text" id="profession"
														name="profession" value="${vip.profession}" required /> <span
														class="red">*</span></td>
													<td nowrap align="right" width="9%">联系邮箱：</td>
													<td width="36%"><input type="text" id="email"
														name="email" value="${vip.email}" required /> <span
														class="red">*</span></td>
												<tr>
												<tr>
													<td nowrap align="right" width="9%">联系电话：</td>
													<td width="36%"><input type="text" id="telnum"
														name="telnum" value="${vip.telnum}" required /> <span
														class="red">*</span></td>
													<td nowrap align="right" width="9%">住址：</td>
													<td width="36%"><input type="text" id="location"
														name="location" value="${vip.location}" required /> <span
														class="red">*</span></td>
												<tr>
												<tr>
													<td nowrap align="right" width="9%">入会时间：</td>
													<td width="36%"><input type="text" id="jointime"
														name="jointime" placeholder="yyyy-mm-dd"
														value="${vip.jointime}" required /> <span class="red">*</span></td>
													<td nowrap align="right" width="9%">会员积分：</td>
													<td width="36%"><input type="text" id="score"
														name="score" value="${vip.score}" required /> <span
														class="red">*</span></td>
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