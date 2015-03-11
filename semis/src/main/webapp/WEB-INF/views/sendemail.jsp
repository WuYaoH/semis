<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
</style>
<link rel="stylesheet" href="css/style.css " type="text/css" media="all" />
<title>Send_Email</title>
</head>
<body>
	<form method="post" action="sendemail">
		<div>
			<table style="width: 99%;" class="CContent">
				<tr>
					<th class="tablestyle_title">发送邮件</th>
				</tr>
			</table>
			<div>
				<label style="top: 2px; font-size: 20px; font-weight: bolder;">主题:</label>
			</div>
			<div>
				<input type="text" name="subject" id="subject" required="required"
					style="width: 800px; height: 25px; font-size: 18px;">
			</div>
			<div>
				<label style="top: 2px; font-size: 20px; font-weight: bolder;">正文:</label>
			</div>
			<div>

				<textarea name="mainmessage"
					style="width: 800px; height: 240px; font-size: 18px;"
					required="required"></textarea>
			</div>
			<div>
				<button type="submit" style="margin-left: 800px;" class="button">发送</button>
			</div>
		</div>
	</form>
</body>
</html>