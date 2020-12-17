<%@page import="beans.Department"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm phòng ban</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="addDepartment" method="post" name="addform"
		onsubmit="return checkform()">
		<table
			style="width: 80%; height: 150px; text-align: center; font-size: 18px; margin: 0px auto; margin-top: 100px">
			<tr>
				<td>ID phòng ban:</td>
				<td style="width: 800px;"><input type="number" name="id"
					required="required" style="width: 770px; height: 35px;"><span
					style="color: red; font-size: 20px;" id="errId"></span></td>
			</tr>
			<tr>
				<td>Tên phòng ban:</td>
				<td><input type="text" name="name" required="required"
					style="width: 770px; height: 35px;"></td>
			</tr>
		</table>
		<input class="submit" type="submit" value="Xác nhận"
			style="margin-left: 600px; margin-top: 50px; font-size: 18px">
		<a href="home" style="margin-left: 50px; font-size: 18px">Hủy</a>

	</form>
	<%
		List<Department> departments = (List) request.getAttribute("departments");
	%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
	function checkform() {
		id = document.addform.id.value;
<%for (Department d : departments) {%>
	if (id ==
<%=d.getId()%>
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