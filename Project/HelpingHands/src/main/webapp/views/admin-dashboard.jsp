<html>
 <head>
  <title>
  Helping Hands
  </title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <style>
   body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header .title {
            font-size: 20px;
        }
        .header .account {
            display: flex;
            align-items: center;
        }
        .header .account img {
            border-radius: 50%;
            margin-right: 10px;
        }
        .sidebar {
            width: 200px;
            background-color: #2c3e50;
            color: white;
            position: fixed;
            top: 0;
            bottom: 0;
            padding-top: 60px;
        }
        .sidebar h2 {
            text-align: center;
            font-size: 14px;
            margin-bottom: 20px;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            padding: 10px 20px;
        }
        .sidebar ul li:hover {
            background-color: #34495e;
            cursor: pointer;
        }
        .main-content {
            margin-left: 200px;
            padding: 20px;
        }
        .main-content h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .cards {
            display: flex;
            justify-content: space-between;
        }
        .card {
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 23%;
            padding: 20px;
            text-align: center;
        }
        .card h2 {
            font-size: 36px;
            margin: 0;
        }
        .card p {
            margin: 10px 0;
            font-size: 14px;
            color: #777;
        }
        .card .detail {
            display: block;
            margin-top: 20px;
            font-size: 12px;
            color: #3498db;
            text-decoration: none;
        }
        .card.blue {
            background-color: #3498db;
            color: white;
        }
        .card.green {
            background-color: #2ecc71;
            color: white;
        }
        .card.light-blue {
            background-color: #1abc9c;
            color: white;
        }
  </style>
 </head>
 <body>
  <div class="header">
   <div class="title">
    Management System
   </div>
   <div class="account">
    <img alt="User profile picture" height="30" src="https://storage.googleapis.com/a1aa/image/9R7DI2XhBm7DOtkSFjPr9hbRTkonHqYCXSfENeJ1ZVXfy4FnA.jpg" width="30"/>
    <span>
     Account
    </span>
    <i class="fas fa-caret-down">
    </i>
   </div>
  </div>
  <div class="sidebar">
   <h2>
    MAIN
   </h2>
   <ul>
    <li>
     View Users
    </li>
    <li>
     Add Donations
    </li>
    <li>
     Manage Donations
    </li>
    <li>
     Update Contact Info
    </li>
   </ul>
  </div>
  <div class="main-content">
   <h1>
    Dashboard
   </h1>
   <div class="cards">
    <div class="card blue">
     <h2>
      6
     </h2>
     <p>
      LISTED USERS
     </p>
     <a class="detail" href="#">
      FULL DETAIL
      <i class="fas fa-arrow-right">
      </i>
     </a>
    </div>
    <div class="card green">
     <h2>
      9
     </h2>
     <p>
      REGISTERED DONATIONS
     </p>
     <a class="detail" href="#">
      FULL DETAIL
      <i class="fas fa-arrow-right">
      </i>
     </a>
    </div>
    <div class="card light-blue">
     <h2>
      0
     </h2>
     <p>
      TOTAL QUERIES
     </p>
     <a class="detail" href="#">
      FULL DETAIL
      <i class="fas fa-arrow-right">
      </i>
     </a>
    </div>
    <div class="card blue">
     <h2>
      5
     </h2>
     <p>
      TOTAL REQUESTS RECEIVED
     </p>
     <a class="detail" href="#">
      FULL DETAIL
      <i class="fas fa-arrow-right">
      </i>
     </a>
    </div>
   </div>
  </div>
 </body>
</html>