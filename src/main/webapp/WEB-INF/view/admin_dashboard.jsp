<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>
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
        gap: 20px;
    }

    .nav-logo img {
        height: 55px;
        cursor: pointer;
    }

    .nav-center {
        display: flex;
        flex-direction: column;
        align-items: center;
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
        font-size: 16px;
    }

    /* ── PAGE ── */
    .page {
        flex: 1;
        padding: 50px 6%;
        min-height:100vh;
    }

    .page-title {
        font-size: 13px;
        font-weight: 500;
        color: #555;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 32px;
    }

   
    .dashboard-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
        gap: 96px;
    }

    .dash-card {
        background: #111;
        border: 1px solid #1e1e1e;
        border-radius: 16px;
        padding: 30px 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 16px;
        text-decoration: none;
        color: #fff;
        transition: transform 0.3s ease, border-color 0.3s ease, background 0.3s ease;
        cursor: pointer;
    }

    .dash-card:hover {
        transform: translateY(-6px);
        border-color: #f44336;
        background: #1a1a1a;
        color: #fff;
    }

    .dash-card .icon-wrap {
        width: 64px;
        height: 64px;
        border-radius: 16px;
        background: rgba(219, 0, 1, 0.1);
        border: 1px solid rgba(219, 0, 1, 0.2);
        display: flex;
        align-items: center;
        justify-content: center;
        transition: background 0.3s ease;
    }

    .dash-card:hover .icon-wrap {
        background: rgba(219, 0, 1, 0.2);
    }

    .dash-card .icon-wrap i {
        font-size: 28px;
        color: #f44336;
    }

    .dash-card .card-label {
        font-size: 14px;
        font-weight: 500;
        color: #ccc;
        text-align: center;
    }

    .dash-card:hover .card-label {
        color: #fff;
    }

    .dash-card .card-desc {
        font-size: 11px;
        color: #555;
        text-align: center;
        line-height: 1.5;
    }

    
    @media (max-width: 600px) {
        .nav-center small { display: none; }
        .page { padding: 30px 4%; }
        .dashboard-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 14px;
        }
        .dash-card { padding: 20px 14px; }
        .dash-card .icon-wrap { width: 52px; height: 52px; border-radius: 12px; }
        .dash-card .icon-wrap i { font-size: 22px; }
    }
    </style>
</head>
<body>

    
    <section class="header">
        <nav>
            <a class="nav-logo" href="admlogin"><img src="images/logo1.png" alt="Logo"></a>

            <div class="nav-center">
                <span>PopPlay</span>
                <small>Admin Dashboard</small>
            </div>

            <a href="login" class="btn-logout">
                <i class='bx bx-log-out'></i> Log Out
            </a>
        </nav>
    </section>

    
    <div class="page">
        <p class="page-title">Manage</p>
        <div class="dashboard-grid">

            <a href="addproduct" class="dash-card">
                <div class="icon-wrap">
                    <i class='bx bx-plus-circle'></i>
                </div>
                <div class="card-label">Add Movie</div>
                <div class="card-desc">Upload new movies or shows to the platform</div>
            </a>

            <a href="viewproduct" class="dash-card">
                <div class="icon-wrap">
                    <i class='bx bx-movie-play'></i>
                </div>
                <div class="card-label">View Movie List</div>
                <div class="card-desc">Browse and manage all uploaded content</div>
            </a>

            <a href="view_user" class="dash-card">
                <div class="icon-wrap">
                    <i class='bx bx-group'></i>
                </div>
                <div class="card-label">View Users</div>
                <div class="card-desc">See all registered users and their details</div>
            </a>

            <a href="#" class="dash-card">
                <div class="icon-wrap">
                    <i class='bx bx-message-square-detail'></i>
                </div>
                <div class="card-label">View Feedback</div>
                <div class="card-desc">Read feedback submitted by users</div>
            </a>

            <a href="#" class="dash-card">
                <div class="icon-wrap">
                    <i class='bx bx-message-square-detail'></i>
                </div>
                <div class="card-label">View Contact</div>
                <div class="card-desc">Read contact submitted by others</div>
            </a>

            <a href="#" class="dash-card">
                <div class="icon-wrap">
                    <i class='bx bx-message-square-detail'></i>
                </div>
                <div class="card-label">View Details</div>
                <div class="card-desc">Details only</div>
            </a>

        </div>
    </div>

</body>
</html>

<jsp:include page="index_footer.jsp" />