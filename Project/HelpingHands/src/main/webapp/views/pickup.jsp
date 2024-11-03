<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pickup Location Form</title>
    <style>
        /* General body styling with a background image */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background-image: url('pickup-background.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Navigation Bar */
        nav {
            position: fixed;
            top: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #0040ff;
            padding: 15px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 1000;
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

        /* Centered form container */
        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            margin-top: 100px; /* To avoid overlap with nav */
        }

        .pickup-form h1 {
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
        <!-- User session logic (pseudo-code) -->
    </div>
</nav>

<div class="form-container">
    <form action="#" class="pickup-form">
        <h1>Pickup Location Form</h1>
        
        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required>

        <label for="phone">Phone Number</label>
        <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>

        <label for="pickup-address">Pickup Address</label>
        <textarea id="pickup-address" name="pickup-address" placeholder="Enter pickup address" required></textarea>

        <label for="items">Items you wish to donate</label>
        <textarea id="items" name="items" placeholder="Describe the items" required></textarea>

        <div class="terms">
            <input type="checkbox" id="terms" name="terms" required>
            <label for="terms">I agree to the <a href="#">terms and conditions</a></label>
        </div>

        <button type="submit">Submit Pickup Request</button>
    </form>
</div>

</body>
</html>
