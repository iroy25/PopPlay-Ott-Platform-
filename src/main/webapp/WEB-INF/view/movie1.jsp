<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String video = request.getParameter("msg");
String name = (String) session.getAttribute("name");
String title = request.getParameter("title");
if(title == null) title = "Now Playing";
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>PopPlay — Watching</title>
    <link rel="icon" type="images/logo1.png" href="/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        background: #000;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        color: #f0f0f0;
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

    
    .page {
        flex: 1;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 36px 4% 60px;
        background: #000;
    }
	.player-meta.top {
    width: 100%;
    max-width: 960px;
    margin-bottom: 16px;
    display: flex;
    flex-direction: column;
    gap: 6px;
    padding: 0 4px;
	}
	
	.film-title {
	    font-size: 22px;
	    font-weight: 600;
	    color: #fff;
	    margin: 0;
	    letter-spacing: 0.3px;
	    white-space: nowrap;
	    overflow: hidden;
	    text-overflow: ellipsis;
	}
	    
    .player-outer {
        width: 100%;
        max-width: 960px;
        border-radius: 14px;
        overflow: hidden;
        background: #000;
        box-shadow: 0 24px 60px rgba(0,0,0,0.7), 0 0 0 1px rgba(255,255,255,0.06);
    }

    
    .container {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
        aspect-ratio: 16/9;
        background: #000;
        position: relative;
        overflow: hidden;
    }

    .container.fullscreen {
        max-width: 100%;
        width: 100%;
        height: 100vh;
        border-radius: 0;
        aspect-ratio: unset;
    }

    video {
        width: 100%;
        height: 100%;
        object-fit: contain;
        display: block;
    }

    
    .wrapper {
        position: absolute;
        left: 0;
        right: 0;
        bottom: -15px;
        z-index: 1;
        opacity: 0;
        transition: all 0.12s ease;
    }

    .container.show-controls .wrapper {
        opacity: 1;
        bottom: 0;
        transition: all 0.15s ease;
    }

    .wrapper::before {
        content: "";
        bottom: 0;
        width: 100%;
        z-index: -1;
        position: absolute;
        height: calc(100% + 40px);
        pointer-events: none;
        background: linear-gradient(to top, rgba(0,0,0,0.85) 0%, transparent 100%);
    }

    
    .video-timeline {
        height: 18px;
        width: 100%;
        cursor: pointer;
        display: flex;
        align-items: center;
        padding: 0 16px;
    }

    .progress-area {
        height: 4px;
        width: 100%;
        position: relative;
        background: rgba(255,255,255,0.25);
        border-radius: 4px;
        transition: height 0.15s ease;
    }

    .video-timeline:hover .progress-area {
        height: 6px;
    }

    .progress-area span {
        position: absolute;
        left: 50%;
        top: -28px;
        font-size: 12px;
        color: #fff;
        background: rgba(0,0,0,0.7);
        padding: 2px 8px;
        border-radius: 4px;
        pointer-events: none;
        transform: translateX(-50%);
        display: none;
    }

    .video-timeline:hover .progress-area span {
        display: block;
    }

    .progress-bar {
        width: 0%;
        height: 100%;
        position: relative;
        background: #db0001;
        border-radius: 4px;
        transition: width 0.05s linear;
    }

    .progress-bar::before {
        content: "";
        right: -6px;
        top: 50%;
        height: 14px;
        width: 14px;
        position: absolute;
        border-radius: 50%;
        background: #fff;
        transform: translateY(-50%);
        display: none;
        box-shadow: 0 0 0 3px rgba(219,0,1,0.4);
    }

    .video-timeline:hover .progress-bar::before {
        display: block;
    }

    /* ── CONTROL BAR ── */
    .video-controls {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 6px 16px 14px;
        list-style: none;
    }

    .options {
        display: flex;
        align-items: center;
        gap: 2px;
    }

    .options button {
        height: 38px;
        width: 38px;
        font-size: 16px;
        border: none;
        cursor: pointer;
        background: none;
        color: #ddd;
        border-radius: 6px;
        transition: background 0.15s ease, color 0.15s ease, transform 0.1s ease;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .options button:hover {
        background: rgba(255,255,255,0.1);
        color: #fff;
    }

    .options button:active {
        transform: scale(0.9);
    }

    .options button i,
    .options button span {
        font-size: 17px;
        line-height: 1;
    }

    .options button span {
        font-size: 20px;
    }

    .options input[type="range"] {
        height: 4px;
        width: 72px;
        accent-color: #db0001;
        cursor: pointer;
        margin-left: 2px;
    }

    .video-timer {
        display: flex;
        align-items: center;
        color: #ccc;
        margin-left: 8px;
        font-size: 13px;
        gap: 2px;
        white-space: nowrap;
    }

    .separator {
        color: #666;
        font-size: 14px;
    }

    .options.center { gap: 4px; }

    .options.center .play-pause {
        height: 44px;
        width: 44px;
        background: rgba(255,255,255,0.1);
        border-radius: 50%;
    }

    .options.center .play-pause:hover {
        background: rgba(219,0,1,0.8);
        color: #fff;
    }

    .options.center .play-pause i { font-size: 18px; }

    .playback-content {
        position: relative;
        display: flex;
    }

    .speed-options {
        position: absolute;
        list-style: none;
        left: 50%;
        bottom: 46px;
        width: 90px;
        transform: translateX(-50%);
        overflow: hidden;
        opacity: 0;
        border-radius: 8px;
        pointer-events: none;
        background: rgba(20,20,20,0.97);
        border: 1px solid rgba(255,255,255,0.1);
        box-shadow: 0 8px 24px rgba(0,0,0,0.5);
        transition: opacity 0.15s ease;
    }

    .speed-options.show {
        opacity: 1;
        pointer-events: auto;
    }

    .speed-options li {
        cursor: pointer;
        color: #ccc;
        font-size: 13px;
        padding: 8px 0 8px 16px;
        transition: background 0.1s ease;
    }

    .speed-options li:hover {
        background: rgba(255,255,255,0.07);
        color: #fff;
    }

    .speed-options li.active {
        color: #ff5555;
        font-weight: 500;
    }

    
    .player-meta {
        width: 100%;
        max-width: 960px;
        margin-top: 20px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 4px;
    }

    .player-meta .now-playing {
        font-size: 12px;
        color: #555;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .player-meta .back-link {
        font-size: 13px;
        color: #777;
        text-decoration: none;
        display: flex;
        align-items: center;
        gap: 6px;
        transition: color 0.2s;
    }

    .player-meta .back-link:hover {
        color: #db0001;
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
            font-size: 10px;
            max-width: 70px;
        }

        .nav-user i { font-size: 18px; }
    }

    @media (max-width: 540px) {
        .page { 
        padding: 20px 3% 40px; 
        }
        .player-outer { 
        border-radius: 10px; 
        }
        .options input[type="range"] { 
        display: none; 
        }
        .options button { 
        height: 32px; 
        width: 32px; 
        }
        .options.center .play-pause { 
        height: 38px; 
        width: 38px; 
        }
        .video-timer { 
        font-size: 11px; 
        margin-left: 4px; 
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

    
    <div class="page">
    <div class="player-meta top">
        <h1 class="film-title"><%=title%></h1>
        
    </div>
        <div class="player-outer">
            <div class="container show-controls">
                <div class="wrapper">
                    <div class="video-timeline">
                        <div class="progress-area">
                            <span>00:00</span>
                            <div class="progress-bar"></div>
                        </div>
                    </div>
                    <ul class="video-controls">
                        <li class="options left">
                            <button class="volume"><i class="fa-solid fa-volume-high"></i></button>
                            <input type="range" min="0" max="1" step="any">
                            <div class="video-timer">
                                <p class="current-time">00:00</p>
                                <p class="separator">&nbsp;/&nbsp;</p>
                                <p class="video-duration">00:00</p>
                            </div>
                        </li>
                        <li class="options center">
                            <button class="skip-backward"><i class="fas fa-backward"></i></button>
                            <button class="play-pause"><i class="fas fa-play"></i></button>
                            <button class="skip-forward"><i class="fas fa-forward"></i></button>
                        </li>
                        <li class="options right">
                            <div class="playback-content">
                                <button class="playback-speed"><span class="material-symbols-rounded">slow_motion_video</span></button>
                                <ul class="speed-options">
                                    <li data-speed="2">2x</li>
                                    <li data-speed="1.5">1.5x</li>
                                    <li data-speed="1" class="active">Normal</li>
                                    <li data-speed="0.75">0.75x</li>
                                    <li data-speed="0.5">0.5x</li>
                                </ul>
                            </div>
                            <button class="pic-in-pic"><span class="material-icons">picture_in_picture_alt</span></button>
                            <button class="fullscreen"><i class="fa-solid fa-expand"></i></button>
                        </li>
                    </ul>
                </div>

                <video>
                    <source src=<%="vfile/"+video%> type="video/mp4">
                </video>
            </div>
        </div>

        <div class="player-meta">
            <span class="now-playing">
                <i class="fa fa-circle" style="color:#db0001; font-size:8px; margin-right:6px;"></i>Now Playing
            </span>
            <a href="movielistafter" class="back-link">
                <i class="fa fa-arrow-left" style="font-size:11px;"></i> Back to Movies
            </a>
        </div>
    </div>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const navLinks = document.getElementById("navLinks");
        function showMenu() { navLinks.classList.add("open"); }
        function hideMenu() { navLinks.classList.remove("open"); }

        const container = document.querySelector(".container"),
        mainVideo = container.querySelector("video"),
        videoTimeline = container.querySelector(".video-timeline"),
        progressBar = container.querySelector(".progress-bar"),
        volumeBtn = container.querySelector(".volume i"),
        volumeSlider = container.querySelector(".left input"),
        currentVidTime = container.querySelector(".current-time"),
        videoDuration = container.querySelector(".video-duration"),
        skipBackward = container.querySelector(".skip-backward i"),
        skipForward = container.querySelector(".skip-forward i"),
        playPauseBtn = container.querySelector(".play-pause i"),
        speedBtn = container.querySelector(".playback-speed span"),
        speedOptions = container.querySelector(".speed-options"),
        pipBtn = container.querySelector(".pic-in-pic span"),
        fullScreenBtn = container.querySelector(".fullscreen i");
        let timer;

        const hideControls = () => {
            if(mainVideo.paused) return;
            timer = setTimeout(() => {
                container.classList.remove("show-controls");
            }, 3000);
        }
        hideControls();

        container.addEventListener("mousemove", () => {
            container.classList.add("show-controls");
            clearTimeout(timer);
            hideControls();
        });

        const formatTime = time => {
            let seconds = Math.floor(time % 60),
            minutes = Math.floor(time / 60) % 60,
            hours = Math.floor(time / 3600);
            seconds = seconds < 10 ? `0${seconds}` : seconds;
            minutes = minutes < 10 ? `0${minutes}` : minutes;
            hours = hours < 10 ? `0${hours}` : hours;
            if(hours == 0) return `${minutes}:${seconds}`;
            return `${hours}:${minutes}:${seconds}`;
        }

        videoTimeline.addEventListener("mousemove", e => {
            let timelineWidth = videoTimeline.clientWidth;
            let offsetX = e.offsetX;
            let percent = Math.floor((offsetX / timelineWidth) * mainVideo.duration);
            const progressTime = videoTimeline.querySelector("span");
            offsetX = offsetX < 20 ? 20 : (offsetX > timelineWidth - 20) ? timelineWidth - 20 : offsetX;
            progressTime.style.left = `${offsetX}px`;
            progressTime.innerText = formatTime(percent);
        });

        videoTimeline.addEventListener("click", e => {
            let timelineWidth = videoTimeline.clientWidth;
            mainVideo.currentTime = (e.offsetX / timelineWidth) * mainVideo.duration;
        });

        mainVideo.addEventListener("timeupdate", e => {
            let {currentTime, duration} = e.target;
            let percent = (currentTime / duration) * 100;
            progressBar.style.width = `${percent}%`;
            currentVidTime.innerText = formatTime(currentTime);
        });

        mainVideo.addEventListener("loadeddata", () => {
            videoDuration.innerText = formatTime(mainVideo.duration);
        });

        const draggableProgressBar = e => {
            let timelineWidth = videoTimeline.clientWidth;
            progressBar.style.width = `${e.offsetX}px`;
            mainVideo.currentTime = (e.offsetX / timelineWidth) * mainVideo.duration;
            currentVidTime.innerText = formatTime(mainVideo.currentTime);
        }

        volumeBtn.addEventListener("click", () => {
            if(!volumeBtn.classList.contains("fa-volume-high")) {
                mainVideo.volume = 0.5;
                volumeBtn.classList.replace("fa-volume-xmark", "fa-volume-high");
            } else {
                mainVideo.volume = 0.0;
                volumeBtn.classList.replace("fa-volume-high", "fa-volume-xmark");
            }
            volumeSlider.value = mainVideo.volume;
        });

        volumeSlider.addEventListener("input", e => {
            mainVideo.volume = e.target.value;
            if(e.target.value == 0) {
                return volumeBtn.classList.replace("fa-volume-high", "fa-volume-xmark");
            }
            volumeBtn.classList.replace("fa-volume-xmark", "fa-volume-high");
        });

        speedOptions.querySelectorAll("li").forEach(option => {
            option.addEventListener("click", () => {
                mainVideo.playbackRate = option.dataset.speed;
                speedOptions.querySelector(".active").classList.remove("active");
                option.classList.add("active");
            });
        });

        document.addEventListener("click", e => {
            if(e.target.tagName !== "SPAN" || e.target.className !== "material-symbols-rounded") {
                speedOptions.classList.remove("show");
            }
        });

        fullScreenBtn.addEventListener("click", () => {
            container.classList.toggle("fullscreen");
            if(document.fullscreenElement) {
                fullScreenBtn.classList.replace("fa-compress", "fa-expand");
                return document.exitFullscreen();
            }
            fullScreenBtn.classList.replace("fa-expand", "fa-compress");
            container.requestFullscreen();
        });

        speedBtn.addEventListener("click", () => speedOptions.classList.toggle("show"));
        pipBtn.addEventListener("click", () => mainVideo.requestPictureInPicture());
        skipBackward.addEventListener("click", () => mainVideo.currentTime -= 5);
        skipForward.addEventListener("click", () => mainVideo.currentTime += 5);
        mainVideo.addEventListener("play", () => playPauseBtn.classList.replace("fa-play", "fa-pause"));
        mainVideo.addEventListener("pause", () => playPauseBtn.classList.replace("fa-pause", "fa-play"));
        playPauseBtn.addEventListener("click", () => mainVideo.paused ? mainVideo.play() : mainVideo.pause());
        videoTimeline.addEventListener("mousedown", () => videoTimeline.addEventListener("mousemove", draggableProgressBar));
        document.addEventListener("mouseup", () => videoTimeline.removeEventListener("mousemove", draggableProgressBar));
    </script>

</body>
</html>

<jsp:include page="index_footer.jsp" />