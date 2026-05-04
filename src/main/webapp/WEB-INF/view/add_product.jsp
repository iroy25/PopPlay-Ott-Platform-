<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Adding new Movie</title>
    <link rel="icon" type="images/logo1.png" href="/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
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
        min-height: 100vh;
        background: #0a0a0a;
        color: #fff;
        display: flex;
        flex-direction: column;
    }

   
    .header {
        height: 80px;
        width: 100%;
        background: linear-gradient(rgba(0,0,0,0.758), rgba(0,0,0,0.903)),
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
        gap: 16px;
        position: relative;
    }
	.nav-logo {
    flex: 1;   
}
    .nav-logo img {
        height: 55px;
        cursor: pointer;
    }

    .nav-links {
        display: flex;
        align-items: center;
        gap: 8px;
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
    .nav-center {
        display: flex;
        flex-direction: column;
        align-items: center;
        position: absolute;   
    	left: 50%;            
    	transform: translateX(-50%); 
    }

    .nav-center span {
        font-size: 16px;
        font-weight: 600;
        color: #fff;
        letter-spacing: 1px;
    }

    .nav-center small {
        font-size: 10px;
        color: #aaa;
        letter-spacing: 2px;
        text-transform: uppercase;
    }

    .btn-nav {
        display: inline-flex;
        align-items: center;
        gap: 6px;
        background: transparent;
        border: none;
        color: #ccc;
        font-size: 13px;
        padding: 7px 14px;
        border-radius: 6px;
        text-decoration: none;
        transition: background 0.25s ease, color 0.25s ease;
        white-space: nowrap;
        cursor: pointer;
        font-family: 'Poppins', sans-serif;
    }

    .btn-nav:hover {
        background: rgba(255,255,255,0.08);
        color: #fff;
    }

    .btn-nav.btn-outline {
        border: 1px solid #444;
        color: #aaa;
    }

    .btn-nav.btn-outline:hover {
        border-color: #666;
        color: #fff;
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
        cursor: pointer;
    }

    .btn-logout:hover {
        background: #f44336;
        color: #fff;
    }

    .btn-logout i {
        font-size: 15px;
    }

    
    .page {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: flex-start;
        padding: 50px 6%;
        min-height: calc(100vh - 80px);
    }

   
    .form-card {
        width: 100%;
        max-width: 560px;
        background: #111;
        border: 1px solid #1e1e1e;
        border-radius: 18px;
        padding: 40px;
        min-height: 520px;
    }

    .form-card h2 {
        font-size: 22px;
        font-weight: 600;
        margin-bottom: 6px;
        color: #fff;
    }

    .form-card .subtitle {
        font-size: 13px;
        color: #555;
        margin-bottom: 32px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        font-size: 12px;
        font-weight: 500;
        color: #888;
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-bottom: 8px;
    }

    .form-group input[type="text"],
    .form-group select {
        width: 100%;
        padding: 12px 16px;
        background: #1a1a1a;
        border: 1px solid #2a2a2a;
        border-radius: 10px;
        color: #fff;
        font-size: 14px;
        font-family: 'Poppins', sans-serif;
        outline: none;
        transition: border-color 0.25s ease;
    }

    .form-group input[type="text"]:focus,
    .form-group select:focus {
        border-color: #f44336;
    }

    .form-group input[type="text"]::placeholder {
        color: #444;
    }

    .form-group select option {
        background: #1a1a1a;
        color: #fff;
    }

   
    .file-label {
        display: flex;
        align-items: center;
        gap: 12px;
        padding: 14px 16px;
        background: #1a1a1a;
        border: 1px dashed #2a2a2a;
        border-radius: 10px;
        cursor: pointer;
        transition: border-color 0.25s ease;
        font-size: 13px;
        color: #555;
    }

    .file-label:hover {
        border-color: #f44336;
        color: #aaa;
    }

    .file-label i {
        font-size: 20px;
        color: #f44336;
    }

    .file-label input[type="file"] {
        display: none;
    }
    .file-name-display {
    font-size: 12px;
    color: #4caf50;
    margin-top: 8px;
    padding-left: 4px;
    min-height: 20px;    
}

    .btn-row {
        display: flex;
        gap: 12px;
        margin-top: 28px;
    }

    .btn-submit {
        flex: 1;
        padding: 12px 0;
        background: #db0001;
        color: #fff;
        border: none;
        border-radius: 10px;
        font-size: 14px;
        font-weight: 500;
        cursor: pointer;
        font-family: 'Poppins', sans-serif;
        transition: background 0.25s ease;
    }

    .btn-submit:hover {
        background: #f01f1f;
    }

    .btn-reset {
        flex: 1;
        padding: 12px 0;
        background: transparent;
        color: #aaa;
        border: 1px solid #333;
        border-radius: 10px;
        font-size: 14px;
        font-weight: 500;
        cursor: pointer;
        font-family: 'Poppins', sans-serif;
        transition: background 0.25s ease, color 0.25s ease;
    }

    .btn-reset:hover {
        background: #1a1a1a;
        color: #fff;
    }

    .alert-msg {
    padding: 12px 16px;
    border-radius: 10px;
    font-size: 13px;
    margin-bottom: 10px;
    text-align: center;
    display: none;
	}
	.alert-msg.success {
	background: rgba(76, 175, 80, 0.15);
    border: 1px solid #4caf50;
    color: #4caf50;
	}
	.alert-msg.error {
	    background: rgba(244, 67, 54, 0.15);
	    border: 1px solid #f44336;
	    color: #f44336;
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

    @media (max-width: 600px) {
        .page { 
            padding: 30px 4%; 
        }
        .form-card { 
            padding: 28px 22px; 
        }
        .btn-nav span { 
            display: none; 
        }
        .hamburger {
            display: block;  
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
    .nav-links ul li a span {
        display: none;  
    }

    .btn-logout {
        margin-left: 0;
    }
    .nav-links.open ul li a span {
        display: inline;      
    }

    .nav-links.open .btn-logout span {
        display: inline;      
    }
    
     @media (max-width: 900px) {
    .hamburger {
        display: block;
    }

    .nav-center {
        display: none;   
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

    .nav-links ul li a span {
        display: inline;   
    }

    .btn-logout {
        margin-left: 0;
    }
    @media (min-width: 901px) {
	    .hamburger {
	        display: none;
	    }
	}

    }

    </style>
</head>
<body>
	<section class="header">
        <nav>
            <a class="nav-logo" href="admdash"><img src="images/logo1.png" alt="Logo"></a>
			<div class="nav-center">
                <span>PopPlay</span>
                <small>Adding new Movie</small>
            </div>
            
            <div class="nav-links" id="navLinks">
                <i class="fas fa-times close-icon" onclick="hideMenu()"></i>
                <ul>
                <li><a href="admdash" class="btn-nav btn-outline"><i class='bx bx-arrow-back'></i>
                    <span>Dashboard</span>
                </a></li>

                <li><a href="viewproduct" class="btn-nav">
                    <i class='bx bx-movie-play'></i>
                    <span>View Movie List</span>
                </a></li>
                <li><a href="admlogin" class="btn-logout">
                    <i class='bx bx-log-out'></i> Log Out
                </a></li>
                </ul>
            </div>
            <button class="hamburger" onclick="showMenu()">
                <i class="fas fa-bars"></i>
            </button>
        </nav>
    </section>

    
    <div class="page">
        <div class="form-card">
            <h2>Add New Movie</h2>
            <p class="subtitle">Upload a new movie or show to the platform</p>
			<div class="alert-msg-wrap">
                <div class="alert-msg" id="alertBox"></div>
            </div>
		     <form action="prod" method="post" enctype="multipart/form-data">
            
                <div class="form-group">
                    <label>Movie ID</label>
                    <input type="text" name="movieid" placeholder="e.g. MOV001">
                </div>

                <div class="form-group">
                    <label>Movie Name</label>
                    <input type="text" name="moviename" placeholder="e.g. Inception">
                </div>

                <div class="form-group">
                    <label>Genre</label>
                    <select name="genre">
                        <option value="" disabled selected>Select a genre</option>
                        <option value="holly">Hollywood</option>
                        <option value="bolly">Bollywood</option>
                        <option value="horror">Horror</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Video File</label>
                    <div class="file-label" onclick="document.getElementById('videoInput').click()">
                        <i class='bx bx-upload'></i>
                        <span id="file-chosen">Click to select video file</span>
                        <input type="file" name="video" id="videoInput" style="display:none">
                    </div>
                    <p id="file-name-display"></p>
                </div>

				<div class="btn-row">
                    <button type="submit" class="btn-submit">Upload Product</button>
                    <button type="reset" class="btn-reset">Clear</button>
                </div>

            </form>
        </div>
    </div>

	<script>
        const navLinks = document.getElementById("navLinks");
        function showMenu() { 
            navLinks.classList.add("open"); 
        }
        function hideMenu() { 
            navLinks.classList.remove("open"); 
        }

        document.getElementById('videoInput').addEventListener('change', function() {
            const fileName = this.files[0] ? this.files[0].name : '';
            document.getElementById('file-chosen').textContent = fileName || 'Click to select video file';
            document.getElementById('file-name-display').textContent = fileName ? 'Selected: ' + fileName : '';
        });
    
        function clearFile() {
            document.getElementById('videoInput').value = '';
            document.getElementById('file-chosen').textContent = 'Click to select video file';
            document.getElementById('file-name-display').textContent = '';
        }
    
        window.onload = function() {
            const msg = '${msg}';
            const msgType = '${msgType}';
            if (msg && msg.trim() !== '') {
                const box = document.getElementById('alertBox');
                box.style.display = 'block';
                box.className = 'alert-msg ' + msgType;
                box.textContent = msg;
            }
        };
    </script>
</body>
</html>

<jsp:include page="index_footer.jsp" />