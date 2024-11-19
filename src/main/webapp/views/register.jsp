<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>Employee Registration</title>
    <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Ensure the page takes up at least full viewport height */
        body, html {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            margin: 0;
        }

        /* Main content area */
        .content {
            flex: 1;
        }

        /* Two-column layout for form fields */
        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .form-row .col {
            flex: 1;
            min-width: 200px;
        }
        .form-row .col-12 {
            flex: 0 0 100%;
        }

        /* Footer styling */
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px 0;
        }

        /* Position the Login button in the top-right corner */
        .login-btn {
            position: absolute;
            top: 20px;
            right: 20px;
        }
    </style>
</head>
<body class="bg-light">

    <!-- Header -->
    <header class="bg-primary text-white text-center py-3">
        <h1>Employee Management System</h1>
        <p>Register as a new employee</p>
    </header>

    <!-- Login Button (Top Right Corner) -->
    <a href="/login" class="btn btn-secondary login-btn">Login</a>

    <!-- Registration Form -->
    <div class="container mt-5 content">
        <h2 class="text-center">Employee Registration</h2>
        <form action="/register" method="post" class="border p-4 bg-white shadow rounded">
            <div class="form-row">
                <div class="col">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <label for="dob" class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" id="dob" name="dob" required>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col">
                    <div class="mb-3">
                        <label for="gender" class="form-label">Gender</label>
                        <select class="form-select" id="gender" name="gender" required>
                            <option value="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" name="address" required>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col">
                    <div class="mb-3">
                        <label for="city" class="form-label">City</label>
                        <input type="text" class="form-control" id="city" name="city" required>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <label for="state" class="form-label">State</label>
                        <input type="text" class="form-control" id="state" name="state" required>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col">
                    <div class="mb-3">
                        <label for="loginId" class="form-label">Login ID</label>
                        <input type="text" class="form-control" id="loginId" name="loginId" required>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary w-100">Register</button>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Employee Management System. All rights reserved.</p>
    </footer>

</body>
</html>
