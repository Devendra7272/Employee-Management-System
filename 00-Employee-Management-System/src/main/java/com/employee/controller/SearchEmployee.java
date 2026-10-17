package com.employee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

@WebServlet("/SearchEmployee")
public class SearchEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int employeeId = Integer.parseInt(request.getParameter("employeeId"));  //ParseInt --> converts ID from text into An Integer
		
		EmployeeDAO dao = new EmployeeDAO();                 //Creating object of Employ
		Employee employee = dao.getEmployeeById(employeeId);  //dao--> search DB using ID. --Employee stored variable.
		
		request.setAttribute("employee", employee);      //this to employ details available in jsp page 
		
		if(employee != null)                                      // checks found or not.
		{
			request.getRequestDispatcher("/SearchEmployee.jsp") // if found redirect to jsp 
			.forward(request, response);
		}
		else
		{
			    request.setAttribute("errorMessage", "Employee not found!");
			    request.getRequestDispatcher("/SearchEmployee.jsp")
			           .forward(request, response);
		} 
	}	
}
