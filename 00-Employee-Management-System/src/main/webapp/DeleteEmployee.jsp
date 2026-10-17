<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Employee</title>
</head>

<style>
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
	max-width: 480px;
	padding: 25px 30px;
	border-radius: 16px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
}

h2 {
	text-align: center;
	color: #1d4ed8;
	margin-top: 5px;
	margin-bottom: 22px;
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 6px;
}

input[type="number"] {
	width: 100%;
	padding: 12px 14px;
	margin-bottom: 18px;
	border: 1px solid #cbd5e1;
	border-radius: 8px;
	box-sizing: border-box;
	font-size: 15px;
	outline: none;
	transition: 0.2s;
}

input[type="number"]:focus {
	border-color: #2563eb;
	box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.15);
}

button {
	width: 100%;
	padding: 11px;
	border: none;
	border-radius: 8px;
	background: linear-gradient(135deg, #ef4444, #dc2626);
	color: white;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	transition: 0.3s;
}

.success-message, .error-message {
	display: block;
	width: 100%;
	box-sizing: border-box;
	padding: 14px 18px;
	margin: 18px 0;
	border-radius: 10px;
	text-align: center;
	font-size: 15px;
	font-weight: 600;
}

.success-message {
	color: #166534;
	background: #dcfce7;
	border: 1px solid #86efac;
}

.error-message {
	color: #b91c1c;
	background: #fee2e2;
	border: 1px solid #fecaca;
}

button:hover {
	background: linear-gradient(135deg, #dc2626, #b91c1c);
	transform: translateY(-2px);
	box-shadow: 0 5px 12px rgba(220, 38, 38, 0.2);
}

button:active {
	transform: translateY(0);
	box-shadow: none;
}
}
</style>

<body>
	<div class="container">
		<h2>Delete Employee</h2>

		<%
		String status = request.getParameter("status");

		if ("success".equals(status)) {
		%>
		<p class="success-message">Employee deleted successfully!</p>
		<%
		} else if ("failed".equals(status)) {
		%>
		<p class="error-message">Employee not found or delete failed!</p>
		<%
		}
		%>

		<form action="DeleteEmployee" method="post"
			onsubmit="return confirm('Are you sure you want to delete this employee?');">

			<label>Enter Employee ID:</label> <input type="number"
				name="employeeId" required>

			<button type="submit">Delete Employee</button>

		</form>

		<div style="text-align: center; margin-top: 20px;">
			<a href="index.jsp"
				style="color: #1d4ed8; text-decoration: none; font-weight: bold;">
				← Back to Dashboard </a>
		</div>
	</div>

</body>
</html>
