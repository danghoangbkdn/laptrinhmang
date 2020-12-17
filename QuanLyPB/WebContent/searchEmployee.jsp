<%@page import="java.util.List"%>
<%@page import="beans.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tìm kiếm nhân viên</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="searchEmployee" method="post">
		<input type="text" name="name" required="required"
			style="height: 33px; font-size: 18px; margin-top: 20px; margin-left: 850px"
			<%if (request.getParameter("name") != null) {%>
			value="<%=request.getParameter("name")%>" <%}%> /> <input
			class="submit" type="submit" value="tìm kiếm"
			style="font-size: 18px; margin-left: 20px" />
	</form>

	<%
		List<Employee> employees = (List) request.getAttribute("employees");
	if (employees != null && !employees.isEmpty()) {
	%>
	<table border="1" cellpadding="5" cellspacing="1"
		style="font-size: 18px; margin-top: 20px; width: 100%;">
		<tr style="text-align: center;">
			<td>ID</td>
			<td>Tên nhân viên</td>
			<td>SĐT</td>
			<td>Ngày sinh</td>
			<td>Địa chi</td>
			<td style="width: 200px">Mã phòng ban</td>
		</tr>
		<%
			for (Employee e : employees) {
		%>
		<tr>
			<td style="text-align: center;"><%=e.getId()%></td>
			<td><%=e.getName()%></td>
			<td style="text-align: center;"><%=e.getPhone()%></td>
			<td style="text-align: center;"><%=e.getDoB()%></td>
			<td><%=e.getAddress()%></td>
			<td style="text-align: center;"><%=e.getDepId()%></td>

		</tr>
		<%
			}
		%>
	</table>
	<%
		}
	if (request.getParameter("name") != null && employees.isEmpty()) {
	%><p style="font-size: 18px; margin-top: 50px; text-align: center;">
		không có kết quả phù hợp cho :
		<%=request.getParameter("name")%></p>
	<%
		}
	%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>