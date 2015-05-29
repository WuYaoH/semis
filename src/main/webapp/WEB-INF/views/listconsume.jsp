<%@page import="me.theegg.semis.domain.ConsumeVips"%>
<%@page import="java.util.List"%>
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
							<td height="20"><span class="newfont07">消费信息查看</span></td>
						</tr>
						<tr>
							<td height="40" class="font42">
								<table style="width: 100%; background-color: #0071c5"
									class="newfont03">
									<tr>
										<td height="22" colspan="8" align="center"
											style="font-size: 16px; color: #FFFFFF;">消费信息列表</td>
									</tr>
									<tr bgcolor="#EEEEEE">
										<td width="4%" align="center" height="30">消费编号</td>
										<td width="6%" align="center">会员编号</td>
										<td width="8%" align="center">商品编号</td>
										<td width="8%" align="center">商品数量</td>
										<td width="8%" align="center">购买时间</td>
										<td width="10%" align="center">执行操作</td>
									</tr>
									<%
										//泛型警告
										@SuppressWarnings("unchecked")
										List<ConsumeVips> consumes = (List<ConsumeVips>) request
												.getAttribute("consumes");
									%>
									<%
										for (ConsumeVips consume : consumes) {
									%>
									<tr bgcolor="#FFFFFF">
										<td height="22" align="center"><%=consume.getConsumeid()%></td>
										<td height="22" align="center"><%=consume.getVipid().getVipid()%></td>
										<td height="22" align="center"><%=consume.getBarcode().getBarcode()%></td>
										<td height="22" align="center"><%=consume.getCommoditynum()%></td>
										<td height="22" align="center"><%=consume.getCreatetime()%></td>
										<td height="22" align="center"><a
											href="updateconsume?consumeid=<%=consume.getConsumeid()%>">修改</a>&nbsp;&nbsp;<a
											href="deleteconsume/<%=consume.getConsumeid()%>">删除</a></td>
									</tr>
									<%
										}
									%>
								</table>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>

