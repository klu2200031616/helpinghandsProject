<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Helping Hands</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #FCF6F5; /* Light gray background */
            color: #333; /* Dark text color */
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

        /* Main Section */
        .main-section {
            display: flex;
           
            align-items: center; /* Center vertically */
            padding: 20px;
            justify-content: center; /* Center items */
        }

        .card-container {
            display: flex;
             height:300px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            width: 80%; /* Adjust width as needed */
            max-width: 800px; /* Max width for larger screens */
        }

        .image-container {
            flex: 1; /* Image side takes equal space */
            overflow: hidden;
        }

        .image-container img {
            width: 100%;
            height: auto;
        }

        .content-container {
            flex: 1; /* Content side takes equal space */
            display: flex;
            flex-direction: column;
            justify-content: center; /* Center vertically */
            padding: 20px; /* Padding around text */
            text-align: center; /* Center text */
        }

        .sentence {
            font-size: 1.8em; /* Larger size for the sentence */
            margin-bottom: 20px; /* Space below the sentence */
        }

        /* Register button */
        .register-button {
            background-color: #ec1380; /* Specific color for Register button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .register-button:hover {
            background-color: #d11a6b; /* Darker shade on hover */
        }
            /* What We Do Section */
        .what-we-do {
            padding: 40px 20px; /* Padding for the section */
            text-align: center; /* Center text */
        }

        .what-we-do h2 {
            margin-bottom: 20px; /* Space below title */
            font-size: 2em; /* Title font size */
        }
        
        .card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

        .card-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* 3 columns */
            gap: 20px; /* Space between cards */
            max-width: 1200px; /* Max width for the grid */
            margin: 0 auto; /* Center grid */
        }

        .card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            text-align: center; /* Center text in cards */
        }

        .card img {
            width: 100px; /* Full width for images */
            height: 200px;
        }

        .card-description {
            padding: 15px; /* Padding for description */
            font-size: 1.1em; /* Description font size */
        }
        
        
        
         /* Significance of Donation Section */
        .donation-significance {
            padding: 40px 20px; /* Padding for the section */
            background-color: #e7f3fe; /* Light blue background */
            text-align: center; /* Center text */
            border-radius: 10px; /* Rounded corners */
            margin: 40px 0; /* Space above and below */
        }

        .donation-significance h2 {
            margin-bottom: 20px; /* Space below title */
            font-size: 2em; /* Title font size */
        }

        .donation-text {
            font-size: 1.2em; /* Text size */
            margin-bottom: 30px; /* Space below text */
        }

        .donation-button {
            background-color: #ec1380; /* Button color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .donation-button:hover {
            background-color: #d11a6b; /* Darker shade on hover */
        }

        /* About Us and Contact Us buttons */
        .action-buttons {
            margin-top: 20px; /* Space above buttons */
        }

        .action-button {
            background-color: #0040ff; /* Button color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 0 10px; /* Space between buttons */
            transition: background-color 0.3s ease;
        }

        .action-button:hover {
            background-color: #0032cc; /* Darker shade on hover */
        }
        
        
        
        /* Testimonials Section */
        .testimonials {
            padding: 40px 20px; /* Padding for the section */
            background-color: #f9f9f9; /* Light background */
            text-align: center; /* Center text */
        }

        .testimonials h2 {
            margin-bottom: 20px; /* Space below title */
            font-size: 2em; /* Title font size */
        }

        .testimonial-container {
            display: flex;
            overflow: hidden; /* Hide overflow */
            max-width: 800px; /* Max width for the slider */
            margin: 0 auto; /* Center the slider */
            position: relative; /* For absolute positioning of buttons */
        }

        .testimonial-slider {
            display: flex;
            transition: transform 0.5s ease; /* Smooth transition */
        }

        .testimonial-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px; /* Padding around text */
            margin: 0 10px; /* Space between cards */
            min-width: 300px; /* Minimum width for cards */
            text-align: center; /* Center text in cards */
        }

        .profile-icon {
            width: 80px; /* Profile icon size */
            height: 80px; /* Profile icon size */
            border-radius: 50%; /* Circle shape */
            object-fit: cover; /* Cover to maintain aspect ratio */
            margin-bottom: 15px; /* Space below the image */
        }

        .quote {
            font-style: italic; /* Italic text for quotes */
            margin: 10px 0; /* Space above and below quote */
        }
        
        
        
        /* Importance Section Styles */
.importance-section {
    background-color: #f9f9f9; /* Light background for contrast */
    padding: 40px 20px; /* Padding for top/bottom and sides */
    text-align: center; /* Center the text */
    margin: 20px 0; /* Margin for spacing between sections */
    border-radius: 10px; /* Slightly rounded corners */
}

.importance-section h2 {
    font-size: 2em; /* Larger font size for heading */
    color: #0040ff; /* Color to match the navigation bar */
    margin-bottom: 20px; /* Space below the heading */
}

