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

```plaintext
src/
├── main/
│   ├── java/
│   │   └── com/
│   │       └── example/
│   │           └── employeemanagement/
│   │               ├── controllers/
│   │               ├── models/
│   │               ├── services/
│   │               └── repositories/
│   ├── resources/
│   │   ├── templates/
│   │   │   ├── login.jsp
│   │   │   ├── register.jsp
│   │   │   └── welcome.jsp
│   │   └── application.properties
│   └── webapp/
│       └── WEB-INF/
│           └── jsp/
└── test/
