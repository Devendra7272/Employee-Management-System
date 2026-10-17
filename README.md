# Employee Management System

A web-based **Employee Management System** developed using Java Servlets, JSP, JDBC, and PostgreSQL. The application helps manage employee records through a simple and user-friendly interface.

## 📌 Project Overview

The Employee Management System provides basic employee record management features, including adding, viewing, searching, updating, and deleting employee information. It follows a Java web application structure with separate components for controllers, data access, models, and database connectivity.

## ✨ Features

- **Add Employee** — Add new employee details to the database.
- **View Employees** — Display all employee records.
- **Search Employee** — Find an employee using their ID.
- **Update Employee** — Modify existing employee information.
- **Delete Employee** — Remove employee records with confirmation.
- **Database Integration** — Store and retrieve employee data using PostgreSQL.
- **User-Friendly Interface** — JSP pages with CSS styling and navigation.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java | Application logic |
| Java Servlets | Handle HTTP requests |
| JSP (JavaServer Pages) | Build dynamic web pages |
| JDBC | Connect Java to the database |
| PostgreSQL | Store employee records |
| HTML & CSS | Page structure and styling |
| Apache Tomcat | Run the web application |
| Eclipse IDE | Development environment |
| Git & GitHub | Version control and project hosting |

## 🗂️ Project Structure

```text
Employee-Management-System/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── employee/
│       │           ├── controller/
│       │           ├── dao/
│       │           ├── model/
│       │           └── util/
│       └── webapp/
│           ├── index.jsp
│           ├── add-Employee.jsp
│           ├── view-Employees.jsp
│           ├── SearchEmployee.jsp
│           ├── UpdateEmployee.jsp
│           └── DeleteEmployee.jsp
├── .gitignore
└── README.md
```

*Note: The structure above shows the main application folders and pages; your actual project may contain additional configuration files.*

## 🗄️ Database Details

**Database:** `employee_management`

**Table:** `employees`

The employee table stores the following information:

- `employee_id`
- `employee_name`
- `email`
- `phone`
- `department`
- `designation`
- `salary`
- `joining_date`

## ⚙️ How to Run the Project

### Prerequisites

- Java JDK
- Eclipse IDE
- Apache Tomcat configured in Eclipse
- PostgreSQL and a database client such as pgAdmin or SQL Shell
- PostgreSQL JDBC driver

### Setup Instructions

1. Clone or download this repository.
2. Import the project into Eclipse.
3. Configure Apache Tomcat in Eclipse.
4. Create the PostgreSQL database named `employee_management`.
5. Create the `employees` table with the required columns.
6. Update the database connection settings in `DBConnection.java` with your PostgreSQL username, password, and database URL.
7. Add the PostgreSQL JDBC driver to the project if it is not already configured.
8. Run the project on Apache Tomcat.
9. Open the application in your browser using the local URL provided by Tomcat.

## 🔄 Application Workflow

1. The user selects an operation from the dashboard.
2. JSP pages collect or display employee information.
3. Java Servlets process the incoming requests.
4. The DAO layer performs database operations using JDBC.
5. PostgreSQL stores and returns employee records.
6. The application displays the result to the user.

## 🎯 Learning Outcomes

Through this project, I practised:

- Developing Java web applications using Servlets and JSP.
- Connecting Java applications to PostgreSQL using JDBC.
- Implementing CRUD operations.
- Organizing code into controller, DAO, model, and utility packages.
- Handling HTTP requests and displaying database records.
- Using Git and GitHub to manage and publish project source code.

## 👨‍💻 Author

**Devendra Salunke**

GitHub: [@Devendra7272](https://github.com/Devendra7272)

---

*This project was developed for learning and practical application of Java web development and database connectivity.*
