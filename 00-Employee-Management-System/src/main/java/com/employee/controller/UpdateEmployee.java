package com.employee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int employeeId = Integer.parseInt(request.getParameter("employeeId"));

		EmployeeDAO dao = new EmployeeDAO();
		Employee employee = dao.getEmployeeById(employeeId);

		if (employee != null) {
			request.setAttribute("employee", employee); // send data from servlet to jsp & stores data also.
			request.getRequestDispatcher("UpdateEmployee.jsp").forward(request, response);

		} else {
			request.setAttribute("errorMessage", "Employee Not Found!");
			request.getRequestDispatcher("UpdateEmployee.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{

		int employeeId = Integer.parseInt(request.getParameter("employeeId"));

		String employeeName = request.getParameter("employeeName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String department = request.getParameter("department");
		String designation = request.getParameter("designation");
		double salary = Double.parseDouble(request.getParameter("salary"));
		java.sql.Date joiningDate = java.sql.Date.valueOf(request.getParameter("joiningDate"));
		
		Employee employee = new Employee();

		employee.setEmployeeId(employeeId);
		employee.setEmployeeName(employeeName);
		employee.setEmail(email);
		employee.setPhone(phone);
		employee.setDepartment(department);
		employee.setDesignation(designation);
		employee.setSalary(salary);
		employee.setJoiningDate(joiningDate);
		
		EmployeeDAO dao = new EmployeeDAO();
		boolean updated = dao.updateEmployee(employee);
		
		if (updated) {
		    response.sendRedirect("UpdateEmployee.jsp?status=success");
		} else {
		    response.sendRedirect("UpdateEmployee.jsp?status=failed");
		}
	}
}
