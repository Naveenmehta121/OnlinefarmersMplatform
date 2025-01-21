<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    // Assuming user information is stored in session
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if not logged in
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - Krishipath</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .welcome-container {
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.jsp">Krishipath</a>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="user-list.jsp">User  List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="edit.jsp">Edit Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<div class="welcome-container">
    <h2>Welcome to Krishipath, <%= username %>!</h2>
    <p>We are glad to have you on our platform. Krishipath is dedicated to providing farmers with the resources and support they need to succeed.</p>
    <h4>What We Offer:</h4>
    <ul class="list-unstyled">
        <li>Expert Crop Advisory</li>
        <li>Real-time Market Prices</li>
        <li>Weather Updates</li>
        <li>Access to Educational Resources</li>
    </ul>
    <p>Explore the features and make the most of your farming experience!</p>
</div>

<footer class="text-center py-4">
    <p>&copy; 2023 Krishipath. All rights reserved.</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>