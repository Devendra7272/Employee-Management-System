<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Employee</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
	
</head>
<style>
	
body {
    margin: 0;
    padding: 40px 20px;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #dbeafe 0%, #e0e7ff 50%, #ede9fe 100%);
    color: #1e293b;
    min-height: 100vh;
    box-sizing: border-box;
}

.details-heading {
	background: linear-gradient(90deg, #2563eb, #4f7fe8);
	color: white;
	padding: 15px 20px;
	margin: 25px 0 0;
	border-radius: 10px 10px 0 0;
	text-align: left;
	font-size: 24px;
}

.employee-info {
	background-color: #eff6ff;
	padding: 20px;
	border-radius: 0 0 10px 10px;
	border: 1px solid #bfdbfe;
}

.employee-info p {
	margin: 0;
	padding: 12px 8px;
	border-bottom: 1px solid #dbeafe;
	font-size: 15px;
	line-height: 1.5;
}

.employee-info p:last-child {
	border-bottom: none;
}

.container {
	width: 500px;
	margin: 70px auto;
	padding: 30px;
	background-color: white;
	border-radius: 12px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
}

h2 {
    text-align: center;
    color: #1e40af;
    font-size: 30px;
    margin: 0 0 30px;
    font-weight: 700;
}

h2, h3 {
	text-align: center;
	color: #1e3a8a;
}

input {
	padding: 10px;
	width: 55%;
	border: 1px solid #cbd5e1;
	border-radius: 5px;
}

button {
	padding: 10px 14px;
	background-color: #2563eb;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.error-message {
    background: #fee2e2;
    color: #b91c1c;
    border: 1px solid #fecaca;
    padding: 14px 20px;
    border-radius: 10px;
    text-align: center;
    font-size: 16px;
    font-weight: 600;
    width: 100%;
    box-sizing: border-box;
    margin: 25px auto;
}


button:hover {
	background-color: #1d4ed8;
}

form {
    display: flex;
    align-items: center;
    gap: 12px;
    margin: 0 auto 30px;
    max-width: 750px;
    width: 100%;
    flex-wrap: wrap;
}

label {
    font-weight: bold;
    white-space: nowrap;
}

input[type="number"] {
    flex: 1;
    min-width: 0;
    padding: 12px 14px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    font-size: 15px;
    outline: none;
}

input[type="number"]:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.15);
}

button {
    padding: 12px 20px;
    background: linear-gradient(135deg, #2563eb, #4338ca);
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
    white-space: nowrap;
}

button:hover {
    background: linear-gradient(135deg, #1d4ed8, #3730a3);
}


</style>

<body>

	<h2>Search Employee By ID</h2>

	<form method="get" action="SearchEmployee">
		<label> Enter Employee ID:</label> <input type="number"
			name="employeeId" required>

		<button type="submit">Search Employee</button>
     </form>
     
		<%
		com.employee.model.Employee employee = (com.employee.model.Employee) request.getAttribute("employee");

		if (employee != null) {
		%>

		<h3 class="details-heading">
			<i class="fa-solid fa-user"></i> Employee Details
		</h3>

		<div class="employee-info">
			<p>
				Employee ID:
				<%=employee.getEmployeeId()%></p>
			<p>
				Name:
				<%=employee.getEmployeeName()%></p>
			<p>
				Email:
				<%=employee.getEmail()%></p>
			<p>
				Phone:
				<%=employee.getPhone()%></p>
			<p>
				Department:
				<%=employee.getDepartment()%></p>
			<p>
				Designation:
				<%=employee.getDesignation()%></p>
			<p>
				Salary:
				<%=employee.getSalary()%></p>
			<p>
				Joining Date:
				<%=employee.getJoiningDate()%></p>
		</div>
		<%
		}
		%>

	<div style="text-align: center; margin-top: 18px;">
		<a href="index.jsp"
			style="color: #1d4ed8; text-decoration: none; font-weight: bold;">
			← Back to Dashboard </a>
	</div>

	<%
	String errorMessage = (String) request.getAttribute("errorMessage");

	if (errorMessage != null) {
	%>
	<p class="error-message"><%=errorMessage%></p>
	<%
	}
	%>

</body>
</html>