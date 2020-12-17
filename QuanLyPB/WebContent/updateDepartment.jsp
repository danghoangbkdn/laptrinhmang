<%@page import="beans.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật phòng ban</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		Department department = (Department) request.getAttribute("department");
	%>
	<form action="updateDepartment" method="post">
		<input type="hidden" name="id" value="<%=department.getId()%>">
		<table
			style="margin: 0px auto; width: 40%; margin-top: 50px; font-size: 18px; text-align: center;">
			<tr style="width: 300px; height: 35px">
				<td>Id:</td>
				<td><%=department.getId()%></td>
			</tr>
			<tr>
				<td>Tên phòng ban:</td>
				<td><input type="text" name="name"
					value="<%=department.getName()%>" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
		</table>

		<div style="margin-left: 600px; margin-top: 20px;">
			<input class="submit" type="submit" value="Xác nhận"> <a
				href="updateAndDeleteDep" style="margin-left: 20px">Hủy</a>
		</div>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>