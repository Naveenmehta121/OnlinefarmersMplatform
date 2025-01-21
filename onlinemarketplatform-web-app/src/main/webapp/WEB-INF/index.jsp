<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krishipath - Online Farmers Platform</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .hero {
            background-image: url('images/farm-background.jpg');
            background-size: cover;
            color: white;
            padding: 100px 0;
            text-align: center;
        }
        .service {
            margin: 20px 0;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Krishipath</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#services">Services</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#resources">Resources</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#contact">Contact Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
            </li>
        </ul>
    </div>
</nav>

<div class="hero">
    <h1>Welcome to Krishipath</h1>
    <p>Your online platform for all farming needs</p>
    <a href="register.jsp" class="btn btn-primary btn-lg">Get Started</a>
</div>

<div class="container">
    <div id="services" class="service">
        <h2>Our Services</h2>
        <div class="row">
            <div class="col-md-4">
                <h4>Crop Advisory</h4>
                <p>Get expert advice on crop selection and management.</p>
            </div>
            <div class="col-md-4">
                <h4>Market Prices</h4>
                <p>Stay updated with the latest market prices for your produce.</p>
            </div>
            <div class="col-md-4">
                <h4>Weather Updates</h4>
                <p>Receive real-time weather updates to plan your farming activities.</p>
            </div>
        </div>
    </div>

    <div id="resources" class="service">
        <h2>Resources</h2>
        <p>Access a wealth of information including articles, videos, and tutorials on modern farming techniques.</p>
    </div>

    <div id="contact" class="service">
        <h2>Contact Us</h2>
        <p>If you have any questions, feel free to reach out to us at <a href="mailto:support@krishipath.com">support@krishipath.com</a>.</p>
    </div>
</div>

<footer class="text-center py-4">
    <p>&copy; 2023 Krishipath. All rights reserved.</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>