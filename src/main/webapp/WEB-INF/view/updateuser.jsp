<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<link rel="icon" type="images/logo1.png" href="/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'rel='stylesheet'>

<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

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

.page{
    width:100%;
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:40px 5%;
}

.form-card{
    width:100%;
    max-width:600px;
    background:#111;
    border:1px solid #1e1e1e;
    border-radius:18px;
    padding:40px;
}

.form-card h2{
    font-size:24px;
    margin-bottom:8px;
}

.subtitle{
    font-size:13px;
    color:#666;
    margin-bottom:30px;
}

.form-group{
    margin-bottom:18px;
}

.form-group label{
    display:block;
    margin-bottom:8px;
    font-size:12px;
    color:#888;
    text-transform:uppercase;
    letter-spacing:1px;
}

.form-group input{
    width:100%;
    padding:13px 15px;
    background:#1a1a1a;
    border:1px solid #2a2a2a;
    border-radius:10px;
    color:#fff;
    outline:none;
    font-size:14px;
}

.form-group input:focus{
    border-color:#f44336;
}

.btn-row{
    display:flex;
    gap:12px;
    margin-top:28px;
}

.btn-submit{
    flex:1;
    padding:13px;
    border:none;
    border-radius:10px;
    background:#db0001;
    color:#fff;
    cursor:pointer;
    font-size:14px;
    transition:0.3s;
}

.btn-submit:hover{
    background:#f01f1f;
}

.btn-reset{
    flex:1;
    padding:13px;
    border:1px solid #333;
    border-radius:10px;
    background:transparent;
    color:#aaa;
    cursor:pointer;
}

.btn-reset:hover{
    background:#1a1a1a;
    color:#fff;
}
@media (max-width: 600px) {
        .page { 
        padding: 30px 4%; 
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
}
@media (min-width: 901px) {
    .hamburger {
	        display: none;
	    }
	}

</style>

</head>
<body>
    <%
String id = request.getParameter("id");

String userid="";
String answer="";
String email="";
String name="";
String password="";
String phno="";

try{
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/popplay",
        "root",
        "888888"
    );

    PreparedStatement ps = conn.prepareStatement(
        "select * from user where id=?"
    );

    ps.setString(1,id);

    ResultSet rs = ps.executeQuery();

    if(rs.next()){
        userid = rs.getString(1);
        answer = rs.getString(2);
        email = rs.getString(3);
        name = rs.getString(4);
        password = rs.getString(5);
        phno = rs.getString(6);
    }

}catch(Exception e){
    out.println(e);
}
%>

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

                <li><a href="#" class="btn-nav">
                    <i class='bx bx-user'></i>
                    <span>Add New User</span>
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

        <h2>Update User</h2>
        <p class="subtitle">Modify existing user details</p>

        <form action="update_userdata" method="post">

    <div class="form-group">
        <label>User ID</label>
        <input type="text" name="id" value="<%=userid%>" readonly>
    </div>

    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" value="<%=name%>">
    </div>

    <div class="form-group">
        <label>Email</label>
        <input type="text" name="email" value="<%=email%>">
    </div>

    <div class="form-group">
        <label>Password</label>
        <input type="text" name="password" value="<%=password%>">
    </div>

    <div class="form-group">
        <label>Security Answer</label>
        <input type="text" name="answer" value="<%=answer%>">
    </div>

    <div class="form-group">
        <label>Phone Number</label>
        <input type="text" name="phno" value="<%=phno%>">
    </div>

    <div class="btn-row">
        <button type="submit" class="btn-submit">Update User</button>
        <button type="reset" class="btn-reset">Reset</button>
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
    </script>

</body>
</html>