<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f9f9f9;
           background-image: url('https://img.freepik.com/free-vector/watercolor-background-with-golden-foil_52683-46208.jpg'); /* Add your image path */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image from repeating */
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    h2 {
        color: #333;
        font-size: 2em;
        margin-bottom: 20px;
    }

    form {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
    }

    label {
        display: block;
        font-size: 1.1em;
        color: #333;
        margin-bottom: 10px;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 1em;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #4caf50;
        color: white;
        font-size: 1.2em;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    p {
        color: red;
        font-size: 1.1em;
        margin-bottom: 20px;
    }

    a {
        margin-top: 20px;
        font-size: 1.1em;
        color: #4caf50;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    /* Responsive design for smaller screens */
    @media screen and (max-width: 600px) {
        form {
            width: 90%;
        }
    }
</style>
</head>
<body>

    <h2>Register</h2>

    <% 
    String message = (String) request.getAttribute("message");
    if (message != null) { 
    %>
    <p><%= message %></p>
    <% 
    } 
    %>

    <form action="add-user" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br> 
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>
    
    <a href="home">back to home</a>

</body>
</html>
