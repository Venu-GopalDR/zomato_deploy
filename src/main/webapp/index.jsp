<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Zomato Clone</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fff;
            color: #333;
        }
        header {
            background: #ff4757;
            padding: 20px;
            text-align: center;
            color: white;
        }
        header h1 {
            margin: 0;
            font-size: 3em;
        }
        .hero {
            background-image: url('https://source.unsplash.com/1600x600/?food');
            background-size: cover;
            background-position: center;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 2.5em;
            font-weight: bold;
            text-shadow: 2px 2px 4px #000;
        }
        .content {
            padding: 40px;
            text-align: center;
        }
        .menu {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }
        .menu-item {
            width: 250px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            overflow: hidden;
            transition: 0.3s;
        }
        .menu-item:hover {
            transform: scale(1.05);
        }
        .menu-item img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }
        .menu-item h3 {
            margin: 10px 0;
            font-size: 1.3em;
        }
        footer {
            background-color: #2f3542;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .contact {
            margin-top: 40px;
        }
        a {
            color: #ff6b81;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to Zomato</h1>
    <p>Your favorite meals, delivered fast</p>
</header>

<div class="hero">
    Discover Delicious Food Near You
</div>

<div class="content">
    <h2>Popular Dishes</h2>
    <div class="menu">
        <div class="menu-item">
            <img src="https://source.unsplash.com/400x300/?pizza" alt="Pizza">
            <h3>Classic Margherita Pizza</h3>
        </div>
        <div class="menu-item">
            <img src="https://source.unsplash.com/400x300/?burger" alt="Burger">
            <h3>Cheesy Double Burger</h3>
        </div>
        <div class="menu-item">
            <img src="https://source.unsplash.com/400x300/?biryani" alt="Biryani">
            <h3>Spicy Chicken Biryani</h3>
        </div>
        <div class="menu-item">
            <img src="https://source.unsplash.com/400x300/?pasta" alt="Pasta">
            <h3>White Sauce Pasta</h3>
        </div>
    </div>

    <div class="contact">
        <h2>Contact Us</h2>
        <p>Email: support@zomato-clone.com</p>
        <p>Instagram: <a href="#">@zomatoclone</a></p>
    </div>
</div>

<footer>
    &copy; 2025 Zomato Clone. All rights reserved.
</footer>

</body>
</html>
