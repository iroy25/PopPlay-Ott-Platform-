<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
   <!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Movie List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

       

        body {
            background: #b1a297;
            display: flex;
            flex-direction: column;
        }

        .wrapper {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .header {
            width: 100%;
            padding: 10px 8%;
            position: relative;
        }

        .header::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: linear-gradient(rgba(0, 0, 0, 0.758), rgba(0, 0, 0, 0.903)), url(images/mcollage.png);
            background-size: cover;
            background-position: center;
        }

        nav {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
            position: relative;
            z-index: 1000;
        }

        .logo {
            cursor: pointer;
            width: 150px;
        }

        .nav-left {
            display: flex;
            align-items: center;
        }

        .nav-left a {
            margin-left: 20px;
        }

        .nav-right {
            display: flex;
            align-items: center;
        }

        nav button {
            border: 0;
            outline: 0;
            background: #db0001;
            color: #fff;
            padding: 6px 11px;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10px;
        }

        nav button:hover {
            background: #ff3333;
            color: #fff;
            transform: scale(1.05);
            transition: all 0.3s ease;
        }

        .search-bar {
            display: flex;
            align-items: center;
        }

        .search-bar input {
            padding: 5px 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            margin-right: 10px;
        }

        .container {
            flex: 1;
            width: 100%;
            padding-bottom: 20px;
        }

        #filter-buttons button {
            border: 0;
            outline: 0;
            font-size: 14px;
            border-radius: 4px;
            background: #fff;
            border-color: transparent;
        }

        #filter-buttons button:hover {
            background: #584747;
            transform: scale(1.05);
            transition: all 0.3s ease;
        }

        #filter-buttons button.active {
            color: #efe8e8;
            background: #db0001;
        }

        #filterable-cards .card {
            width: 15rem;
            height: 14.5rem;
            border: 2px solid transparent;
        }

        #filterable-cards .card.hide {
            display: none;
        }

        .footer {
            padding: 65px 6% 97px;
            background-color: #131111;
            border-top: 10px solid #080707;
            color: #ede2e2;
            text-align: center;
            margin-top: auto;
        }

        .footer .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: flex-start;
            padding: 10px 0px;
        }

        .footer .col {
            width: calc(25% - 20px);
            margin-bottom: 20px;
            padding: 0 10px;
        }

        .footer .col a {
            display: block;
            text-decoration: none;
            color: #777;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .footer .col {
            flex: 1 0 20%;
            margin-bottom: 20px;
            display: block;
            flex-direction: column;
            align-items: flex-start;
            text-align: center;
        }

        @media (max-width: 600px) {
            nav {
                display: flex;
                align-items: center;
                justify-content: space-between;
                width: 100%;
                position: relative;
                z-index: 1000;
                margin-top: 22px;
            }

            .logo {
                cursor: pointer;
                width: 80px;
                margin: auto;
            }

            .header {
                width: 100vh;
                height: 20vh;
                padding: 10px 8%;
                position: relative;
            }

            .search-bar {
                display: flex;
                align-items: center;
            }

            .search-bar input {
                padding: 10px 11px;
                border-radius: 4px;
                border: 1px solid #ccc;
                margin-right: 10px;
            }

            nav button {
                border: 0;
                outline: 0;
                background: #db0001;
                color: #fff;
                padding: 6px 11px;
                font-size: 14px;
                border-radius: 4px;
                margin-left: 10px;
            }

            #filterable-cards {
                justify-content: center;
            }

            #filterable-cards .card {
                width: calc(100% / 2 - 10px);
            }



        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="header">
            <nav>
                <div class="nav-left">
                    <img src="images/logo1.png" class="logo">
                    <a href="dindex2"><button>Home</button></a>
                </div>
                <div class="nav-right">
                    <div class="search-bar">
                        <input type="text" placeholder="Search...">
                        <button>Search</button>
                    </div>
                    <a href="destroy"><button>Log Out</button></a>
                </div>
            </nav>
        </div>

        <div class="container">
            <!-- Images Filter Buttons Section -->
            <div class="row mt-5" id="filter-buttons">
                <div class="col-12">
                    <button class="btn mb-2 me-1 active" data-filter="all">Show all</button>
                    <button class="btn mb-2 mx-1" data-filter="holly">Hollywood</button>
                    <button class="btn mb-2 mx-1" data-filter="bolly">Bollywood</button>
                    <button class="btn mb-2 mx-1" data-filter="horror">Horror</button>
                </div>
            </div>
            
            <!-- Filterable Cards Section -->
            <div class="row px-2 mt-4 gap-3" id="filterable-cards">
                <% 
                String MovieId = null;
                String MovieName = null;
                String Genre = null;
                String video = null;
                
                Connection conn = null;
                PreparedStatement pstm = null;
                ResultSet rs = null;
                try {
                    String url = "jdbc:mysql://localhost:3306/popplay";
                    String uid = "root";
                    String upass = "30102002";
                    conn = DriverManager.getConnection(url, uid, upass);
                    
                    pstm = conn.prepareStatement("select * from movie where genre ='holly'");
                    rs = pstm.executeQuery();

                    while (rs.next()) {
                        MovieId = rs.getString(1);
                        MovieName = rs.getString(3);
                        video = rs.getString(4);
                %>
                <div class="col-md-4">
                    <div class="card p-0" data-name="holly">
                        <video src="<%= "videos/" + rs.getString(4) %>" type="video/mp4"></video>
                        <div class="card-body">
                            <h6 class="card-title text-center"><%= MovieName %></h6>
                            <a href="movie1?msg=<%= video %>" class="btn btn-primary d-block">Watch Now</a>
                        </div>
                    </div>
                </div>
                <% }
                } catch (Exception e) { } %>

                <% 
                String MovieId2 = null;
                String MovieName2 = null;
                String Genre2 = null;
                String video2 = null;
                
                Connection conn2 = null;
                PreparedStatement pstm2 = null;
                ResultSet rs2 = null;
                try {
                    String url = "jdbc:mysql://localhost:3306/popplay";
                    String uid = "root";
                    String upass = "30102002";
                    conn2 = DriverManager.getConnection(url, uid, upass);
                    
                    pstm2 = conn2.prepareStatement("select * from movie where genre ='bolly'");
                    rs2 = pstm2.executeQuery();

                    while (rs2.next()) {
                        MovieId2 = rs2.getString(1);
                        MovieName2 = rs2.getString(3);
                        video2 = rs2.getString(4);
                %>
                <div class="col-md-4">
                    <div class="card p-0" data-name="bolly">
                        <video src="<%= "videos/" + rs2.getString(4) %>" type="video/mp4"></video>
                        <div class="card-body">
                            <h6 class="card-title text-center"><%= MovieName2 %></h6>
                            <a href="movie1?msg=<%= video2 %>" class="btn btn-primary d-block">Watch Now</a>
                        </div>
                    </div>
                </div>
                <% }
                } catch (Exception e) { } %>

                <% 
                String MovieId3 = null;
                String MovieName3 = null;
                String Genre3 = null;
                String video3 = null;
                
                Connection conn3 = null;
                PreparedStatement pstm3 = null;
                ResultSet rs3 = null;
                try {
                    String url = "jdbc:mysql://localhost:3306/popplay";
                    String uid = "root";
                    String upass = "30102002";
                    conn3 = DriverManager.getConnection(url, uid, upass);
                    
                    pstm3 = conn.prepareStatement("select * from movie where genre ='horror'");
                    rs3 = pstm.executeQuery();

                    while (rs3.next()) {
                        MovieId3 = rs.getString(1);
                        MovieName3 = rs.getString(3);
                        video3 = rs.getString(4);
                %>
                <div class="col-md-4">
                    <div class="card p-0" data-name="horror">
                        <video src="<%= "videos/" + rs.getString(4) %>" type="video/mp4"></video>
                        <div class="card-body">
                            <h6 class="card-title text-center"><%= MovieName3 %></h6>
                            <a href="movie1?msg=<%= video3 %>" class="btn btn-primary d-block">Watch Now</a>
                        </div>
                    </div>
                </div>
                <% }
                } catch (Exception e) { } %>
            </div>
        </div>
        
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
                    <h6 class="text-white fs-5">Follow Us On</h6>
                    <a href="#" class="fa-brands fa-facebook"></a>
                    <a href="#" class="fa-brands fa-square-twitter"></a>
                    <a href="#" class="fa-brands fa-square-instagram"></a>
                    <a href="#" class="fa-brands fa-pinterest"></a>
                </div>
            </div>
            
            <div class="text-white text-center mt-4">
                <p>All rights reserved &copy; 2024, <a href="#">PopPlay</a></p>
            </div>
        </div>
    </div>

    <script>
        // Select relevant HTML elements
        const filterButtons = document.querySelectorAll("#filter-buttons button");
        const filterableCards = document.querySelectorAll("#filterable-cards .card");

        // Function to filter cards based on filter buttons
        const filterCards = (e) => {
            document.querySelector("#filter-buttons .active").classList.remove("active");
            e.target.classList.add("active");

            filterableCards.forEach(card => {
                // show the card if it matches the clicked filter or show all cards if "all" filter is clicked
                if (card.dataset.name === e.target.dataset.filter || e.target.dataset.filter === "all") {
                    return card.classList.replace("hide", "show");
                }
                card.classList.add("hide");
            });
        }

        filterButtons.forEach(button => button.addEventListener("click", filterCards));
    </script>
</body>
</html>
     