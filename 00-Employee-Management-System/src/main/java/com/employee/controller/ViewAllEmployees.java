package com.employee.controller;

import java.util.List;
import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ViewAllEmployees")
public class ViewAllEmployees extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		EmployeeDAO dao = new EmployeeDAO();
		List<Employee> employees = dao.getAllEmployees();
		
		request.setAttribute("employees", employees);
		request.getRequestDispatcher("view-Employees.jsp")
		.forward(request, response);
	
	}
}
