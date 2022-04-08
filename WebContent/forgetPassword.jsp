<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>
    <!-- LInk To CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Box Icons -->
    <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>
<body>
    <!-- Navbar -->
    <header>
        <div class="nav container">
            <!-- Logo -->
            <a href="index.html" class="logo"><i class='bx bx-home'></i>RoomDekho</a>
           
            <!-- Log In Button -->
         
        </div>

    </header>
    <!-- Log In -->
    <div class="login container">
        <div class="login-container">
            <h2>Login To Connect</h2>
            <p>Log in with your data that you entered <br>while your registration</p>
            <!-- Login Form -->
            <form action="/RoomDekho/forgetPassword" method="post">
                <span>Enter Your Email Address</span>
                <input type="email" name="email"  id="" placeholder="Enter Your Email Here!" required>
                <span>Enter Password</span>
                <input type="password"name="password" id="" placeholder="enter Old Password" required>
                <span>New Password</span>
                <input type="password" name="newpassword" id="" placeholder="Enter New Password" required>
                
				<input type="submit" value="Log-In-Again" class="buttom">
				<h3>${text }</h3>
            </form>
        </div>
        <!-- Log In Image -->
        <div class="login-image">
            <img src="img/login.png" alt="">
        </div>
    </div>
    
    <!-- Footer -->
    <section class="footer">
        <div class="footer-container container">
            <h2>R. State</h2>
            <div class="footer-box">
                <h3>Quick Links</h3>
                <a href="#">Agency</a>
                <a href="#">Building</a>
                <a href="#">Rates</a>
            </div>
            <div class="footer-box">
                <h3>Locations</h3>
                <a href="#">Birmingham</a>
                <a href="#">London</a>
                <a href="#">New York</a>
            </div>
            <div class="footer-box">
                <h3>Contact</h3>
                <a href="#">+44 (0)800 123 4567</a>
                <a href="#">yourmail@gmail.com</a>
                <div class="social">
                    <a href="#"><i class='bx bxl-facebook' ></i></a>
                    <a href="#"><i class='bx bxl-twitter' ></i></a>
                    <a href="#"><i class='bx bxl-instagram' ></i></a>
                </div>
            </div>
        </div>
    </section>
    <!-- Copyright -->
    <div class="copyright">
        <p>&#169; CarpoolVenom All Right Reserved</p>
    </div>

    
</body>
</html>