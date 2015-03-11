<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Detail_Email</title>
<link rel="stylesheet" href="css/style.css " type="text/css" media="all" />
</head>
<body class="ContentBody">
	<div>
		<table style="width: 99%" class="CContent">
			<tr>
				<th class="tablestyle_title">会员详细信息</th>
			</tr>

			<tr>
				<td class="CPanel">
					<div align="center">
						<table style="width: 80%">
							<tr>
								<td width="100%">
									<fieldset style="height: 100%; border: 0px;">
										<table style="width: 100%">
											<tr>
												<td align="right" width="9%">发送时间:</td>
												<td width="36%">${email.sendtime}</td>
												<td width="20%"><div align="right">主题:</div></td>
												<td width="43%">${email.title}</td>
											</tr>
											<tr>
												<td align="right" width="9%">内容:</td>
												<td>${email.content}</td>

											</tr>

											<tr>
												<td colspan="4" align="center"><a href="listemail">返回</a></td>
											</tr>
										</table>
									</fieldset>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>

