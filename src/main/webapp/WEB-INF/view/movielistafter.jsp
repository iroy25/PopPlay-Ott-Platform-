r<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%String name = (String) session.getAttribute("name"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Movies — PopPlay</title>
    <link rel="icon" type="images/logo1.png" href="/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        background-color: #000;
        color: #fff;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }

    
    .header {
        height: 80px;
        width: 100%;
        background: linear-gradient(rgba(6, 5, 5, 0.758), rgba(0, 0, 0, 0.903)),
                    url(images/mcollage.png);
        background-size: cover;
        background-position: center;
        position: sticky;
        top: 0;
        z-index: 100;
        border-bottom: 1px solid #222;
    }

    nav {
        display: flex;
        width: 100%;
        height: 80px;
        padding: 0 6%;
        justify-content: space-between;
        align-items: center;
        gap: 20px;
    }

    .nav-logo img { height: 55px; }

    .nav-user {
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 6px;
        color: #ccc;
        cursor: pointer;
        text-decoration: none;
        position: relative;
    }

    .nav-user::after {
        content: '';
        position: absolute;
        bottom: -4px;
        left: 0;
        width: 0;
        height: 2px;
        background: #f44336;
        transition: width 0.4s ease;
    }

    .nav-user:hover::after { width: 100%; }

    .nav-user i { font-size: 22px; color: #ccc; }

    .nav-user span {
        font-size: 13px;
        color: #ccc;
        max-width: 120px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        font-family: 'Poppins', sans-serif;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    .nav-links {
        display: flex;
        align-items: center;
        gap: 6px;
        flex: 1;
        justify-content: flex-end;
    }

    .nav-links ul {
        list-style: none;
        display: flex;
        align-items: center;
        gap: 4px;
        margin: 0;
        padding: 0;
    }

    .nav-links ul li { position: relative; }

    .nav-links ul li a {
        color: #fff;
        font-size: 13px;
        text-decoration: none;
        padding: 6px 10px;
        display: flex;
        align-items: center;
        gap: 5px;
    }

    .nav-links ul li a i { font-size: 14px; }

    .nav-links ul li::after {
        content: '';
        width: 0;
        height: 2px;
        background: #f44336;
        display: block;
        margin: auto;
        transition: 0.4s;
    }

    .nav-links ul li:hover::after { width: 100%; }

    .btn-logout {
        display: inline-flex;
        align-items: center;
        gap: 6px;
        background: transparent;
        border: 1px solid #f44336;
        color: #fff;
        font-size: 13px;
        padding: 7px 14px;
        border-radius: 6px;
        text-decoration: none;
        transition: background 0.25s ease;
        white-space: nowrap;
        margin-left: 8px;
    }

    .btn-logout:hover { background: #f44336; color: #fff; }
    .btn-logout i { font-size: 16px; }

    .hamburger {
        display: none !important;
        background: none;
        border: none;
        color: #fff;
        font-size: 22px;
        cursor: pointer;
        padding: 4px 8px;
    }

    .close-icon {
        display: none !important;
        color: #fff;
        font-size: 22px;
        cursor: pointer;
        margin-bottom: 10px;
        align-self: flex-end;
    }

    
    .page {
        flex: 1;
        padding: 40px 6% 60px;
        background: #000;
        min-height:100vh;
    }

    
    .page-hero {
        margin-bottom: 36px;
    }

    .page-hero h1 {
        font-size: 28px;
        font-weight: 700;
        color: #fff;
        margin-bottom: 6px;
    }

    .page-hero p {
        font-size: 13px;
        color: #555;
        font-weight: 300;
    }
    .filter-row {
        display: flex;
        align-items: center;
        gap: 8px;
        margin-bottom: 32px;
        flex-wrap: wrap;
    }

    .filter-label {
        font-size: 11px;
        color: #555;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-right: 4px;
    }

    #filter-buttons button {
        border: 1px solid rgba(255,255,255,0.12);
        outline: 0;
        font-size: 13px;
        font-family: 'Poppins', sans-serif;
        font-weight: 500;
        border-radius: 20px;
        background: transparent;
        color: #aaa;
        padding: 6px 18px;
        cursor: pointer;
        transition: all 0.2s ease;
    }

    #filter-buttons button:hover {
        background: rgba(255,255,255,0.08);
        color: #fff;
        border-color: rgba(255,255,255,0.25);
    }

    #filter-buttons button.active {
        background: #db0001;
        color: #fff;
        border-color: #db0001;
    }

    
    .cards-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
        gap: 20px;
    }

    
    .movie-card-wrap.hide { 
    	display: none; 
    	}

    .movie-card {
        background: #111;
        border-radius: 14px;
        overflow: hidden;
        border: 1px solid #1e1e1e;
        transition: transform 0.25s ease, border-color 0.25s ease, box-shadow 0.25s ease;
    }

    .movie-card:hover {
        transform: translateY(-6px);
        border-color: rgba(219,0,1,0.5);
        box-shadow: 0 12px 35px rgba(219,0,1,0.15);
    }

    .movie-card video {
        width: 100%;
        height: 160px;
        object-fit: cover;
        display: block;
        background: #000;
    }

    .movie-card-body {
        padding: 14px;
    }

    .genre-badge {
        display: inline-block;
        font-size: 10px;
        font-weight: 500;
        letter-spacing: 0.8px;
        text-transform: uppercase;
        padding: 2px 8px;
        border-radius: 4px;
        background: rgba(219,0,1,0.15);
        color: #ff6666;
        margin-bottom: 8px;
    }

    .movie-card-title {
        font-size: 13px;
        font-weight: 500;
        color: #e8e8e8;
        margin-bottom: 12px;
        line-height: 1.4;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .btn-watch {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 6px;
        text-decoration: none;
        background: #db0001;
        color: #fff;
        font-size: 12px;
        font-weight: 500;
        padding: 8px;
        border-radius: 8px;
        transition: background 0.2s ease, transform 0.15s ease;
    }

    .btn-watch:hover {
        background: #f01f1f;
        color: #fff;
        transform: scale(1.02);
    }

    
    .empty-state {
        grid-column: 1 / -1;
        text-align: center;
        padding: 80px 20px;
        color: #333;
    }

    .empty-state i {
        font-size: 52px;
        margin-bottom: 16px;
        display: block;
        color: #222;
    }

    .empty-state p {
        font-size: 14px;
        font-weight: 300;
    }

    
    .section-title {
        font-size: 11px;
        font-weight: 600;
        letter-spacing: 2px;
        text-transform: uppercase;
        color: #f44336;
        margin-bottom: 20px;
        margin-top: 40px;
    }

   
    @media (max-width: 768px) {
        .hamburger { display: block; }

        nav { gap: 8px; }

        .nav-links {
            position: fixed;
            top: 0;
            right: -260px;
            width: 240px;
            height: 100vh;
            background: #111;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            padding: 24px;
            gap: 20px;
            transition: right 0.4s ease;
            z-index: 200;
        }

        .nav-links.open { right: 0; }

        .nav-links.open .close-icon { 
        display: block !important; 
        }

        .nav-links ul {
            flex-direction: column;
            align-items: flex-start;
            gap: 6px;
            width: 100%;
        }

        .nav-links ul li::after { display: none; }
        .btn-logout { margin-left: 0; }

        .nav-user span {
            font-size: 9px;
            max-width: 70px;
        }

        .cards-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 12px;
        }

        .page { padding: 30px 4% 50px; }
    }
    </style>
