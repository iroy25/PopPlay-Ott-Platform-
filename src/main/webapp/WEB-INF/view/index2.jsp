<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String email=(String)session.getAttribute("data"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    
    <style>
       
       @import url('https://fonts.googleapis.com/css2?family=Source+Serif+4:ital,opsz,wght@0,8..60,200..900;1,8..60,200..900&display=swap');

       * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Source Serif 4', serif;
}

body {
    font-family: "Source Serif 4", serif;
    background-color: #000;
}

.header {
    height: 80px;
    width: 100%;
    background-position: center;
    position: relative;
}

nav {
    align-content: space-around;
    display: inline-flex;
    padding: 1% 8%;
    justify-content: space-between;
    align-items: center;
}

.nav-links {
    flex: 1;
    text-align: right;
}

.nav-links ul li {
    list-style: none;
    display: inline-block;
    padding: 8px 12px;
    position: relative;
}

.nav-links ul li a {
    color: #fff;
    font-size: 13px;
    text-decoration: none;
}

.nav-links ul li::after {
    content: '';
    width: 0;
    height: 2px;
    background: #f44336;
    display: block;
    margin: auto;
}

.nav-links ul li:hover::after {
    width: 100%;
    transition: 0.5s;
}


.card {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #000;
    max-width: 300px;
    margin: 10px;
    overflow: hidden;
    border-radius: 30px;
    box-shadow: 10px 10px 15px #7f8080;
    transition: transform 0.3s, box-shadow 0.3s;
}


.card::before {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 30%;
    background: rgba(255, 255, 255, 0.8);
    transition: height 0.3s ease;
    z-index: 1;
}

.card:hover::before {
    height: 50%;
}

.card img {
    width: 100%;
    transition: transform 0.25s ease;
}

.card:hover img {
    transform: scale(1.1);
}

.card figcaption {
    position: absolute;
    padding: 20px;
    bottom: 0;
    width: 100%;
    background: linear-gradient(to top, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0));
    color: #fff;
    z-index: 2; /* Ensure figcaption is above the overlay */
}

.card h2 {
    margin-bottom: 5px;
}

.card h3 {
    font-size: 1.2em;
    line-height: 1.7em;
}

.card a {
    position: absolute;
    bottom: 15px;
    left: 50%;
    transform: translateX(-50%);
    display: inline-block;
    font-size: 0.75em;
    color: #fff;
    background: #413b3b;
    padding: 5px 10px;
    text-decoration: none;
    border-radius: 6px;
    transition: background 0.5s;
    z-index: 2; 
}

.card a:hover {
    background: #242020;
}


figure {
    margin: 0;
    padding: 0;
    text-align: center;
    color: #fff;
}

figure img {
    display: block;
    margin: 0 auto;
}


figure figcaption {
    margin-top: -2px;
    padding: 5px 20px;
    font-size: 12px;
}

figure figcaption:after {
    content: '';
    width: 0;
    height: 2px;
    background: #f44336;
    display: block;
    margin: auto;
}
figure figcaption:hover::after {
    width: 100%;
    transition: 0.5s;
}



figure figcaption {
    margin-top: -2px;
    padding: 5px 20px;
    font-size: 12px;
}

figure figcaption:after {
    content: '';
    width: 0;
    height: 2px;
    background: #f44336;
    display: block;
    margin: auto;
}

figure figcaption:hover::after {
    width: 100%;
    transition: 0.5s;
} 


nav .fas {
    display: none;
}

.Container {
    margin: 2% 2% 0 3%;
}

.Container h2 {

    color: #000000;
    display: flex;
    padding: 25px 0;
}



.Movies {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
}


  .footer{
    padding: 41px 3% 10px;
        border-top: 6px solid #333;
        color: #777;
    }
    .footer h2{
        font-size: 18px;
        font-weight: 400;
        margin-bottom: 30px;
        color: #777;
    }

    .footer .col a{
        display: block;
        text-decoration: none;
        color: #777;
        font-size: 16px;
        margin-bottom: 10px;
    }

    .footer .row{
        align-items: flex-start;
        padding: 10px 0px;
    }

    .footer .col {
        flex: 1 0 20%; 
        margin-bottom: 20px;
        display: block;
        flex-direction: column; 
        align-items: flex-start;
        text-align: center; 
    }

    .footer .col h6 {
        font-size: 14px;
        margin-bottom: 5px; 
    }

    @media (max-width: 700px) {
        .nav-links ul li {
        display: block;
    }

    .nav-links {
        position: absolute;
        background: #000;
        height: 90vh;
        width: 200px;
        top: 0;
        right: -200px;
        text-align: left;
        z-index: 3;
        transition: 1s;
    }

  
    nav .fas {
        display: block;
        color: #fff;
        margin: 10px;
        font-size: 22px;
        cursor: pointer;
    }

    .nav-links ul {
        padding: 30px;
    }
    .nav-links ul li:hover::after {
    display: none;
}
    
}



    </style>
