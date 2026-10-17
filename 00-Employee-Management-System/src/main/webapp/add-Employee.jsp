<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>

<style>
{
box-sizing
:
 
border-box
;

    
}
body {
	font-family: Arial, sans-serif;
	margin: 0;
	min-height: 100vh;
	padding: 15px 20px;
	background: linear-gradient(135deg, #142d4e, #304f78, #192e4d);
	color: #243650;
}

h2 {
	text-align: center;
	color: white;
	font-size: 32px;
	margin-top: 10px;
	margin-bottom: 15px;
}

form {
	background: #ffffff;
	max-width: 650px;
	margin: 0 auto;
	padding: 20px 35px;
	border-radius: 14px;
	box-shadow: 0 12px 35px rgba(0, 0, 0, 0.25);
}

.form-row {
	display: grid;
	grid-template-columns: 170px 1fr;
	align-items: center;
	gap: 15px;
	margin-bottom: 18px;
}

label {
	font-size: 15px;
	font-weight: bold;
	color: #263c5b;
}

input {
	width: 100%;
	padding: 12px;
	border: 1px solid #cbd7e7;
	border-radius: 7px;
	font-size: 14px;
	outline: none;
	background: #fbfdff;
	transition: border-color 0.2s, box-shadow 0.2s;
}

input:focus {
	border-color: #2874e8;
	box-shadow: 0 0 0 3px rgba(40, 116, 232, 0.13);
}

.submit-btn {
	width: 100%;
	padding: 14px;
	margin-top: 8px;
	background: #2468dc;
	color: white;
	border: none;
	border-radius: 8px;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	transition: background 0.2s, transform 0.2s;
}

.submit-btn:hover {
	background: #174eaf;
	transform: translateY(-1px);
}

.message {
	text-align: center;
	font-weight: bold;
	margin-bottom: 18px;
}

@media ( max-width : 550px) {
	.form-row {
		grid-template-columns: 1fr;
		gap: 8px;
	}
	form {
		padding: 24px 20px;
	}
	h2 {
		font-size: 26px;
	}
}
</style>
</head>

<body>
	<h2>Add New Employee</h2>

	<form method="post" action="AddEmployee">

		<%
		String message = "";
		String color = "green";

		if ("true".equals(request.getParameter("success"))) {
			message = "Employee added successfully!";
		} else if ("true".equals(request.getParameter("error"))) {
			message = "Failed to add employee!";
			color = "red";
		}
		%>

		<%
		if (!message.isEmpty()) {
		%>
		<div class="message" style="color: <%=color%>;">
			<%=message%>
		</div>
		<%
		}
		%>

		<div class="form-row">
			<label for="employeeName">Employee Name:</label> <input type="text"
				id="employeeName" name="employeeName"
				placeholder="Enter employee name" required>
		</div>

		<div class="form-row">
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" placeholder="Enter email address" required>
		</div>

		<div class="form-row">
			<label for="phone">Phone:</label> <input type="text" id="phone"
				name="phone" placeholder="Enter phone number">
		</div>

		<div class="form-row">
			<label for="department">Department:</label> <input type="text"
				id="department" name="department" placeholder="Enter department">
		</div>

		<div class="form-row">
			<label for="designation">Designation:</label> <input type="text"
				id="designation" name="designation" placeholder="Enter designation">
		</div>

		<div class="form-row">
			<label for="salary">Salary:</label> <input type="number" id="salary"
				name="salary" placeholder="Enter salary" step="0.01" min="0"
				required>
		</div>

		<div class="form-row">
			<label for="joiningDate">Joining Date:</label> <input type="date"
				id="joiningDate" name="joiningDate" required>
		</div>

		<button type="submit" class="submit-btn">+ &nbsp; Add
			Employee</button>

	</form>

	<div style="text-align: center; margin-top: 18px;">
		<a href="index.jsp"
			style="color: #1d4ed8; text-decoration: none; font-weight: bold;">
			← Back to Dashboard </a>
	</div>

</body>
</html>