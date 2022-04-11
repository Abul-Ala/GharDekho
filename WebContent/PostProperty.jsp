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
            <a href="index.html" class="logo"><i class='bx bx-home'></i>RoomDekho</a>
        </div>

    </header>
    <!-- Sign Up -->
    <div class="login container">
        <div class="login-container">
            <h2>Welcome , Let's get started</h2>
            <h3>Add Basic Details</h3>
            <!-- Login Form -->
            <form action="postProperties" onsubmit="true" method="post" enctype="multipart/form-data">
                <label>Owner Full Name</label>
                <input type="text" name="name" id="" placeholder="Your Name" required>
                <label>Enter your email address</label>
                <input type="email" name="email" id="" placeholder="yourmail@gmail.com" required>
                <label>Phone</label>
                <input type="tel" name="number" id="" placeholder="Enter your number" required>
                <label>Property Type</label>
                <select name="PropType" class="Type">
                   <option>Its a </option>
                   <option>Flat</option>
                   <option>Hostel</option>
                   <option>PG</option>
                   <option>Commercial</option>
                   <option>Appartment Floor</option>
                   <option>FarmHouse</option>
               </select>
			    <label><h3>Tell Us About Yout Property</h3></label>
                <label>No of Rooms</label>
                <input type="number" name="Rooms" class="Type" min="0" placeholder="0" required>
                <label>No of Bathrooms</label>
                <input type="number" name="BathRooms" class="Type" min="0" placeholder="0" required>
                <label>Any Other Room</label>
                <select name="ExtraRoom" class="Type" required>
                   <option hidden>Select</option>
                   <option>Pooja Room </option>
                   <option>Servent Room </option>
                   <option>Store Room</option>
                   <option>None</option>
                </select>

                <label>Furnishing Condition</label>
                <select name="FurnishingCondition" class="Type">
                   <option>Fully Furnished</option>
                   <option>Semi Furnished </option>
                   <option>Un Furnished</option>
                </select>
            
                <label>Avalability from</label>
                <input type="date" name="Avalability" id="" placeholder="Today" required>
                
                <label>Willing to Rent out to</label>
                <select name="WillingToRent" class="Type">
                   <option hidden>Select</option>
                   <option>Anyone</option>
                   <option>Family</option>
                   <option>Single Men</option>
                   <option>Single Women</option>
                </select>
				 <span><h3>Location Details</h3></span>

                <span>City</span>
                <select name="City" class="Type">
                   <option>Enter Location</option>
                   <option>Jaipur</option>
                   <option>Mumbai</option>
                   <option>Delhi</option>
                   <option>Kolkata</option>
                   <option>Bangalore</option>
                   <option>Indore</option>
                </select>
                <span>Appartment/Society</span>
                <input type="text" name="Appartment" id="" placeholder="Appartment/Society" required>
                <span>House No * Optional</span>
                <input type="text" name="HouseNo" id="" placeholder="House-NO">
                 <span>Enter Rent Amount</span>
                <input type="text" name="rent" id="" placeholder=" Rent">
                 <label><h3>Provide Photos</h3></label>
                <input type="file" name="multipartfile" class="Type">
              
                <button type="submit" class="btn">Continue</button>
                <input type="hidden" name="email" value= ${email } >
               
        </div>
        <!-- Log In Image -->
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