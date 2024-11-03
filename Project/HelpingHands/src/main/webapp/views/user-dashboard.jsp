<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Donation System</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
        }
        .quote-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}
        
        
           .quotes-section {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 40px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .quote-card {
            background: #fff;
            display: flex;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .quote-card img {
            width: 150px;
            height: 150px;
            object-fit: cover;
        }

        .quote-text {
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .quote-text p {
            font-size: 1.1em;
            color: #333;
            margin: 0;
        }

        .quote-text h4 {
            margin: 10px 0 0;
            font-size: 1.2em;
            color: #007bff;
        }

        .quote-text span {
            font-size: 0.9em;
            color: #777;
        }
        
        
        /* Navigation Bar */
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #0040ff; /* Updated color */
            padding: 15px 20px;
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
        .hero {
            position: relative;
            text-align: center;
            color: white;
            margin-top: 80px; /* To avoid overlap with fixed navbar */
        }
        .hero img {
            width: 100%;
            height: 500px; /* Reduced height */
            object-fit: cover;
        }
        .hero .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .hero .content h2 {
            font-size: 48px;
            margin: 0;
            font-weight: 700;
        }
        .hero .content p {
            font-size: 24px;
            margin: 10px 0;
        }
        .hero .content .btn {
            padding: 15px 30px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            font-weight: 700;
            border-radius: 5px;
        }
        .section {
            padding: 60px 50px;
            text-align: center;
        }
        .section h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }
        .section p {
            font-size: 18px;
            margin-bottom: 40px;
        }
        .section img {
            width: 100%;
            height: auto;
            max-width: 300px; /* Reduced size */
            margin-bottom: 20px;
        }
        .reviews {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .review {
            width: 20%; /* Reduced width */
            margin-bottom: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            text-align: center;
        }
        .review img {
            width: 100px; /* Reduced image size */
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }
        .review p {
            font-size: 16px;
        }
        
        
         .card-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 40px auto;
            gap: 20px;
        }


        .motto-card {
            background-color: #f4f4f4;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            width: 300px;
            margin: 0 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
             align-items: center;
            justify-content: space-between;
        }

        .large-card {
            height: 500px; /* Height of the center card */
        }

        .small-card {
            height: 300px; /* Height of the smaller cards */
        }

        .motto-card img {
            width: 120px;
            height: 120px;
            border-radius: 50%; /* Circular image */
            object-fit: cover;
            margin-bottom: 20px;
        }

        .motto-card p {
            font-size: 16px;
            color: #333;
            margin-bottom: 20px;
        }

        .motto-card .donate-button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 80%;
        }

        .motto-card .donate-button:hover {
            background-color: #218838;
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
        
        <br>
        <span id="username"><%= user.getName() %></span> <!-- Placeholder for username -->
        
        <%
        } else {
        %>
        <p>User not found in session. Please log in again.</p>
        <%
        }
        %>
            
            
        </div>
    </nav>
    <div class="hero">
        <img alt="Children smiling and pointing towards the camera" height="500" src="https://storage.googleapis.com/a1aa/image/x126AEZAOUKNJpmSUqv6qzOZmJvDMOhqWdmt3ONci8Xkvs4E.jpg" width="1920"/>
        <div class="content">
            <h2>Support a cause</h2>
            <p>Make a difference with donations</p>
            <a class="btn" href="donate">Donate</a>
        </div>
    </div>
  
     <div class="card-container">
        <!-- Left Small Card -->
        <div class="motto-card small-card">
            <img src="data:image/jpeg;base64,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" alt="Helping Hands">
            <p>
                "Every donation counts. Join us in making a difference to communities hit hardest by disasters."
            </p>
            <button class="donate-button">Donate</button>
        </div>

        <!-- Center Large Card -->
        <div class="motto-card large-card">
            <h2>What We Do</h2>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrDkfiHjM9CF8mGPbTK58s8b0jbfIeMi4eDEurSiKPRTxH5xtascJQWcCm8WdlcyMmOyA&usqp=CAU" alt="Helping Hands Logo">
            <p>
                "Our mission is to extend a helping hand to those affected by natural disasters, offering relief and support in their time of need. We believe that together, we can rebuild lives, restore hope, and bring communities back to their feet."
            </p>
            <button class="donate-button">Donate</button>
        </div>

        <!-- Right Small Card -->
        <div class="motto-card small-card">
            <img src="data:image/jpeg;base64,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" alt="Helping Hands">
            <p>
                "Your generosity helps us bring food, shelter, and hope to families in need. Let's make a change."
            </p>
            <button class="donate-button">Donate</button>
        </div>
       
    </div>
     <br>
        <br>
    <h2 align="center">Inspiring Quotes on Helping and Donating by Famous People</h2>
<section class="quotes-section">

    <!-- First Row -->
    <div class="quote-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPArn47Z-WkF9zFIwfGx3AdG8Fu-MyjwH1xw&s" alt="Mahatma Gandhi">
        <div class="quote-text">
            <p>"The best way to find yourself is to lose yourself in the service of others."</p>
            <h4>Mahatma Gandhi</h4>
            <span>Indian Leader</span>
        </div>
    </div>

    <div class="quote-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnrBRBP8a76f_q6OvCjYst78E2b-nTmz2eBQ&s" alt="Martin Luther King Jr.">
        <div class="quote-text">
            <p>"Life's most persistent and urgent question is, 'What are you doing for others?'"</p>
            <h4>Martin Luther King Jr.</h4>
            <span>Civil Rights Activist</span>
        </div>
    </div>

    <div class="quote-card">
        <img src="data:image/jpeg;base64,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" alt="Mother Teresa">
        <div class="quote-text">
            <p>"It's not how much we give but how much love we put into giving."</p>
            <h4>Mother Teresa</h4>
            <span>Missionary</span>
        </div>
    </div>

    <!-- Second Row -->
    <div class="quote-card">
        <img src="data:image/jpeg;base64,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" alt="Warren Buffett">
        <div class="quote-text">
            <p>"If you're in the luckiest 1% of humanity, you owe it to the rest of humanity to think about the other 99%."</p>
            <h4>Warren Buffett</h4>
            <span>Businessman & Philanthropist</span>
        </div>
    </div>

    <div class="quote-card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS563EcZEt1TjsYhz3zoWRp53vUd12F9dSxiw&s" alt="Albert Einstein">
        <div class="quote-text">
            <p>"Only a life lived for others is a life worthwhile."</p>
            <h4>Albert Einstein</h4>
            <span>Scientist</span>
        </div>
    </div>

    <div class="quote-card">
        <img src="data:image/jpeg;base64,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" alt="Princess Diana">
        <div class="quote-text">
            <p>"Carry out a random act of kindness, with no expectation of reward."</p>
            <h4>Princess Diana</h4>
            <span>Philanthropist & Royal</span>
        </div>
    </div>
</section>
    
    <div class="section" id="our-motto">
        <h2>Our Motto</h2>
        <img alt="Cartoon image representing our motto" height="300" src="https://storage.googleapis.com/a1aa/image/DDC2kf3mKoQMca4fPrpD3Ur5LxQBneFg9zZdL3CCTb9z2mFnA.jpg" width="300"/>
        <p>Empowering communities, one donation at a time.</p>
    </div>
    <div class="section" id="reviews">
        <h2>Reviews from the Victims</h2>
        <div class="reviews">
            <div class="review">
                <img alt="Cartoon image of a person giving a review" height="100" src="https://storage.googleapis.com/a1aa/image/1RTqvgvKxPaQBtSq3lGGp7GL7CwqAcebvv0QWGNBP3TutZxJA.jpg" width="100"/>
                <p>"The support I received was life-changing. Thank you for your generosity!"</p>
            </div>
            <div class="review">
                <img alt="Cartoon image of a person giving a review" height="100" src="https://storage.googleapis.com/a1aa/image/1RTqvgvKxPaQBtSq3lGGp7GL7CwqAcebvv0QWGNBP3TutZxJA.jpg" width="100"/>
                <p>"I am so grateful for the help provided. It made a huge difference in my life."</p>
            </div>
            <div class="review">
                <img alt="Cartoon image of a person giving a review" height="100" src="https://storage.googleapis.com/a1aa/image/1RTqvgvKxPaQBtSq3lGGp7GL7CwqAcebvv0QWGNBP3TutZxJA.jpg" width="100"/>
                <p>"Your donations have brought hope and joy to our community. Thank you!"</p>
            </div>
        </div>
    </div>
</body>
</html>
