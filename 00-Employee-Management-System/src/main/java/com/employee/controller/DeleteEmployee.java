package com.employee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.employee.dao.EmployeeDAO;

@WebServlet("/DeleteEmployee")
public class DeleteEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		int employeeId = Integer.parseInt(request.getParameter("employeeId"));

		EmployeeDAO dao = new EmployeeDAO();
		boolean deleted = dao.deleteEmployee(employeeId);
		
		if (deleted) 
		{
		    response.sendRedirect("DeleteEmployee.jsp?status=success");
		} 
		else {
		    response.sendRedirect("DeleteEmployee.jsp?status=failed");
		}		
	}
}
