<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get in Touch - Join hands to help</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .header-image {
            width: 100%;
            height: 490px;
            background-image: url('https://www.shutterstock.com/image-vector/illustration-volunteers-getting-together-collect-260nw-2497243649.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            position: relative;
        }
        .caption {
            text-align: center;
            font-size: 2em;
            color: #FF0080;
            font-weight: bold;
            padding: 20px;
            margin: 0;
            position: absolute;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            width: 80%;
        }
        .contact-container {
            width: 80%;
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .contact-container h1 {
            color: #32CD32;
            margin-bottom: 20px;
        }
        .contact-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 15px;
            border: 2px solid #00FF80;
            border-radius: 5px;
            font-size: 1em;
            color: #333;
        }
        .contact-form input:focus,
        .contact-form textarea:focus {
            border-color: #FF0080;
            outline: none;
        }
        .contact-form button {
            background-color: #FF0080;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #e6007e;
        }
        .contact-info {
            margin: 40px 0;
            text-align: center;
        }
        .contact-info h3 {
            color: #32CD32;
            margin-bottom: 10px;
        }
        .contact-info p {
            margin: 5px 0;
        }
        .footer-bar {
            display: flex;
            justify-content: space-between;
            background-color: #2E8B57;
            color: white;
            padding: 20px;
        }
        .footer-bar div {
            flex: 1;
            text-align: center;
        }
        .footer-bar button {
            background-color: #FF0080;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 1em;
        }
        .footer-bar button:hover {
            background-color: #e6007e;
        }
    </style>
</head>
<body>
    <div class="header-image">
        <div class="caption">"The most powerful connections are made through the act of giving."</div>
    </div>
    <div class="contact-container">
        <h1>Get in Touch</h1>
        <form class="contact-form"   onsubmit="return validateForm()">
            <input type="text" name="name" placeholder="Your Name" required maxlength="100">
            <input type="email" name="email" placeholder="Your Email" required>
            <input type="tel" name="phone" placeholder="Your Phone Number" pattern="[0-9]{10}">
            <textarea name="message" rows="6" placeholder="Your Message" required maxlength="500"></textarea>
            <button type="submit">Send Message</button>
        </form>
        <div class="contact-info">
            <h3>Contact Details</h3>
            <p><strong>Address:</strong> 123 Helping Hands Lane, Heritage City, India</p>
            <p><strong>Email:</strong> contact@helpinghands.com</p>
            <p><strong>Phone:</strong> +91 123 456 7890</p>
        </div>
    </div>
    <div class="footer-bar">
        <div>
            <h3>Address</h3>
            <p>123 Helping Hands Lane, Heritage City, India</p>
        </div>
        <div>
            <h3>Email</h3>
            <p>contact@helpinghands.com</p>
        </div>
        <div>
            <h3>Contact Us</h3>
            <button>Get in Touch</button>
        </div>
    </div>

    <script>
        function validateForm() {
            var name = document.forms["contact-form"]["name"].value;
            var email = document.forms["contact-form"]["email"].value;
            var phone = document.forms["contact-form"]["phone"].value;
            var message = document.forms["contact-form"]["message"].value;
            
            if (name === "" || email === "" || message === "") {
                alert("Name, Email, and Message are required.");
                return false;
            }

            var phonePattern = /^[0-9]{10}$/;
            if (phone && !phonePattern.test(phone)) {
                alert("Phone number must be 10 digits.");
                return false;
            }

            alert("Submitted successfully!"); // Success message
            return false; // Prevent form submission
        }
    </script>
</body>
</html>