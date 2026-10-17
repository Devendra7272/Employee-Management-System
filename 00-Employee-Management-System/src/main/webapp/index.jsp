<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Employee Management System</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
	
<style>

body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #dbeafe 0%, #e0e7ff 50%, #ede9fe 100%);
	color: #1e293b;
	min-height: 100vh;
	text-align: center;
	padding-top: 60px;
	box-sizing: border-box;
}

.dashboard {
    display: flex;
    justify-content: center;
    align-items: stretch;
    flex-wrap: wrap;
    gap: 26px;
    max-width: 1150px;
    margin: 35px auto 45px;
    padding: 0 20px;
}

.card {
    display: block;
    width: 250px;
    padding: 30px 22px;
    background: rgba(255, 255, 255, 0.95);
    border: 1px solid #dbeafe;
    border-radius: 20px;
    box-shadow: 0 8px 25px rgba(59, 130, 246, 0.10);
    text-decoration: none;
    color: #1e293b;
    box-sizing: border-box;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card h2 {
    color: #1e40af;
    font-size: 19px;
    font-weight: 700;
    margin: 0 0 14px;
    line-height: 1.4;
}

.card h2 i {
	margin-right: 8px;
	font-size: 21px;
	transition: color 0.3s, transform 0.3s;
}

.card:hover h2 i {
	color: #7c3aed;
	transform: scale(1.15);
}

.card p {
    color: #64748b;
    font-size: 14px;
    line-height: 1.7;
    margin: 0;
}

.card:hover {
    transform: translateY(-8px);
    box-shadow: 0 16px 35px rgba(59, 130, 246, 0.22);
    border-color: #93c5fd;
}


h1 {
    color: #1e40af;
    font-size: 36px;
    font-weight: 800;
    margin: 0 15px 12px;
    letter-spacing: -0.5px;
}

p {
    color: #475569;
    font-size: 16px;
    line-height: 1.6;
    margin-top: 0;
}

.footer {
    margin-top: 45px;
    padding: 20px 15px;
    background: rgba(255, 255, 255, 0.55);
    border-top: 1px solid rgba(147, 197, 253, 0.5);
    color: #64748b;
    font-size: 13px;
}

.footer p {
	margin: 5px;
	font-size: 13px;
}

@media ( max-width : 768px) {
	body {
		padding-top: 30px;
	}
	h1 {
		font-size: 26px;
		padding: 0 15px;
	}
	.dashboard {
		gap: 16px;
		margin-top: 25px;
		padding: 0 15px;
	}
	.card {
		width: 100%;
		max-width: 350px;
	}
}
</style>
</head>

<body>

	<h1>Employee Management System</h1>
	<p>Manage your employees easily and efficiently.</p>

	<div class="dashboard">

		<a href="add-Employee.jsp" class="card">
			<h2>
				<i class="fa-solid fa-user-plus"></i> Add Employee
			</h2>
			<p>Add a new employee record.</p>
		</a> <a href="ViewAllEmployees" class="card">
			<h2>
				<i class="fa-solid fa-users"></i> View Employees
			</h2>
			<p>View all employee records.</p>
		</a> <a href="SearchEmployee.jsp" class="card">
			<h2>
				<i class="fa-solid fa-magnifying-glass"></i> Search Employee
			</h2>
			<p>Find an employee by ID.</p>
		</a> <a href="UpdateEmployee.jsp" class="card">
			<h2>
				<i class="fa-solid fa-user-pen"></i> Update Employee
			</h2>
			<p>Edit employee information.</p>
		</a> <a href="DeleteEmployee.jsp" class="card">
			<h2>
				<i class="fa-solid fa-user-minus"></i> Delete Employee
			</h2>
			<p>Delete an employee record.</p>
		</a>
	</div>
	
	<footer class="footer">
		<p>&copy; 2026 Employee Management System</p>
		<p>Designed for easy employee management</p>
	</footer>
	
</body>
</html>
