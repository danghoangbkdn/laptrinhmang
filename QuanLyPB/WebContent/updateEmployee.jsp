<%@page import="beans.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật nhân viên</title>
</head>
<body>
	<%
		Employee employee = (Employee) request.getAttribute("employee");
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="updateEmployee" method="post">
		<input type="hidden" name="id" value="<%=employee.getId()%>">
		<table
			style="width: 60%; height: 400px; margin: 0px auto; margin-top: 30px; font-size: 18px; text-align: center;">
			<tr>
				<td>Id:</td>
				<td><%=employee.getId()%></td>
			</tr>
			<tr>
				<td>Tên:</td>
				<td><input type="text" name="name"
					value="<%=employee.getName()%>" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>SĐT:</td>
				<td><input type="text" name="phone"
					value="<%=employee.getPhone()%>" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>Ngày sinh:</td>
				<td><input type="date" name="doB"
					value="<%=employee.getDoB()%>" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>Địa chỉ:</td>
				<td><input type="text" name="address"
					value="<%=employee.getAddress()%>" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>Mã phòng ban:</td>
				<td><input type="text" name="depId"
					value="<%=employee.getDepId()%>" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
		</table>
		<div style="margin-left: 600px; margin-top: 20px">
			<input class="submit" type="submit" value="Xác nhận" /> <a
				href="employeeListDep?id=<%=employee.getDepId()%>"
				style="margin-left: 20px">Hủy</a>
		</div>
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>