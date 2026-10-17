<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
</head>

<style>
label {
	display: block;
	margin-bottom: 6px;
	font-weight: bold;
	color: #334155;
}

input[type="text"], input[type="email"], input[type="number"], input[type="date"]
	{
	width: 100%;
	padding: 11px 12px;
	margin-bottom: 12px;
	border: 1px solid #cbd5e1;
	border-radius: 8px;
	box-sizing: border-box;
	font-size: 14px;
	outline: none;
}

input:focus {
	border-color: #6366f1;
	box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.15);
}

button {
	width: 100%;
	padding: 9px;
	border: none;
	border-radius: 8px;
	background: linear-gradient(135deg, #2563eb, #6366f1);
	color: white;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	transition: 0.3s;
}

button:hover {
	background: linear-gradient(135deg, #1d4ed8, #4f46e5);
	transform: translateY(-1px);
}

body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #dbeafe 0%, #e0e7ff 50%, #ede9fe 100%);
	color: #1e293b;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.container {
    background: white;
    width: 100%;
    max-width: 650px;
    padding: 25px 30px;
    border-radius: 16px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
    box-sizing: border-box;
    margin: 30px auto;
}

h2, h3 {
    text-align: center;
    color: #1d4ed8;
    margin-top: 8px;
    margin-bottom: 20px;
    font-weight: 700;
    letter-spacing: 0.3px;
}

.error-message {
    display: block;
    width: 100%;
    box-sizing: border-box;
    padding: 15px 20px;
    margin: 20px auto;
    background: #fee2e2;
    color: #b91c1c;
    border: 1px solid #fecaca;
    border-radius: 10px;
    text-align: center;
    font-size: 16px;
    font-weight: 600;
}

</style>

<body>
	<div class="container">
		<h2>Update Employee Details</h2>

		<%
		String status = request.getParameter("status");

		if ("success".equals(status)) {
		%>
		<p class="success-message">Employee updated successfully!</p>
		<%
		} else if ("failed".equals(status)) {
		%>
		<p class="error-message">Employee update failed!</p>
		<%
		}
		%>

		<form action="UpdateEmployee" method="get">
			<label>Enter Employee ID:</label> <input type="number"
				name="employeeId" required>
			<button type="submit">Find Employee</button>
		</form>

		<%
		String errorMessage = (String) request.getAttribute("errorMessage");
		if (errorMessage != null) {
		%>
		<p class="error-message"><%=errorMessage%></p>
		<%
		}
		%>

		<%
		com.employee.model.Employee employee = (com.employee.model.Employee) request.getAttribute("employee");

		if (employee != null) {
		%>

		<!-- Employee update form will go here -->

		<h3>Employee Details</h3>

		<form action="UpdateEmployee" method="post">

			<input type="hidden" name="employeeId"
				value="<%=employee.getEmployeeId()%>"> <label>Name:</label>
			<input type="text" name="employeeName"
				value="<%=employee.getEmployeeName()%>" required> <br>

			<label>Email:</label> <input type="email" name="email"
				value="<%=employee.getEmail()%>" required> <br> <label>Phone:</label>
			<input type="text" name="phone" value="<%=employee.getPhone()%>"
				required> <br> <label>Department:</label> <input
				type="text" name="department" value="<%=employee.getDepartment()%>"
				required> <br> <label>Designation:</label> <input
				type="text" name="designation"
				value="<%=employee.getDesignation()%>" required> <br> <label>Salary:</label>
			<input type="number" name="salary" value="<%=employee.getSalary()%>"
				required> <br> <label>Joining Date:</label> <input
				type="date" name="joiningDate"
				value="<%=employee.getJoiningDate()%>" required> <br>

			<button type="submit">Update Employee</button>
		</form>
		<%
		}
		%>
		<div style="text-align: center; margin-top: 18px;">
			<a href="index.jsp"
				style="color: #1d4ed8; text-decoration: none; font-weight: bold;">
				← Back to Dashboard </a>
		</div>
		
	</div>
</body>
</html>