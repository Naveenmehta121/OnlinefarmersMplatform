<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    // Database connection variables
    String dbURL = "jdbc:mysql://localhost:3306/krishipath";
    String dbUser = "root";
    String dbPassword = "password";

    List<Map<String, String>> users = new ArrayList<>();

    // Fetch user details from the database
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT username, email, phone FROM users");

        while (rs.next()) {
            Map<String, String> user = new HashMap<>();
            user.put("username", rs.getString("username"));
            user.put("email", rs.getString("email"));
            user.put("phone", rs.getString("phone"));
            users.add(user);
        }

        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    // Set users as a request attribute
    request.setAttribute("userList", users);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List - Krishipath</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .table-container {
            margin: 50px auto;
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
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<div class="table-container">
    <h2 class="text-center">User List</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Phone Number</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td><c:out value="${user.username}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.phone}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<footer class="text-center py-4">
    <p>&copy; 2023 Krishipath. All rights reserved.</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