.importance-section p {
    font-size: 1.2em; /* Slightly larger font for paragraph */
    color: #333; /* Dark text color */
    line-height: 1.5; /* Improve readability */
    max-width: 800px; /* Maximum width for paragraph */
    margin: 0 auto; /* Center the paragraph */
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
.quote-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
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
        
    </style>
</head>
<body>

<nav>
    <div class="logo">Helping Hands</div>
    <div>
        <a href="login">Login</a>
        <a href="add-user">Register</a>
        <a href="aboutus">About Us</a>
        <a href="contactus">Contact Us</a>
    </div>
</nav>

<div class="main-section">
    <div class="card-container">
        <div class="image-container">
            <img src="https://img.freepik.com/premium-photo/charity-artwork-illustration-cartoon-man-donating-parcel-food-support-relief_590464-272901.jpg" alt="Helping Hands Image">
        </div>
        <div class="content-container">
            <div class="sentence">Join us in making a difference!</div>
            <button class="register-button"><a href="add-user">Register</a></button>
        </div>
    </div>
</div>


<!-- Importance Section -->
<section class="importance-section">
    <h2>Why Helping Each Other Matters</h2>
    <p>
        In times of crisis, the strength of our communities is tested, and it becomes crucial to extend a helping hand to those in need. 
        Our "Helping Hands" website is dedicated to making a positive impact by connecting generous donors with victims of natural disasters 
        and other adversities. Through our initiatives, we provide immediate support, essential resources, and emotional comfort to those 
        affected, reminding everyone that together we can rebuild lives and foster hope. Your contributions and support make a significant 
        difference, showing that compassion knows no bounds. Let us stand united in our mission to uplift and empower each other in times of need.
    </p>
</section>

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
<!-- What We Do Section -->
<div class="what-we-do">
    <h2>What We Do</h2>
    <div class="card-grid">
        <div class="card">
            <img src="https://thumbs.dreamstime.com/b/print-182589684.jpg" alt="Helping Victims">
            <div class="card-description">Helping victims of natural disasters</div>
        </div>
        <div class="card">
            <img src="data:image/jpeg;base64,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" alt="Community Support">
            <div class="card-description">Providing community support and resources</div>
        </div>
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUiJS8d54APLpWQBCo1pGTL2ti3TJ16UW96w&s" alt="Education Programs">
            <div class="card-description">Implementing education programs for children</div>
        </div>
        <div class="card">
            <img src="data:image/jpeg;base64,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" alt="Food Distribution">
            <div class="card-description">Distributing food and supplies to those in need</div>
        </div>
        <div class="card">
            <img src="https://static.vecteezy.com/system/resources/previews/005/639/060/original/male-volunteers-donate-blood-donate-blood-world-blood-donor-day-health-care-man-holding-heart-for-flat-cartoon-illustration-free-vector.jpg" alt="Health Services">
            <div class="card-description">Offering health services and medical aid</div>
        </div>
        <div class="card">
            <img src="https://media.istockphoto.com/id/1263052067/vector/tsunami-consequences-rescue-male-female-character-evacuation-save-inflatable-boat-people.jpg?s=612x612&w=0&k=20&c=Q4ndN2BcqaK5thkGTFdbuxLYgZBI-tXTYf1Bx-XxUms=" alt="Disaster Recovery">
            <div class="card-description">Assisting with disaster recovery efforts</div>
        </div>
    </div>
</div>





<!-- Testimonials Section -->
<div class="testimonials">
    <h2>What Our Beneficiaries Say</h2>
    <div class="testimonial-container">
        <button class="nav-button prev" onclick="changeSlide(-1)">&#10094;</button>
        <div class="testimonial-slider">
            <div class="testimonial-card">
                <img src="data:image/jpeg;base64,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" alt="Profile 1" class="profile-icon">
                <p class="quote">"Thanks to the support, I was able to rebuild my life after the disaster!"</p>
                <p>- Victim 1</p>
            </div>
            <div class="testimonial-card">
                <img src="data:image/png;base64,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" alt="Profile 2" class="profile-icon">
                <p class="quote">"I can't express how grateful I am for the help I received during this difficult time."</p>
                <p>- Victim 2</p>
            </div>
            <div class="testimonial-card">
                <img src="data:image/jpeg;base64,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" alt="Profile 3" class="profile-icon">
                <p class="quote">"Your donations made a significant impact on my family's life. Thank you!"</p>
                <p>- Victim 3</p>
            </div>
            <div class="testimonial-card">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCjEGwg_D5e2K8dms-__qcSNNbJJLrRzMImQ&s" alt="Profile 4" class="profile-icon">
                <p class="quote">"I received essential supplies and support when I needed it the most. Thank you!"</p>
                <p>- Victim 4</p>
            </div>
            <div class="testimonial-card">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD-ITm1nJh-g1uzfiTT4ZOl2Pduj0ZIqsfbg&s" alt="Profile 5" class="profile-icon">
                <p class="quote">"The assistance helped me find hope again. I will forever be grateful!"</p>
                <p>- Victim 5</p>
            </div>
        </div>
        <button class="nav-button next" onclick="changeSlide(1)">&#10095;</button>
    </div>
</div>

<!-- Significance of Donation Section -->
<div class="donation-significance">
    <h2>The Significance of Your Donation</h2>
    <p class="donation-text">Your contributions play a vital role in helping us provide assistance to those in need. Every donation helps us deliver essential services and support to vulnerable communities.</p>
    <div class="action-buttons">
       <button class="donation-button" onclick="window.location.href='donate'">Donate Now</button>
<button class="action-button" onclick="window.location.href='aboutus'">About Us</button>
<button class="action-button" onclick="window.location.href='contactus'">Contact Us</button>

    </div>
</div>


<script>
    let currentSlide = 0;

    function changeSlide(direction) {
        const slides = document.querySelectorAll('.testimonial-card');
        const totalSlides = slides.length;

        // Update the current slide index
        currentSlide += direction;

        // Wrap around if out of bounds
        if (currentSlide < 0) {
            currentSlide = totalSlides - 1; // Go to last slide
        } else if (currentSlide >= totalSlides) {
            currentSlide = 0; // Go to first slide
        }

        // Update the slider transform to show the current slide
        const slider = document.querySelector('.testimonial-slider');
        const slideWidth = slides[0].offsetWidth;
        slider.style.transform = `translateX(-${currentSlide * slideWidth}px)`;
    }

    // Automatically change slides every 3 seconds
    setInterval(() => {
        changeSlide(1); // Change to the next slide
    }, 3000); // 3000 milliseconds = 3 seconds
</script>
</body>
</html>
