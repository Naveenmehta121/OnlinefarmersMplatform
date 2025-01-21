function validateForm() {
    // Get form elements
    var name = document.getElementById("name").value;
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    // Regular expressions for validation
    var namePattern = /^[a-zA-Z\s]+$/; // Only letters and spaces
    var usernamePattern = /^[a-zA-Z0-9_]{3,15}$/; // Alphanumeric, 3-15 characters
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Basic email pattern
    var phonePattern = /^\d{10}$/; // 10-digit phone number

    // Validate name
    if (!namePattern.test(name)) {
        alert("Please enter a valid name (letters and spaces only).");
        return false;
    }

    // Validate username
    if (!usernamePattern.test(username)) {
        alert("Username must be 3-15 characters long and can contain letters, numbers, and underscores.");
        return false;
    }

    // Validate email
    if (!emailPattern.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // Validate phone number
    if (!phonePattern.test(phone)) {
        alert("Please enter a valid 10-digit phone number.");
        return false;
    }

    // Validate password
    if (password.length < 6) {
        alert("Password must be at least 6 characters long.");
        return false;
    }

    // Validate confirm password
    if (password !== confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }

    // If all validations pass
    return true;
}