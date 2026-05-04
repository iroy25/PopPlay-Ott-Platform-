<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View User Details</title>
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
        
        padding: 50px 6%;
    }

    .page-header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 30px;
        flex-wrap: wrap;
        gap: 14px;
    }

    .page-header h2 {
        font-size: 20px;
        font-weight: 600;
        color: #fff;
    }

    .page-header p {
        font-size: 12px;
        color: #555;
        margin-top: 4px;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    
    
    .table-wrap {
        width: 100%;
        overflow-x: auto;
        border-radius: 14px;
        border: 1px solid #1e1e1e;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        font-size: 14px;
    }

    thead tr {
        background: #161616;
        border-bottom: 1px solid #2a2a2a;
    }

    thead th {
        padding: 14px 18px;
        text-align: left;
        font-size: 11px;
        font-weight: 600;
        color: #555;
        text-transform: uppercase;
        letter-spacing: 1px;
        white-space: nowrap;
    }

    tbody tr {
        border-bottom: 1px solid #1a1a1a;
        transition: background 0.2s ease;
    }

    tbody tr:last-child {
        border-bottom: none;
    }

    tbody tr:hover {
        background: #141414;
    }

    tbody td {
        padding: 14px 18px;
        color: #bbb;
        vertical-align: middle;
    }

    tbody td:first-child {
        color: #fff;
        font-weight: 500;
    }

    .genre-badge {
        display: inline-block;
        padding: 3px 10px;
        border-radius: 20px;
        font-size: 11px;
        font-weight: 500;
        background: rgba(219,0,1,0.12);
        color: #f44336;
        border: 1px solid rgba(219,0,1,0.2);
    }

    .video-name {
        font-size: 12px;
        color: #555;
        font-family: monospace;
    }

    .btn-delete {
        display: inline-flex;
        align-items: center;
        gap: 5px;
        background: transparent;
        border: 1px solid #3a1a1a;
        color: #f44336;
        font-size: 12px;
        padding: 5px 12px;
        border-radius: 6px;
        text-decoration: none;
        transition: background 0.2s ease, border-color 0.2s ease;
        white-space: nowrap;
    }

    .btn-delete:hover {
        background: rgba(244,67,54,0.15);
        border-color: #f44336;
        color: #f44336;
    }
    .btn-edit {
    display: inline-flex;
    align-items: center;
    gap: 5px;
    background: transparent;
    border: 1px solid #1a2a3a;
    color: #4da6ff;
    font-size: 12px;
    padding: 5px 12px;
    border-radius: 6px;
    text-decoration: none;
    transition: background 0.2s ease, border-color 0.2s ease;
    white-space: nowrap;
    
    }

    .btn-edit:hover {
        background: rgba(77,166,255,0.12);
        border-color: #4da6ff;
        color: #4da6ff;
    }

    .empty-state {
        text-align: center;
        padding: 60px 20px;
        color: #444;
    }

    .empty-state i {
        font-size: 48px;
        margin-bottom: 16px;
        display: block;
    }
    th[colspan="2"] {
    text-align: center;
}

td:last-child,
td:nth-last-child(2) {
    text-align: center;
}

    
    @media (max-width: 600px) {
        .page { 
        padding: 30px 4%; 
        }
        .btn-nav span { 
        display: none; 
        }
        thead th, tbody td { 
        padding: 10px 12px; 
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
    th[colspan="2"] {
    text-align: center;
}

td:last-child,
td:nth-last-child(2) {
    text-align: center;
}
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
}
     @media (min-width: 901px) {
	    .hamburger {
	        display: none;
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
                <small>List of Registered Users</small>
            </div>
            <div class="nav-links" id="navLinks">
                <i class="fas fa-times close-icon" onclick="hideMenu()"></i>
                <ul>
                <li><a href="admdash" class="btn-nav btn-outline"><i class='bx bx-arrow-back'></i>
                    <span>Dashboard</span>
                </a></li>

                <li><a href="addproduct" class="btn-nav">
                    <i class='bx bx-movie-play'></i>
                    <span>Add new Movie</span>
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

        <div class="page-header">
            <div>
                <h2>Users List</h2>
                <p>All users &amp; clients</p>
            </div>
            
                <input type="text" name="search" placeholder="Search by name / email / id"
                    style="padding:8px 12px; border-radius:6px; border:1px solid #333; background:#111; color:#fff; outline:none;">
                
                <button type="submit" style="padding:8px 14px; border:none; border-radius:6px; background:#f44336; color:#fff; cursor:pointer;">
                    <i class="bx bx-search"></i>
                </button>
          
    
    

            
        </div>

        <div class="table-wrap">
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Security Answer</th>
                        <th>Phone Number</th>
                        <th colspan="2">Action</th>
                    </tr>
                </thead>
                <tbody>

                    
                <%
                String userId = null;
                String s_ans = null;
                String email=null;
                String name=null;
                String password=null;
                String phonenum=null;
                
                Connection conn = null;
                PreparedStatement pstm = null;
                ResultSet rs = null;
                boolean hasRows = false;
                    try {
                        String url  = "jdbc:mysql://localhost:3306/popplay";
                        String uid  = "root";
                        String upass = "888888";
                        conn = DriverManager.getConnection(url, uid, upass);
                        pstm = conn.prepareStatement("SELECT * FROM user");
                        rs   = pstm.executeQuery();

                        while (rs.next()) {
                            hasRows = true;
                            userId=rs.getString(1);
                            s_ans=rs.getString(2);
                            email=rs.getString(3);
                            name=rs.getString(4);
                            password=rs.getString(5);
                            phonenum=rs.getString(6);
                %>
                    <tr>
                        <td><%= userId %></td>
                        <td><%= name %></td>
                        <td><%= email %></td>
                        <td><%= password %></td>
                        <td><%= s_ans %></td>
                        <td><%= phonenum %></td>

                        <td>
                            <a href="delete_user?id=<%= userId %>" class="btn-delete">
                                <i class='bx bx-trash'></i> Delete
                            </a>
                        
                            <a href="update_user?id=<%= userId %>" class="btn-edit">
                                <i class='bx bx-edit'></i> Edit
                            </a>
                        </td>
                        
                    </tr>
                <%
                        }
                    } catch (Exception e) { 
                    	
                    }
                    if (!hasRows) {
                %>
                    <tr>
                        <td colspan="8">
                            <div class="empty-state"><i class='bx bx-user-circle'></i>
                                No users found. 
                            </div>
                        </td>
                    </tr>
                <% } %>
                </tbody>
            </table>
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
</script>
</body>
</html>

<jsp:include page="index_footer.jsp" />