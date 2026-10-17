<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.employee.model.Employee"%>

<%
List<Employee> employees = (List<Employee>) request.getAttribute("employees");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Employees</title>

<style>
body {
	margin: 0;
	padding: 30px 20px;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #dbeafe 0%, #e0e7ff 50%, #ede9fe 100%);
	color: #1e293b;
	min-height: 100vh;
	box-sizing: border-box;
}

h2 {
	text-align: center;
	color: #1d4ed8;
	margin-bottom: 25px;
	font-size: 30px;
}

table {
	width: 100%;
	border-collapse: collapse;
	background: white;
	border-radius: 12px;
	overflow: hidden;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
}

th {
	background: #1e293b;
	color: white;
	padding: 14px 12px;
	text-align: left;
}

td {
	padding: 12px;
	border-bottom: 1px solid #e2e8f0;
}

tr:nth-child(even) {
	background: #f1f5f9;
}

tr:hover {
	background: #dbeafe;
}

.back-link {
    display: block;
    width: fit-content;
    margin: 30px auto 10px;
    padding: 12px 22px;
    background: linear-gradient(135deg, #2563eb, #4338ca);
    color: white;
    text-decoration: none;
    font-weight: bold;
    border-radius: 8px;
    transition: all 0.2s ease;
}

.back-link:hover {
    background: linear-gradient(135deg, #1d4ed8, #3730a3);
    transform: translateY(-2px);
}

body {
	font-family: Arial, sans-serif;
	background: #f1f5f9;
	margin: 0;
	padding: 40px 25px;
	color: #1e293b;
}

h2 {
	text-align: center;
	font-size: 30px;
	font-weight: 700;
	margin: 10px 0 30px;
	color: #1d4ed8;
	letter-spacing: 0.5px;
}

table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0;
	background: white;
	border-radius: 12px;
	overflow: hidden;
	box-shadow: 0 8px 25px rgba(37, 99, 235, 0.12);
}

th, td {
	padding: 16px 14px;
	text-align: left;
	border-bottom: 1px solid #e2e8f0;
}

th {
	background: linear-gradient(135deg, #2563eb, #4338ca);
	color: white;
	padding: 15px 12px;
	text-align: left;
}

tr:nth-child(even) {
	background: #eff6ff;
}

tr:hover {
	background: #dbeafe;
	transition: background 0.2s ease;
}

.add-btn {
	display: block;
	width: fit-content;
	margin: 25px auto;
	padding: 12px 22px;
	background: #2563eb;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-weight: bold;
}

.add-btn:hover {
	background: #1d4ed8;
}
</style>
</head>
<body>

	<h2>All Employees</h2>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Department</th>
			<th>Designation</th>
			<th>Salary</th>
			<th>Joining Date</th>
		</tr>


		<%
		if (employees != null) {
			for (Employee emp : employees) {
		%>
		<tr>
			<td><%=emp.getEmployeeId()%></td>
			<td><%=emp.getEmployeeName()%></td>
			<td><%=emp.getEmail()%></td>
			<td><%=emp.getPhone()%></td>
			<td><%=emp.getDepartment()%></td>
			<td><%=emp.getDesignation()%></td>
			<td><%=emp.getSalary()%></td>
			<td><%=emp.getJoiningDate()%></td>
		</tr>
		<%
		}
		}
		%>

	</table>

	<div style="text-align: center; margin: 20px 0;">
		<a href="index.jsp" class="back-link">← Back to Dashboard</a>
	</div>

</body>
</html>