# Employee Management System

A web-based Employee Management System designed to handle employee registrations and logins securely. Built using modern technologies, it provides a user-friendly interface and seamless functionality.

---

## Features

- **Employee Registration**: Users can register by entering required details like name, date of birth, and address.
- **Login System**: Secure authentication for employees with proper redirection to the welcome page.
- **Dynamic Pages**: User-specific welcome messages displayed dynamically using JSP.
- **Logout Functionality**: Secure logout option that redirects users to the login page.
- **Bootstrap-based UI**: Responsive and polished design with a fixed footer and top-aligned buttons.

---

## Technologies Used

- **Backend**: Spring Boot, Hibernate, JDBC
- **Frontend**: JSP, Bootstrap
- **Database**: MySQL
- **Tools**: Maven, IntelliJ IDEA/VS Code

---

## Directory Structure

![image](https://github.com/user-attachments/assets/fb36d3e5-f033-4891-8336-665b05839b68)

---


## Getting Started

### Prerequisites

- Java 17 or later
- MySQL 8.x
- Maven 3.x

### Installation

1. Clone the repository.
   ```bash
   git clone https://github.com/your-username/employee-management-system.git
   cd employee-management-system
2. Set up the database:
    - Create a database named employee_management.
    - Update the application.properties file with your database credentials.
3. Build and run the application:
    ```bash
    mvn clean install
    mvn spring-boot:run
4. Open the application in your browser:
     ```bash
     http://localhost:8080

---

### API Endpoints

| Endpoint           | HTTP Method | Description               |
|--------------------|-------------|---------------------------|
| `/login`           | GET, POST   | Employee login page       |
| `/register`        | GET, POST   | Employee registration page|
| `/welcome`         | GET         | Welcome page for employees|


---

### Screenshots
1. Login Page
   
2. Registration Page
   
3. Welcome Page



---

### Future Improvements
  - Add admin panel for managing employees.
  - Include file uploads for employee profiles.
  - Extend the application with REST APIs.




---

### Contributions   
   Contributions are welcome! Please open an issue or submit a pull request.

---

### License
   This project is licensed under the MIT License - see the LICENSE file for details.

---

### Author
   Pranav Sanjay Manapure
   - **Email:** manapurepranav03@gmail.com
   - **LinkedIn:** www.linkedin.com/in/pranav-manapure