</head>

<body>
    <section class="header">
        <nav>
            <a href=""><img src="images/logo1.png" height="60.50px"></a>
            <figure>
                <img src="images/user.png" height="20px" width="30px">
                <figcaption><a class="nav-link"><%=email %></a></figcaption>
            </figure>
            <div class="nav-links" id="navLinks">
                <!-- Correct Font Awesome classes -->
                <i class="fas fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="#">HOME</a></li>
                    <li><a href="movielistafter">MOVIE</a></li>
                    <li><a href="movielistafter">SHOWS</a></li>
                    <li><a href="#">BLOG</a></li>
                                                            
                </ul>
                
            </div>            
            <i class="fas fa-bars" onclick="showMenu()"></i>
            
        </nav>
    </section>
    <header>
        <div id="carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="2"></button>
                </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/Aladdin_bg.jpg" class="d-block w-100" alt="Carousel 1" style= "max-height: 80vh;">
                </div>
                <div class="carousel-item">
                    <img src="images/Bahubali_bg.jpg" class="d-block w-100" alt="Carousel 2"style= "max-height: 80vh;">
                </div>
                <div class="carousel-item">
                    <img src="images/Bloodshot_bg.jpg" class="d-block w-100" alt="Carousel 3" style= "max-height: 80vh;">
                </div>
            </div>
        </div> 
    </header> 


    <section id="UpcomingMovies">
        <div class="Container">

            <div class="row Movies">
                <div class="col-lg-4 col-md-4">
                    <figure class="card">
                        <div class="image"><img src="images/lilwomen.jpg" alt=""></div>
                        <figcaption>
                            <h2>Movies</h2>
                            
                        </figcaption>
                        <a href="movielistafter">Explore Now</a>
                    </figure>
                </div>
                
                <div class="col-lg-4 col-md-4">
                    <figure class="card">
                        <div class="image"><img src="images/it.jpg" alt=""></div>
                        <figcaption>
                            <h2>StandUp Shows</h2>

                        </figcaption>
                        <a href="movielistafter">Explore Now</a>
                    </figure>
                </div>
                
                <div class="col-lg-4 col-md-4">
                    <figure class="card">
                        <div class="image"><img src="images/PeterRabbit.jpg" alt=""></div>
                        <figcaption>
                            <h2>Kids Section</h2>
                            

                        </figcaption>
                        <a href="#">Explore Now</a>
                    </figure>
                </div>
            </div>
        </div>
    </section>

    <div class="footer">
                
        <div class="row">
            <div class="col">
                <a href="#">Privacy</a>
                <a href="#">Speed Test</a>
            </div>

            <div class="col">
                <a href="#">Help Center</a>
                <a href="#">Jobs</a>
                <a href="#">Cookies Preferences</a>
                <a href="#">Legal Notices</a>
            </div>
        
            <div class="col">
                <a href="#">Account</a>
                <a href="#">Ways to Watch</a>
            </div>

            <div class="col">
                <a href="#">Media Centre</a>
                <a href="#">Terms of Use</a>
                <a href="#">Contact Us</a>
            </div>

            <div class="col">
                <a class="text-white fs-5">Follow Us On</a>
                    <a href="#" class="fa-brands fa-facebook"></a>
                    <a href="#" class="fa-brands fa-square-twitter"></a>
                    <a href="#" class="fa-brands fa-square-instagram"></a>
                    <a href="#" class="fa-brands fa-pinterest"></a>
            </div>
        </div>
        
        <div class="text-white text-center">
            <p>All rights reserved & copy 2024,<a href="#">PopPlay</a></p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script>
        var navLinks = document.getElementById("navLinks");
        function showMenu() {
            navLinks.style.right = "0";
        }
        function hideMenu() {
            navLinks.style.right = "-200px";
        }
    </script>
</body>
</html>
