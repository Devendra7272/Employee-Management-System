package com.employee.model;

import java.sql.Date;

public class Employee
{
    private int employeeId;
    private String employeeName;
    private String email;
    private String phone;
    private String department;
    private String designation;
    private double salary;
    private Date joiningDate;

    
    //Default Constructor
    public Employee()
    {
    }

    // Parameterized Constructor
    public Employee(int employeeId, String employeeName, String email,
            String phone, String department, String designation,
            double salary, Date joiningDate) 
    {
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.email = email;
        this.phone = phone;
        this.department = department;
        this.designation = designation;
        this.salary = salary;
        this.joiningDate = joiningDate;
    }

    // Getter & Setter
    //GETTER
    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    //SETTER
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public Date getJoiningDate() {
        return joiningDate;
    }

    public void setJoiningDate(Date joiningDate) {
        this.joiningDate = joiningDate;
    }

    //toString Method For Display
    @Override
    public String toString() {
        return "Employee [employeeId=" + employeeId
                + ", employeeName=" + employeeName
                + ", email=" + email
                + ", phone=" + phone
                + ", department=" + department
                + ", designation=" + designation
                + ", salary=" + salary
                + ", joiningDate=" + joiningDate + "]";
    }
}
