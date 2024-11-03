<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Volunteer Registration</title>
    <style>
    /* General body styling with a background image */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh;
        background-image: url('emergency-background.jpg');
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    /* Fixing navbar at the top */
    nav {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #0040ff; /* Updated color */
        padding: 15px 20px;
        z-index: 10;
    }
    
    nav .logo {
        font-size: 1.8em;
        color: white;
        font-weight: bold;
    }

    nav a {
        color: white;
        text-decoration: none;
        margin: 0 15px;
        font-size: 1.2em;
        transition: color 0.3s ease;
    }

    nav a:hover {
        color: #d9d9d9; /* Light gray on hover */
    }

    .profile {
        display: flex;
        align-items: center;
        color: white;
        margin-left: 20px;
    }

    .profile i {
        margin-right: 5px;
    }

    /* Form Container styling */
    .form-container {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px;
        margin-top: 80px; /* Adding margin to push form below navbar */
    }

    .volunteer-form h1 {
        text-align: center;
        color: #00539CFF;
        margin-bottom: 20px;
    }

    label {
        font-size: 1rem;
        margin-bottom: 5px;
        display: block;
        color: #333;
    }

    input[type="text"],
    input[type="tel"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1rem;
        background-color: #f9f9f9;
    }

    textarea {
        height: 80px;
        resize: none;
    }

    .terms {
        display: flex;
        align-items: center;
        margin-bottom: 20px;
    }

    .terms input[type="checkbox"] {
        margin-right: 10px;
    }

    .terms label {
        font-size: 0.9rem;
    }

    button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #00539CFF;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 1.1rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
        background-color: #028090;
    }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav>
        <div class="logo">Helping Hands</div>
        <div>
            <a href="tips">Tips</a>
            <a href="donate">Donate</a>
            <a href="volunteer">Volunteer</a>
            <a href="aboutus">About Us</a>
            <a href="contactus">Contact Us</a>
            <a href="<%= request.getContextPath() %>/logout">Logout</a>
        </div>
        <div class="profile">
            <i class="fas fa-user-circle fa-lg"></i>
             <%
            // Retrieve user from session
            com.project.jfsd.model.User user = (com.project.jfsd.model.User) session.getAttribute("user");
            String message = (String) session.getAttribute("message");

            if (message != null) {
            %>
            <div class="message"><%= message %></div>
            <%
            // Clear message after displaying
            session.removeAttribute("message");
            }

            if (user != null) {
            %>
            <span id="username"><%= user.getName() %></span>
            <%
            } else {
            %>
            <p>User not found in session. Please log in again.</p>
            <%
            }
            %>
        </div>
    </nav>

    <!-- Volunteer Form Container -->
    <div class="form-container">
        <form action="#" class="volunteer-form">
            <h1>Volunteer Registration</h1>
            
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>

            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>

            <label for="address">Address</label>
            <textarea id="address" name="address" placeholder="Enter your address" required></textarea>

            <div class="terms">
                <input type="checkbox" id="terms" name="terms" required>
                <label for="terms">I agree to the <a href="#">terms and conditions</a></label>
            </div>

            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
