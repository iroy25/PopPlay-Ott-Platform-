<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String name = (String) session.getAttribute("name"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
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

    .nav-logo img {
        height: 55px;
        cursor: pointer;
    }

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

.nav-user:hover::after {
    width: 100%;
}

.nav-user i {
    font-size: 22px;
    color: #ccc;
}

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

    .nav-links ul li {
        position: relative;
    }

    .nav-links ul li a {
        color: #fff;
        font-size: 13px;
        text-decoration: none;
        padding: 6px 10px;
        display: flex;
        align-items: center;
        gap: 5px;
    }

    .nav-links ul li a i {
        font-size: 14px;
    }

    .nav-links ul li::after {
        content: '';
        width: 0;
        height: 2px;
        background: #f44336;
        display: block;
        margin: auto;
        transition: 0.4s;
    }

    .nav-links ul li:hover::after {
        width: 100%;
    }

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

    .btn-logout:hover {
        background: #f44336;
        color: #fff;
    }

    .btn-logout i {
        font-size: 16px;
    }

    .hamburger {
    display: none;
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

header {
    min-height: calc(100vh - 80px);   
}


#carousel {
    height: calc(100vh - 80px);
    min-height: calc(100vh - 80px);
}

#carousel .carousel-inner,
#carousel .carousel-item {
    height: 100%;
    min-height: calc(100vh - 80px);
}

#carousel .carousel-item img {
    width: 100%;
    height: 100%;
    min-height: calc(100vh - 80px);
    object-fit: cover;
}
.carousel-caption-custom {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    top: 0;              
    display: flex;
    flex-direction: column;
    justify-content: flex-end;   
    padding: 0 8% 60px;
    background: linear-gradient(to top, rgba(0,0,0,0.92) 0%, rgba(0,0,0,0.5) 50%, transparent 100%);
    z-index: 10;
}
.carousel-control-prev,
.carousel-control-next {
    opacity: 0;
    transition: opacity 0.3s ease;
}

#carousel:hover .carousel-control-prev,
#carousel:hover .carousel-control-next {
    opacity: 1;
}

.now-tag {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    font-size: 11px;
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;
    color: #f44336;
    margin-bottom: 12px;
}

.now-tag i {
    font-size: 14px;
}

.carousel-caption-custom h1 {
    font-size: 52px;
    font-weight: 700;
    color: #fff;
    line-height: 1.1;
    margin-bottom: 12px;
    text-shadow: 0 2px 20px rgba(0,0,0,0.5);
}

.carousel-caption-custom p {
    font-size: 14px;
    color: #bbb;
    max-width: 480px;
    line-height: 1.7;
    margin-bottom: 24px;
    font-weight: 300;
}

.caption-btns {
    display: flex;
    align-items: center;
    gap: 12px;
    flex-wrap: wrap;
}

.btn-play {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: #db0001;
    color: #fff;
    font-size: 14px;
    font-weight: 500;
    padding: 11px 24px;
    border-radius: 8px;
    text-decoration: none;
    transition: background 0.25s ease, transform 0.2s ease;
    font-family: 'Poppins', sans-serif;
}

.btn-play:hover {
    background: #f01f1f;
    color: #fff;
    transform: scale(1.03);
}

.btn-play i {
    font-size: 18px;
}

.btn-more {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: rgba(255,255,255,0.1);
    border: 1px solid rgba(255,255,255,0.2);
    color: #fff;
    font-size: 14px;
    font-weight: 500;
    padding: 11px 24px;
    border-radius: 8px;
    text-decoration: none;
    transition: background 0.25s ease;
    font-family: 'Poppins', sans-serif;
    backdrop-filter: blur(4px);
}

.btn-more:hover {
    background: rgba(255,255,255,0.2);
    color: #fff;
}

