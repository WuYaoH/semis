<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<title>Add_Commodity</title>
</head>
<body>
	<form name="commodityForm" method="post" action="addcommodity">
		<div>
			<table class="CContent">
				<tr>
					<th class="tablestyle_title">商品信息录入</th>
				</tr>
				<tr>
					<td height="30">
						<table style="width: 100%">
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
						</table>
						<div align="center">
							<table style="width: 80%">
								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">

											<legend>商品信息</legend>

											<table style="width: 100%">
												<tr>
													<td nowrap align="right" width="9%">商品编码：</td>
													<td width="36%"><input name="barcode" type="text"
														class="input" id="barcode" required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">商品名称：</div></td>
													<td width="43%"><input name="name" type="text"
														class="input" id="name" required /> <span class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">商品价格：</td>
													<td width="36%"><input name="price" type="text"
														class="input" id="price" required /> <span class="red">*</span></td>
													<td width="12%"><div align="right">商品折扣：</div></td>
													<td width="43%"><input name="agio" type="text"
														class="input" id="agio" placeholder="保留两位小数" required />
														<span class="red">*</span>
												</tr>
												<tr>
													<td nowrap align="right" width="9%">进货时间：</td>
													<td width="36%"><input type="text" id="purchasetime"
														class="input" name="purchasetime" placeholder="yyyy-mm-dd"
														required /> <span class="red">*</span></td>
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
				</tr>
			</table>
		</div>
	</form>
</body>
</html>