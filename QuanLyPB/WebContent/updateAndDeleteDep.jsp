<%@page import="beans.Department"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chỉnh sửa phòng ban</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		List<Department> departments = (List) request.getAttribute("departments");
	%>
	<table border="1" cellpadding="5" cellspacing="1"
		style="width: 100%; height: 200px; margin-top: 10px; font-size: 18px">
		<tr style="text-align: center;">
			<td>ID</td>
			<td>Tên phòng ban</td>
			<td style="width: 200px;">Xóa</td>
			<td style="width: 200px;">Sửa</td>
		</tr>
		<%
			for (Department d : departments) {
		%>
		<tr>
			<td style="text-align: center;"><%=d.getId()%></td>
			<td><%=d.getName()%></td>
			<td style="text-align: center;"><a
				href="deleteDepartment?id=<%=d.getId()%>">Xóa</a></td>
			<td style="text-align: center;"><a
				href="updateDepartment?id=<%=d.getId()%>">Sửa</a></td>
		</tr>
		<%
			}
		%>
	</table>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>