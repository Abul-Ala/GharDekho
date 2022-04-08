<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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
            <a href="afterLogin.jsp" class="logo"><i class='bx bx-home'></i>RoomDekho</a>
        </div>

    </header>
    <!-- Sign Up -->
    <div class="login container">
        <div class="login-container">
            <!-- Login Form -->
            <form action="uploadPhotos"  method="post" enctype="multipart/form-data">
                <label><h3>Provide Photos</h3></label>
                <input type="file" name="multipartfile" class="Type">
              
                <button type="submit" class="btn">Continue</button>
                <input type="hidden" name="email" value= ${email } >
            </form>
            
        </div>
       
        <!-- Log In Image -->
         <h3> ${text } </h3>
        <div class="login-image">
            <img src="img/sign-up.png" alt="">
        </div>
    </div>
    
    <!-- Footer -->
    <section class="footer">
        <div class="footer-container container">
            <h2>RoomDekho</h2>
            <div class="footer-box">
                <h3>Quick Links</h3>
                <a href="#">Agency</a>
                <a href="#">Building</a>
                <a href="#">Rates</a>
            </div>
            <div class="footer-box">
                <h3>Locations</h3>
                <a href="#">Jaipur</a>
                <a href="#">Mumbai</a>
                <a href="#">Delhi</a>
            </div>
            <div class="footer-box">
                <h3>Contact</h3>
                <a href="tel:8306334469">Call Us</a>
                <a href="mailto:RoomDekho@gamil.com">Mail us</a>
                <div class="social">
                    <a href="#"><i class='bx bxl-facebook' ></i></a>
                    <a href="#"><i class='bx bxl-twitter' ></i></a>
                    <a href="#"><i class='bx bxl-instagram' ></i></a>
                </div>
            </div>
        </div>
    </section>
   
   

    
</body>
</html>