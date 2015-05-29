<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>List_Commodity</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<table style="width: 100%">
		<tr>
			<td>
				<div align="center">
					<table style="width: 95%">
						<tr>
							<td height="20"><span class="newfont07">商品信息查看</span></td>
						</tr>
						<tr>
							<td height="40" class="font42">
								<table style="width: 100%; background-color: #0071c5"
									class="newfont03">
									<tr>
										<td height="22" colspan="8" align="center"
											style="font-size: 16px; color: #FFFFFF;">商品信息列表</td>
									</tr>
									<tr bgcolor="#EEEEEE">
										<td width="4%" align="center" height="30">商品编码</td>
										<td width="10%" align="center">商品名称</td>
										<td width="10%" align="center">商品价格</td>
										<td width="10%" align="center">商品折扣</td>
										<td width="10%" align="center">进货时间</td>
										<td width="12%" align="center">执行操作</td>
									</tr>
									<c:forEach var="commodity" items="${commodities}">
										<tr bgcolor="#FFFFFF">
											<td height="22" align="center">${commodity.barcode }</td>
											<td height="22" align="center">${commodity.name }</td>
											<td height="22" align="center">${commodity.price }</td>
											<td height="22" align="center">${commodity.agio }</td>
											<td height="22" align="center">${commodity.purchasetime }</td>
											<td height="22" align="center"><a
												href="updatecommodity?barcode=${commodity.barcode}">修改</a>&nbsp;&nbsp;<a
												href="deletecommodity/${commodity.barcode}">删除</a></td>
										</tr>
									</c:forEach>
								</table>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>

