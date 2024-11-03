<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donate</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        h1 {
            text-align: center;
            margin-top: 30px;
            color: #333;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            max-width: 1200px;
            margin: 50px auto;
            padding: 0 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card-content {
            padding: 20px;
            text-align: center;
        }

        .card-content h2 {
            margin: 0 0 10px;
            color: #333;
        }

        .card-content p {
            color: #555;
            margin-bottom: 20px;
        }

        .card-content button {
            background-color: #28a745;
            border: none;
            color: #fff;
            padding: 10px 15px;
            margin: 5px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .card-content button:hover {
            background-color: #218838;
        }

        .donate-items {
            background-color: #007bff;
        }

        .donate-items:hover {
            background-color: #0056b3;
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

    <h1>Donate to Disaster Relief Drives</h1>

     <div class="container"> 
 
        <!-- Card 1 --> 
        <div class="card"> 
            <img src="https://s.w-x.co/util/image/w/in-flood_kohlapur.jpg?v=at&w=1280&h=720" alt="Flood Relief"> 
            <div class="card-content"> 
                <h2>Flood Relief in South Asia</h2> 
                <p>Support victims of the recent floods in South Asia by donating essential items or funds for emergency aid.</p> 
                <button>Donate Cash</button> 
                <button class="donate-items" onclick="window.location.href='pickup'">Donate Items</button> 
            </div> 
        </div> 
 
        <!-- Card 2 --> 
        <div class="card"> 
            <img src="https://i.guim.co.uk/img/media/7b2aef8d1b64c14cb09d053400f8fc5faf6e2ef1/0_301_7390_4434/master/7390.jpg?width=465&dpr=1&s=none" alt="Hurricane Relief"> 
            <div class="card-content"> 
                <h2>Hurricane Relief in the Caribbean</h2> 
                <p>Help rebuild communities devastated by hurricanes by contributing to relief efforts in the Caribbean islands.</p> 
                <button>Donate Cash</button> 
                <button class="donate-items" onclick="window.location.href='pickup'">Donate Items</button> 
            </div> 
        </div> 
 

           <!-- Card 3 --> 
        <div class="card"> 
            <img src="https://human-stiftung.org/wp-content/uploads/2024/02/Jajarkot-Earthquake-3-scaled.jpg" alt="Earthquake Relief"> 
            <div class="card-content"> 
                <h2>Earthquake Relief in Turkey</h2> 
                <p>Assist the people of Turkey after the massive earthquake by providing essential supplies or financial support.</p> 
                <button>Donate Cash</button> 
                <button class="donate-items" onclick="window.location.href='pickup'">Donate Items</button> 
            </div> 
        </div>

        <!-- Card 4 --> 
        <div class="card"> 
            <img src="https://assets.weforum.org/article/image/large_jmDVMH6iZZ0kXXbo9MhzfOa4MxvG4zlodniw2VTZbRU.jpg" alt="Wildfire Relief"> 
            <div class="card-content"> 
                <h2>Wildfire Relief in Australia</h2> 
                <p>Help wildlife and communities affected by wildfires in Australia by donating funds or emergency supplies.</p> 
                <button>Donate Cash</button> 
                <button class="donate-items" onclick="window.location.href='pickup'">Donate Items</button> 
            </div> 
        </div> 
 
        <!-- Card 5 --> 
        <div class="card"> 
            <img src="https://news.mit.edu/sites/default/files/styles/news_article__image_gallery/public/images/202110/zero-water-640x426_WEB.jpg?itok=dJ6g9uyO" alt="Drought Relief"> 
            <div class="card-content"> 
                <h2>Drought Relief in Africa</h2> 
                <p>Provide life-saving resources to those affected by the severe drought in African countries.</p> 
                <button>Donate Cash</button> 
                <button class="donate-items" onclick="window.location.href='pickup'">Donate Items</button> 
            </div> 
        </div> 
 
        <!-- Card 6 --> 
        <div class="card"> 
            <img src="https://images.foxweather.com/static.foxweather.com/www.foxweather.com/content/uploads/2021/11/668/376/Tsunami_A.png?ve=1&tl=1" alt="Tsunami Relief"> 
            <div class="card-content"> 
                <h2>Tsunami Relief in Southeast Asia</h2> 
                <p>Contribute to the relief efforts for communities affected by the recent tsunami in Southeast Asia.</p> 
                <button>Donate Cash</button> 
                <button class="donate-items"  onclick="window.location.href='pickup'">Donate Items</button> 
            </div> 
        </div> 
 

    </div>

</body>
</html>
