<style>

#img{
hight:10 px;
}
</style>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RoomDekho</title>
    <!-- LInk To CSS -->
     <link rel="stylesheet"  type="text/css" href="style.css">
    <!-- Box Icons -->
    <link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  
</head>
<body>
    <!-- Navbar -->
    <header>
        <div class="nav container">
            <!-- Logo -->
            <a href="index.jsp" class="logo"><i class='bx bx-home'></i>RoomDekho</a>
            <!-- Menu Icon -->
            <input type="checkbox" name="" id="menu">
            <label for="menu" ><i class='bx bx-menu' id="menu-icon"></i></label>
            <!-- Nav List -->
            <ul class="navbar">
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About Us</a></li>
                <li><a href="#sales">Sales</a></li>
                <li><a href="post_properties.jsp">Post properties</a></li>
            </ul>
            <!-- Log In Button -->
           
            
           <select  class="btn">
           <option>${userData}</option>
             <option>activity</option>
               <option><a href="#logout">logout</a></option>
            </select>
        </div>

    </header>
    <!-- Home -->
    <section class="home container" id="home">
        <div class="home-text">
            <h1>Find Your Next <br>Perfect Place To <br>Live.</h1>
          
        </div>
    </section>
    <!-- About -->
    <section class="about container" id="about">
        <div class="about-img">
            <img src="static/image/about.jpg" alt="">
        </div>
        <div class="about-text">
            <span>About Us</span>
            <h2>We Provide The Best <br>Property For You !</h2>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iusto debitis ducimus neque assumenda facere magni!</p>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iusto debitis ducimus neque assumenda facere magni!</p>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem, soluta.</p>
            <a href="#" class="btn">Learn More</a>
        </div>
    </section>
    <!-- Sales -->
    <section class="sales container" id="sales">
        <!-- Box 1 -->
        <div class="box">
            <i class='bx bx-user' ></i>
            <h3>Make Your Dream True</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facilis, aut.</p>
        </div>
        <!-- Box 2 -->
        <div class="box">
            <i class='bx bx-desktop' ></i>
            <h3>Start Your Membership</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facilis, aut.</p>
        </div>
        <!-- Box 1 -->
        <div class="box">
            <i class='bx bx-home-alt' ></i>
            <h3>Enjoy Your New Home</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facilis, aut.</p>
        </div>
    </section>
    <!-- Properties -->
    <section class="properties container" id="properties">
        <div class="heading">
            <span>Recent</span>
            <h2>Our Featured Properties</h2>
            <p>Lorem ipsum dolor sit amet consectetur <br> adipisicing elit. Odio, laborum!</p>
        </div>
        <div class="properties-container container">
            <!-- Box 1 -->
          <form action="showProperties">
            <div class="box">
               
          <!--    <a href="showProperties"> <img src="static/image/p1.jpg" alt=""> </a>-->
            <input type="image" src="static/image/p1.jpg" id="img" alt="" >
                <h3>$12,999</h3>
                <div class="content">
                    <div >
                        <h3>jaipur</h3 >
                        <p> Rajesthan </p>
                        <input type="hidden"  name="city" value="jaipur">
                    </div>
                    <div class="icon">
                        <i class='bx bx-bed' ><span>5</span></i>
                        <i class='bx bx-bath' ><span>2</span></i>
                    </div>
                </div>
            </div>
        
            </form> 
            
            <!-- Box 2 -->
            <div class="box">
                <img src="static/image/p2.jpg" alt="">
                <h3>$12,999</h3>
                <div class="content">
                    <div class="text">
                        <h3>The Palace</h3>
                        <p>London, UK</p>
                    </div>
                    <div class="icon">
                        <i class='bx bx-bed' ><span>5</span></i>
                        <i class='bx bx-bath' ><span>2</span></i>
                    </div>
                </div>
            </div>
            <!-- Box 3 -->
            <div class="box">
                <img src="static/image/p3.jpg" alt="">
                <h3>$12,999</h3>
                <div class="content">
                    <div class="text">
                        <h3>The Palace</h3>
                        <p>London, UK</p>
                    </div>
                    <div class="icon">
                        <i class='bx bx-bed' ><span>5</span></i>
                        <i class='bx bx-bath' ><span>2</span></i>
                    </div>
                </div>
            </div>
            <!-- Box 4 -->
            <div class="box">
                <img src="static/image/p4.jpg" alt="">
                <h3>$12,999</h3>
                <div class="content">
                    <div class="text">
                        <h3>The Palace</h3>
                        <p>London, UK</p>
                    </div>
                    <div class="icon">
                        <i class='bx bx-bed' ><span>5</span></i>
                        <i class='bx bx-bath' ><span>2</span></i>
                    </div>
                </div>
            </div>
            <!-- Box 5 -->
            <div class="box">
                <img src="static/image/p5.jpg" alt="">
                <h3>$12,999</h3>
                <div class="content">
                    <div class="text">
                        <h3>The Palace</h3>
                        <p>London, UK</p>
                    </div>
                    <div class="icon">
                        <i class='bx bx-bed' ><span>5</span></i>
                        <i class='bx bx-bath' ><span>2</span></i>
                    </div>
                </div>
            </div>
            <!-- Box 6 -->
            <div class="box">
                <img src="static/image/p6.jpg" alt="">
                <h3>$12,999</h3>
                <div class="content">
                    <div class="text">
                        <h3>The Palace</h3>
                        <p>London, UK</p>
                    </div>
                    <div class="icon">
                        <i class='bx bx-bed' ><span>5</span></i>
                        <i class='bx bx-bath' ><span>2</span></i>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Newsletter -->
    <section class="newsletter container">
        <h2>Have Question in mind? <br>Let us help you</h2>
        <form action="">
            <input type="email" name="" id="email-box" placeholder="yourmail@gmail.com" required>
            <input type="submit" value="Send" class="btn">
        </form>
    </section>
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