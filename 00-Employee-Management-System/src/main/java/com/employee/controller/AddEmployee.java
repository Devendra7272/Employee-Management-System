package com.employee.controller;

import java.io.IOException;
import java.sql.Date;
import com.employee.dao.EmployeeDAO;
import com.employee.model.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// Get form data
	    String employeeName = request.getParameter("employeeName");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String department = request.getParameter("department");
	    String designation = request.getParameter("designation");
	    double salary = Double.parseDouble(request.getParameter("salary"));
	    Date joiningDate = Date.valueOf(request.getParameter("joiningDate"));
		

	    // Creating Employee object
	    
	    Employee employee = new Employee();

	    employee.setEmployeeName(employeeName);
	    employee.setEmail(email);
	    employee.setPhone(phone);
	    employee.setDepartment(department);
	    employee.setDesignation(designation);
	    employee.setSalary(salary);
	    employee.setJoiningDate(joiningDate);


	    // Save employee
	    EmployeeDAO employeeDAO = new EmployeeDAO();
	    boolean isEmployeeAdded = employeeDAO.addEmployee(employee);

	    String contextPath = request.getContextPath();

        if (isEmployeeAdded) 
        {
            response.sendRedirect(contextPath + "/add-Employee.jsp?success=true");
        } 
        else {
             response.sendRedirect(contextPath + "/add-Employee.jsp?error=true");
        }
    }
}
