<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
</style>
<link rel="stylesheet" href="css/style.css " type="text/css" media="all" />
<title>Add_Consume</title>
</head>
<body>
	<form name="consumeForm" method="post" action="addconsume">
		<div>
			<table class="CContent">
				<tr>
					<th class="tablestyle_title">消费信息录入</th>
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
											<legend>消费信息</legend>

											<table style="width: 100%">
												<tr>
													<td nowrap align="right" width="9%">消费编号:</td>
													<td width="36%"><input name="consumeid" type="text"
														class="input" id="consumeid" required /> <span
														class="red">*</span></td>
													<td width="12%"><div align="right">会员编号:</div></td>
													<td width="43%"><input name="vipid" type="text"
														class="input" id="vipid" required /> <span class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">商品编号:</td>
													<td width="36%"><input name="barcode" type="text"
														class="input" id="barcode" required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">商品数量:</div></td>
													<td><input class="input" name="commoditynum"
														type="text" id="commoditynum" required></td>
												</tr>
												<tr>

													<td nowrap align="right" width="9%">购买时间:</td>
													<td width="36%"><input type="text" id="createtime"
														class="input" name="createtime" placeholder="yyyy-mm-dd"
														required /> <span class="red">*</span></td>
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