<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Welcome</title>
    <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .logout-btn {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        body, html {
            height: 100%;
            margin: 0;
        }

        .content {
            min-height: 90vh;
        }

        footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            background-color: #343a40;
            color: white;
        }
    </style>
</head>
<body class="bg-light">

    <!-- Header -->
    <header class="bg-primary text-white text-center py-3">
        <h1>Employee Management System</h1>
    </header>

    <!-- Logout Button -->
    <form action="/logout" method="post" class="logout-btn">
        <button type="submit" class="btn btn-danger">Logout</button>
    </form>

    <!-- Welcome Message -->
    <div class="container mt-5 content">
        <h2 class="text-center">Welcome, ${employeeName}!</h2>
        <p class="text-center">We're glad to have you here.</p>
    </div>

    <!-- Footer -->
    <footer class="text-white text-center py-3">
        <p>&copy; 2024 Employee Management System. All rights reserved.</p>
    </footer>

</body>
</html>
