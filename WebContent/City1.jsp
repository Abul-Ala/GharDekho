<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <!-- LInk To CSS -->
    <link rel="stylesheet" href="style1.css">
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
            <ul>
                <li><a href="#Flat">Flat</a><li>
                <li><a href="#Hostel">Hostel</a></li>
                <li><a href="#PG">PG</a></li>
                <li><a href="#House">House</a></li>
                <li><a href="#Commercial">Commercial</a></li>
            </ul>
            <!-- Log In Button -->
           
        </div>
    </header>
    <h1 id="top">Flats in  ${ city } </h1>
    
    <c:forEach var="user" items="${userInfo}">
    <section class="FlatContainer" id="Flat">
        <div class="Flex1">
      <div>
            <div class="Photo">
                <a href="#"><img src="${user.image}"></a>
                 <a href="#"><img src="uploded_image_on_server/img-2.jpg"></a>
             </div>
                <div class="Details1">
                         <div><h4>Appartment Name- ${user.Appartment }</h4></div>
                    <div>
                             <ul>
                                    <li>Provide to- ${user.WillingToRent } </li>
                                    <li> NoOfRooms- ${user.NoOfRooms} </li>
                                    <li> HouseNo  ${user.HouseNo} </li>
                                     <li>Rent- ${user.rent} </li>
                                    <h3> contact to owner</h3>
                                   
                                    <li> ${user.number } </li>
                              </ul>
                   </div>
            
               </div>
        
    </div>
    
    </section>
    </c:forEach>

    <section class="Hostel Container" id="Hostel">

    </section>

    <section class="PG Container" id="PG">

    </section>

    <section class="House Container" id="House">

    </section>

    <section class="Commercial Container" id="Commercial">

    </section>

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