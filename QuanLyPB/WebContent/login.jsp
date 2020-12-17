<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="post"
		style="margin: 100px auto; width: 400px;">
		<h1 style="text-align: center;">Đăng nhập</h1>
		<table style="margin: 30px auto; width: 500px; font-size: 20px;">
			<tr>
				<td style="width: 100px;">Tài khoản:</td>
				<td><input type="text" name="userName" required="required"
					style="width: 300px; height: 30px;"></td>
			</tr>
			<tr>
				<td style="width: 100px;">Mật khẩu:</td>
				<td><input type="password" name="password" required="required"
					style="width: 300px; height: 30px;"></td>
			</tr>
			<tr style="height: 50px; margin-top: 10px;">
				<td><input type="submit" value="Đăng nhập"
					style="font-size: 20px"></td>
				<td><a href="home" style="margin-left: 10px;">Hủy</a></td>
			</tr>
		</table>
	</form>
</body>
</html>