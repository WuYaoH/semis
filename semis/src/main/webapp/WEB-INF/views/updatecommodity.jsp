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
<title>Update_Commodity</title>
</head>
<body>
	<form name="commodityForm" method="post" action="updatecommodity">
		<div>
			<table style="width: 99%" class="CContent">
				<tr>
					<th class="tablestyle_title">商品信息录入</th>
				</tr>
				<tr>
					<td height="30">
						<table style="">
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

											<legend>商品信息</legend>

											<table style="width: 100%">
												<tr>
													<td nowrap align="right" width="9%">商品编码：</td>
													<td width="36%"><input name="barcode" type="text"
														class="input" id="barcode" value="${commodity.barcode}"
														required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">商品名称：</div></td>
													<td width="43%"><input name="name" type="text"
														class="input" id="name" value="${commodity.name}" required />
														<span class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">商品价格：</td>
													<td width="36%"><input name="price" type="text"
														class="input" id="price" value="${commodity.price}"
														required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">商品折扣：</div></td>
													<td width="43%"><input name="agio" type="text"
														class="input" id="agio" placeholder="保留两位小数"
														value="${commodity.agio}" required /> <span class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">进货时间：</td>
													<td width="36%"><input type="text" id="purchasetime"
														name="purchasetime" placeholder="yyyy-mm-dd"
														value="${commodity.purchasetime}" required /> <span
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