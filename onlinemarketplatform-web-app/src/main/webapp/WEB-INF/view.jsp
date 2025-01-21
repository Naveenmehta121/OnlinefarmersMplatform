<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    // Database connection variables
    String dbURL = "jdbc:mysql://localhost:3306/krishipath";
    String dbUser   = "root";
    String dbPassword = "password";

    String username = request.getParameter("username");
    Map<String, String> user = new HashMap<>();

    // Fetch user details from the database
    if (username != null && !username.isEmpty()) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, dbUser , dbPassword);
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE username = ?");
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user.put("username", rs.getString("username"));
                user.put("email", rs.getString("email"));
                user.put("phone", rs.getString("phone"));
                // Add more fields as necessary
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    } else {
        response.sendRedirect("user-list.jsp"); // Redirect if no username is provided
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View User - Krishipath</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .user-details-container {
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
                <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<div class="user-details-container">
    <h2 class="text-center">User  Details</h2>
    <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" id="username" value="<%= user.get("username") %>" readonly>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" value="<%= user.get("email") %>" readonly>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="text" class="form-control" id="phone" value="<%= user.get("phone") %>" readonly>
    </div>
    <!-- Add more fields as necessary -->
    <div class="text-center">
        <a href="user-list.jsp" class="btn btn-secondary">Back to User List</a>
    </div>
</div>

<footer class="text-center py-4">
    <p>&copy; 2023 Krishipath. All rights reserved.</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https ://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>