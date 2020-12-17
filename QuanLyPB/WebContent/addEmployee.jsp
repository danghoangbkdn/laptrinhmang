<%@page import="beans.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm nhân viên</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="addEmployee" method="post" name="addform"
		onsubmit="return checkform()">
		<input type="hidden" name="depId"
			value="<%=request.getParameter("id")%>">
		<table
			style="width: 60%; height: 400px; margin: 0px auto; margin-top: 30px; font-size: 18px; text-align: center;">
			<tr style="text-align: center;">
				<td>ID:</td>
				<td><input type="number" name="id" required="required"
					style="width: 300px; height: 35px"><span
					style="color: red;" id="errId"></span></td>
			</tr>
			<tr>
				<td>Tên:</td>
				<td><input type="text" name="name" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>SĐT:</td>
				<td><input type="text" name="phone" pattern="[0-9]{3,15}"
					required="required" style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>Ngày Sinh:</td>
				<td><input type="date" name="doB" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>Địa chỉ:</td>
				<td><input type="text" name="address" required="required"
					style="width: 300px; height: 35px"></td>
			</tr>
			<tr>
				<td>Mã phòng ban:</td>
				<td><%=request.getParameter("id")%></td>
			</tr>
		</table>

		<div style="margin-left: 600px; margin-top: 20px">
			<input class="submit" type="submit" value="Xác nhận"> <a
				href="employeeListDep?id=<%=request.getParameter("id")%>"
				style="margin-left: 20px">Hủy</a>
		</div>
	</form>
	<%
		List<Employee> employees = (List) request.getAttribute("employees");
	%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
	function checkform() {
		id = document.addform.id.value;
<%for (Employee e : employees) {%>
	if (id ==
<%=e.getId()%>
	) {
			document.getElementById("errId").innerHTML = "id đã được sử dụng";
			return false;
		}
<%}%>
	document.getElementById("errId").innerHTML = "";
		return true;
	}
</script>
</html>
