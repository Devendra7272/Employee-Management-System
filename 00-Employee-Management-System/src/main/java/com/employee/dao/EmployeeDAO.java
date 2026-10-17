package com.employee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.employee.model.Employee;
import com.employee.util.DBConnection;

public class EmployeeDAO {
// Add Employee
	public boolean addEmployee(Employee employee) // boolean means if gives true-Employee Added or false -Not Added
	{
		String sql = "INSERT INTO employees "
				+ "(employee_name, email, phone ,department , designation ,salary ,joining_date)"
				+ "values(?,?,?,?,?,?,?)";

		try (Connection con = DBConnection.getConnection();
				PreparedStatement ps = con.prepareStatement(sql)) 
		{
			ps.setString(1, employee.getEmployeeName());
			ps.setString(2, employee.getEmail());
			ps.setString(3, employee.getPhone());
			ps.setString(4, employee.getDepartment());
			ps.setString(5, employee.getDesignation());
			ps.setDouble(6, employee.getSalary());
			ps.setDate(7, employee.getJoiningDate());

			return ps.executeUpdate() > 0;
		}
		catch (Exception e) {
			System.out.println("Error Adding employee :" + e.getMessage());
		}
		
		   return false; // if Exceptions occurs it return false.
        
    }

//View All Employees
	public List<Employee> getAllEmployees() 
	{
       List<Employee> employees = new ArrayList<>();     //list will Store Employ Objects & new Arraylist is create an empty list
	
	   String sql = "Select * from Employees ORDER BY employee_id";
	
	   try(Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement(sql); 
			   ResultSet rs = ps.executeQuery())
	   {
		   while(rs.next())
		   {
			   Employee employee = new Employee();
			   
			   employee.setEmployeeId(rs.getInt("employee_id"));
			   employee.setEmployeeName(rs.getString("employee_name"));
		       employee.setEmail(rs.getString("email"));
		       employee.setPhone(rs.getString("phone"));
		       employee.setDepartment(rs.getString("department"));
		       employee.setDesignation(rs.getString("designation"));
		       employee.setSalary(rs.getDouble("salary"));
		       employee.setJoiningDate(rs.getDate("joining_date"));
		       
		       employees.add(employee);
		   }   
	   }
	   catch (Exception e)
	   {
	       e.printStackTrace();
	   }

	   return employees;   //sends the complete employee list back to whoever called getAllEmployees().
	}

// Search Employee

	public Employee getEmployeeById(int employeeId)
	{
	    String sql = "SELECT * FROM employees WHERE employee_id = ?";

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement ps = con.prepareStatement(sql))
	    {
	        ps.setInt(1, employeeId);

	        try (ResultSet rs = ps.executeQuery())
	        {
	            if (rs.next())
	            {
	                Employee employee = new Employee();

	                employee.setEmployeeId(rs.getInt("employee_id"));
	                employee.setEmployeeName(rs.getString("employee_name"));
	                employee.setEmail(rs.getString("email"));
	                employee.setPhone(rs.getString("phone"));
	                employee.setDepartment(rs.getString("department"));
	                employee.setDesignation(rs.getString("designation"));
	                employee.setSalary(rs.getDouble("salary"));
	                employee.setJoiningDate(rs.getDate("joining_date"));

	                return employee;
	            }
	        }

	    }
	    catch (Exception e)
	    {
	        e.printStackTrace();
	    }

	    return null;
	}

// Update Employee
public boolean updateEmployee(Employee employee)
{
    String sql = "UPDATE employees SET "
            + "employee_name = ?, "
            + "email = ?, "
            + "phone = ?, "
            + "department = ?, "
            + "designation = ?, "
            + "salary = ?, "
            + "joining_date = ? "
            + "WHERE employee_id = ?";

    try (Connection con = DBConnection.getConnection();
         PreparedStatement ps = con.prepareStatement(sql)) {

        ps.setString(1, employee.getEmployeeName());
        ps.setString(2, employee.getEmail());
        ps.setString(3, employee.getPhone());
        ps.setString(4, employee.getDepartment());
        ps.setString(5, employee.getDesignation());
        ps.setDouble(6, employee.getSalary());
        ps.setDate(7, employee.getJoiningDate());

        ps.setInt(8, employee.getEmployeeId());

        return ps.executeUpdate() > 0;

    } catch (Exception e) {
        e.printStackTrace();
    }

    return false;
}

// Delete Employee
public boolean deleteEmployee(int employeeId) 
{
    String sql = "DELETE FROM employees WHERE employee_id = ?";

    try (Connection con = DBConnection.getConnection();
         PreparedStatement ps = con.prepareStatement(sql)) 
    {
        ps.setInt(1, employeeId);

        return ps.executeUpdate() > 0;

    } 
    catch (Exception e) {
        e.printStackTrace();
    }

    return false;
  }
}