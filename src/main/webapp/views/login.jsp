<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>Employee Login</title>
    <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Position the Register button in the top-right corner */
        .register-btn {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        /* Make sure the form container directly follows the header */
        .content {
            margin-top: 0; /* Remove any default top margin */
            padding-top: 20px; /* Add a little padding for spacing */
        }

        /* Prevent scrolling */
        body, html {
            height: 100%;
            overflow: hidden;
        }

        /* Footer at the bottom */
        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body class="bg-light">

    <!-- Header -->
    <header class="bg-primary text-white text-center py-3">
        <h1>Employee Management System</h1>
        <p>Login to access your account</p>
    </header>

    <!-- Register Button (Top Right Corner) -->
    <a href="/register" class="btn btn-secondary register-btn">Register</a>

    <!-- Login Form Positioned Right After Header -->
    <div class="container content">
        <h2 class="text-center">Login</h2>
        <form action="/login" method="post" class="border p-4 bg-white shadow rounded">
            <div class="mb-3">
                <label for="loginId" class="form-label">Login ID</label>
                <input type="text" class="form-control" id="loginId" name="loginId" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Employee Management System. All rights reserved.</p>
    </footer>

</body>
</html>
