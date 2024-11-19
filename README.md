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

## API Endpoints

The following endpoints are available in the application. Each endpoint is associated with a specific functionality of the Employee Management System.

| **Endpoint**       | **HTTP Method** | **Description**                                                                                   |
|--------------------|-----------------|---------------------------------------------------------------------------------------------------|
| `/login`           | GET, POST       | Displays the login page (GET). Authenticates the user and redirects to the welcome page on success (POST). |
| `/register`        | GET, POST       | Displays the registration form (GET). Handles employee registration and redirects to the login page on success (POST). |
| `/welcome`         | GET             | Displays the welcome page with the logged-in employee's name. Access is restricted to authenticated users. |

### Detailed Explanation

1. **`/login`**
   - **GET Request**:
     - When this URL is accessed (e.g., `http://localhost:8080/login`), it renders the **Login Page**.
     - The page contains fields for `loginId` and `password` and a button to log in.
   - **POST Request**:
     - Submitting the login form sends the credentials to the backend.
     - If the `loginId` and `password` are valid:
       - The employee's name is passed to the session or model.
       - The user is redirected to `/welcome`.
     - If invalid:
       - The user remains on the login page with an error message.

2. **`/register`**
   - **GET Request**:
     - Accessing this URL (e.g., `http://localhost:8080/register`) displays the **Employee Registration Page**.
     - The form includes fields such as `Name`, `Date of Birth`, `Gender`, `Address`, `City`, `State`, `Login ID`, and `Password`.
   - **POST Request**:
     - Submitting the form sends the data to the backend.
     - A new employee is created in the database if the data is valid.
     - Upon successful registration:
       - The user is redirected to `/login` to log in with the newly created credentials.

3. **`/welcome`**
   - **GET Request**:
     - When accessed (e.g., `http://localhost:8080/welcome`), this page welcomes the logged-in user.
     - It fetches the employee's name (e.g., "Welcome, Rohan!") from the session or model.
     - This page also includes a **Logout Button**, which redirects to `/login` when clicked.
     - Unauthorized users (not logged in) cannot access this page.

### Usage Example

1. **Login Process**:
   - Navigate to `/login` and enter credentials.
   - Upon successful login, you are redirected to `/welcome`.

2. **Registration Process**:
   - Navigate to `/register` to create a new employee account.
   - After registration, you are redirected to `/login`.

3. **Welcome Page**:
   - After logging in, you are redirected to `/welcome`.
   - The page displays the logged-in employee's name and provides a logout option.

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