</head>
<body>

    
    <section class="header">
        <nav>
            <a class="nav-logo" href="index2"><img src="images/logo1.png" alt="Logo"></a>

            <div class="nav-user">
                <i class='bx bx-user-circle' style="font-size:22px;"></i>
                <span><%= name %></span>
            </div>

            <div class="nav-links" id="navLinks">
                <i class="fas fa-times close-icon" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="index2"><i class='bx bx-home'></i> HOME</a></li>
                    <li><a href="movielistafter"><i class='bx bx-movie-play'></i> MOVIE</a></li>
                    <li><a href="movielistafter"><i class='bx bx-tv'></i> SHOW</a></li>
                    <li><a href="movielistafter"><i class='bx bx-news'></i> BLOG</a></li>
                </ul>
                <a href="destroy" class="btn-logout"><i class='bx bx-log-out'></i> Log Out</a>
            </div>

            <button class="hamburger" onclick="showMenu()">
                <i class="fas fa-bars"></i>
            </button>
        </nav>
    </section>

   
    <div class="page">

        <div class="page-hero">
            <h1>Browse Movies</h1>
            <p>Stream the latest Hollywood, Bollywood &amp; Horror picks</p>
        </div>

        
        <div class="filter-row">
            <span class="filter-label">Filter</span>
            <div id="filter-buttons">
                <button class="active" data-filter="all">All</button>
                <button data-filter="holly">Hollywood</button>
                <button data-filter="bolly">Bollywood</button>
                <button data-filter="horror">Horror</button>
            </div>
        </div>

        
        <div class="cards-grid" id="filterable-cards">

        <%
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        boolean hasAny = false;

        String[][] genres = {
            {"holly",  "Hollywood"},
            {"bolly",  "Bollywood"},
            {"horror",  "Horror"}
        };

        try {
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/popplay", "root", "888888");

            for (String[] g : genres) {
                pstm = conn.prepareStatement("SELECT * FROM movie WHERE genre = ?");
                pstm.setString(1, g[0]);
                rs = pstm.executeQuery();

                while (rs.next()) {
                    hasAny = true;
                    String movieId   = rs.getString(1);
                    String movieName = rs.getString(3);
                    String video     = rs.getString(4);
        %>
            <div class="movie-card-wrap" data-name="<%= g[0] %>">
                <div class="movie-card">
                    <video src="videos/<%= video %>" muted></video>
                    <div class="movie-card-body">
                        <span class="genre-badge"><%= g[1] %></span>
                        <p class="movie-card-title"><%= movieName %></p>
                        <a href="movie1?msg=<%= video %>&title=<%= movieName %>" class="btn-watch">
                            <i class='bx bx-play-circle'></i> Watch Now
                        </a>
                    </div>
                </div>
            </div>
        <%
                }
                rs.close();
                pstm.close();
            }
            conn.close();

        } catch (Exception e) { }

        if (!hasAny) {
        %>
            <div class="empty-state">
                <i class='bx bx-movie-play'></i>
                <p>No movies found. Check back soon!</p>
            </div>
        <% } %>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const navLinks = document.getElementById("navLinks");
        function showMenu() { 
        	navLinks.classList.add("open"); 
        }
        function hideMenu() { 
        	navLinks.classList.remove("open"); 
        }

        const filterButtons = document.querySelectorAll("#filter-buttons button");
        const filterableCards = document.querySelectorAll("#filterable-cards .movie-card-wrap");

        filterButtons.forEach(btn => btn.addEventListener("click", e => {
            document.querySelector("#filter-buttons .active").classList.remove("active");
            e.target.classList.add("active");
            filterableCards.forEach(card => {
                card.classList.toggle("hide",
                    e.target.dataset.filter !== "all" && card.dataset.name !== e.target.dataset.filter
                );
            });
        }));
    </script>

</body>
</html>

<jsp:include page="index_footer.jsp" />