.btn-more i {
    font-size: 18px;
}


    #UpcomingMovies {
        padding: 10px 20px 60px;
        background-color: #000;
    }

    .section-tagline {
        text-align: center;
        color: #aaa;
        font-size: 15px;
        font-weight: 300;
        letter-spacing: 0.5px;
        padding: 36px 20px 20px;
        margin: 0;
    }

    .Movies {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
        gap: 20px;
        padding: 10px 0 30px;
    }

    .movie-card {
        position: relative;
        width: 260px;
        height: 370px;
        border-radius: 18px;
        overflow: hidden;
        cursor: pointer;
        flex-shrink: 0;
        transition: transform 0.35s ease;
    }

    .movie-card:hover {
        transform: translateY(-8px);
    }

    .movie-card img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: block;
        transition: transform 0.4s ease;
    }

    .movie-card:hover img {
        transform: scale(1.07);
    }

    .movie-card .overlay {
        position: absolute;
        bottom: 0; left: 0; right: 0;
        background: linear-gradient(to top, rgba(0,0,0,0.95) 0%, rgba(0,0,0,0.5) 55%, transparent 100%);
        padding: 20px 18px 18px;
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .movie-card .category-tag {
        font-size: 10px;
        font-weight: 600;
        letter-spacing: 2.5px;
        text-transform: uppercase;
        color: #e53935;
    }

    .movie-card .card-title {
        font-size: 18px;
        font-weight: 700;
        color: #fff;
        line-height: 1.2;
    }

    .movie-card .explore-btn {
        display: inline-flex;
        align-items: center;
        gap: 7px;
        background: rgba(255,255,255,0.13);
        border: 1px solid rgba(255,255,255,0.25);
        color: #fff;
        font-size: 12px;
        font-weight: 500;
        padding: 7px 14px;
        border-radius: 50px;
        text-decoration: none;
        width: fit-content;
        transition: background 0.25s ease, border-color 0.25s ease;
    }

    .movie-card .explore-btn:hover {
        background: rgba(255,255,255,0.25);
        border-color: rgba(255,255,255,0.5);
    }

    .movie-card .explore-btn svg {
        width: 13px;
        height: 13px;
    }


    @media (max-width: 768px) {
        .carousel-caption-custom {
        padding: 0 5% 40px;
    }
    .carousel-caption-custom h1 {
        font-size: 28px;
    }
    .carousel-caption-custom p {
        font-size: 12px;
        display: none;
    }
    .btn-play, .btn-more {
        font-size: 12px;
        padding: 9px 16px;
    }

        .hamburger {
            display: block;  
        }
        nav {
        gap: 8px;
        }

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

        .nav-links.open {
            right: 0;
        }

        .nav-links.open .close-icon {
            display: block !important;  
        }

        .nav-links ul {
            flex-direction: column;
            align-items: flex-start;
            gap: 6px;
            width: 100%;
        }

        .nav-links ul li::after {
            display: none;
        }

        .btn-logout {
            margin-left: 0;
        }

        .movie-card {
            width: 85%;
            height: 320px;
        }

        .nav-user {
            display: flex; 
        }
        .nav-user span {
        font-size: 9px;
        max-width: 70px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .nav-user i {
        height: 18px;
        
    }
    }
    </style>

</head>
<body>

   
    <section class="header">
        <nav>
            <a class="nav-logo" href="index2"><img src="images/logo1.png" alt="Logo"></a>
            <div class="nav-user">
                <i class='bx bx-user-circle' style="font-size: 22px;"></i>
                <span><%=name %></span>
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

    
<header style="position: relative;">
    <div id="carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#carousel" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/Aladdin_bg.jpg" alt="Carousel 1">
                <div class="carousel-caption-custom">
                    <span class="now-tag"><i class='bx bx-trending-up'></i> Trending Now</span>
                    <h1>Aladdin</h1>
                    <p>A thrilling adventure of magic, love, and destiny in the ancient city of Agrabah.</p>
                    <div class="caption-btns">
                        <a href="movielistafter" class="btn-play">
                            <i class='bx bx-play-circle'></i> Play Now
                        </a>
                        <a href="movielistafter" class="btn-more">
                            <i class='bx bx-info-circle'></i> More Info
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/Bahubali_bg.jpg" alt="Carousel 2">
                <div class="carousel-caption-custom">
                    <span class="now-tag"><i class='bx bx-star'></i> Fan Favourite</span>
                    <h1>Baahubali</h1>
                    <p>An epic tale of war, power, and sacrifice set in the grand kingdom of Mahishmati.</p>
                    <div class="caption-btns">
                        <a href="movielistafter" class="btn-play">
                            <i class='bx bx-play-circle'></i> Play Now
                        </a>
                        <a href="movielistafter" class="btn-more">
                            <i class='bx bx-info-circle'></i> More Info
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/Bloodshot_bg.jpg" alt="Carousel 3">
                <div class="carousel-caption-custom">
                    <span class="now-tag"><i class='bx bx-bolt-circle'></i> Action Packed</span>
                    <h1>Bloodshot</h1>
                    <p>A soldier brought back to life with superhuman abilities — but who controls his mind?</p>
                    <div class="caption-btns">
                        <a href="movielistafter" class="btn-play"><i class='bx bx-play-circle'></i> Play Now</a>
                        <a href="movielistafter" class="btn-more"><i class='bx bx-info-circle'></i> More Info</a>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>
</header>

    
    <section id="UpcomingMovies">

        <p class="section-tagline">Discover a vast collection of content that caters to every taste and mood.</p>
        <div class="Movies">
            
            <div class="movie-card">
                <img src="images/lilwomen.jpg" alt="Movies">
                <div class="overlay">
                    <span class="category-tag">Featured</span>
                    <div class="card-title">Movies</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            <div class="movie-card">
                <img src="images/it.jpg" alt="StandUp Shows">
                <div class="overlay">
                    <span class="category-tag">Live</span>
                    <div class="card-title">StandUp Shows</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            <div class="movie-card">
                <img src="images/PeterRabbit.jpg" alt="Kids Section">
                <div class="overlay">
                    <span class="category-tag">Kids</span>
                    <div class="card-title">Kids Section</div>
                    <a href="#" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            <div class="movie-card">
                <img src="images/lilwomen.jpg" alt="Movies">
                <div class="overlay">
                    <span class="category-tag">Featured</span>
                    <div class="card-title">Movies</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            <div class="movie-card">
                <img src="images/it.jpg" alt="StandUp Shows">
                <div class="overlay">
                    <span class="category-tag">Live</span>
                    <div class="card-title">StandUp Shows</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            </div>

        <p class="section-tagline">Trending this week</p>
        <div class="Movies">
            <div class="movie-card">
                <img src="images/lilwomen.jpg" alt="Movies">
                <div class="overlay">
                    <span class="category-tag">Featured</span>
                    <div class="card-title">Movies</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            <div class="movie-card">
                <img src="images/it.jpg" alt="StandUp Shows">
                <div class="overlay">
                    <span class="category-tag">Live</span>
                    <div class="card-title">StandUp Shows</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            <div class="movie-card">
                <img src="images/PeterRabbit.jpg" alt="Kids Section">
                <div class="overlay">
                    <span class="category-tag">Kids</span>
                    <div class="card-title">Kids Section</div>
                    <a href="#" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            <div class="movie-card">
                <img src="images/it.jpg" alt="StandUp Shows">
                <div class="overlay">
                    <span class="category-tag">Live</span>
                    <div class="card-title">StandUp Shows</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
			<div class="movie-card">
                <img src="images/lilwomen.jpg" alt="Movies">
                <div class="overlay">
                    <span class="category-tag">Featured</span>
                    <div class="card-title">Movies</div>
                    <a href="movielistafter" class="explore-btn">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="10 8 16 12 10 16 10 8" fill="currentColor" stroke="none"/></svg>
                        Explore Now
                    </a>
                </div>
            </div>
            
        </div>

    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const navLinks = document.getElementById("navLinks");
        function showMenu() { 
            navLinks.classList.add("open"); 
        }
        function hideMenu() { 
            navLinks.classList.remove("open"); 
        }
    </script>
</body>
</html>

<jsp:include page="index_footer.jsp" />