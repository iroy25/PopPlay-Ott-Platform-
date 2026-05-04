<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Movie — PopPlay</title>
    <link rel="icon" type="images/logo1.png" href="/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
    * { 
	    margin:0; 
	    padding:0; 
	    box-sizing:border-box; 
	    font-family:'Poppins',sans-serif; 
    }
    body { 
    min-height:100vh; 
    background:#0a0a0a; 
    color:#fff; 
    display:flex; 
    flex-direction:column; 
    }
    

    .header {
        height:80px; 
        width:100%;
        background: linear-gradient(rgba(0,0,0,0.758),rgba(0,0,0,0.903)), url(images/mcollage.png);
        background-size:cover; 
        background-position:center;
        position:sticky; 
        top:0; 
        z-index:100; 
        border-bottom:1px solid #222;
    }
    nav {
        display:flex; 
        width:100%; 
        height:80px; 
        padding:0 6%;
        justify-content:space-between; 
        align-items:center; 
        gap:16px; 
        position:relative;
    }
    .nav-logo img { 
    height:55px; 
    cursor:pointer; }
    .nav-center {
        display:flex; 
        flex-direction:column; 
        align-items:center;
        position:absolute; 
        left:50%; 
        transform:translateX(-50%);
    }
    .nav-center span { 
	    font-size:16px; 
	    font-weight:600; 
	    color:#fff; 
	    letter-spacing:1px; 
    }
    .nav-center small { 
	    font-size:10px; 
	    color:#aaa; 
	    letter-spacing:2px; 
    	text-transform:uppercase; }
    .nav-links { 
	    display:flex; 
	    align-items:center; 
	    gap:8px; flex:1; 
	    justify-content:flex-end; 
    }
    .nav-links ul { 
	    list-style:none; 
	    display:flex; 
	    align-items:center; 
	    gap:4px; 
	    margin:0; 
	    padding:0; }
    .nav-links ul li a {
        color:#fff; 
        font-size:13px; 
        text-decoration:none;
        padding:6px 10px; 
        display:flex; 
        align-items:center; 
        gap:5px;
    }
    .btn-nav {
        display:inline-flex; 
        align-items:center; 
        gap:6px; 
        background:transparent;
        border:none; 
        color:#ccc; 
        font-size:13px; 
        padding:7px 14px; 
        border-radius:6px;
        text-decoration:none; 
        transition:background .25s,color .25s; 
        white-space:nowrap;
    }
    .btn-nav:hover { 
    background:rgba(255,255,255,.08); 
    color:#fff; 
    }
    .btn-nav.btn-outline { 
    border:1px solid #444; 
    color:#aaa; 
    }
    .btn-nav.btn-outline:hover { 
    border-color:#666; 
    color:#fff; 
    }
    .btn-logout {
        display:inline-flex; 
        align-items:center; 
        gap:6px; 
        background:transparent;
        border:1px solid #f44336; 
        color:#fff; font-size:13px; 
        padding:7px 14px;
        border-radius:6px; 
        text-decoration:none; 
        transition:background .25s; 
        white-space:nowrap;
    }
    .btn-logout:hover { 
    background:#f44336; }

    .page { 
    flex:1; 
    display:flex; 
    justify-content:center; 
    align-items:flex-start; 
    padding:50px 6%; }

    .form-card {
        width:100%; 
        max-width:560px; 
        background:#111;
        border:1px solid #1e1e1e; 
        border-radius:18px; 
        padding:40px;
    }
    .form-card h2 { 
    font-size:22px; 
    font-weight:600; 
    margin-bottom:6px; }
    .form-card .subtitle { 
    font-size:13px; 
    color:#555; 
    margin-bottom:32px; }

    .form-group { 
    margin-bottom:20px; }
    .form-group label {
        display:block; 
        font-size:12px; 
        font-weight:500; 
        color:#888;
        text-transform:uppercase; 
        letter-spacing:1px; 
        margin-bottom:8px;
    }
    .form-group input[type="text"],
    .form-group select {
        width:100%; 
        padding:12px 16px; 
        background:#1a1a1a; 
        border:1px solid #2a2a2a;
        border-radius:10px; 
        color:#fff; 
        font-size:14px; 
        outline:none; 
        transition:border-color .25s;
    }
    .form-group input[type="text"]:focus,
    .form-group select:focus { 
    border-color:#f44336; 
    }
    .form-group input::placeholder { 
    color:#444; 
    }
    .form-group select option { 
    background:#1a1a1a; 
    color:#fff; }
    .form-group input[readonly] { 
    color:#555; 
    cursor:not-allowed; }

    .file-label {
        display:flex; 
        align-items:center; gap:12px; 
        padding:14px 16px;
        background:#1a1a1a; 
        border:1px dashed #2a2a2a; 
        border-radius:10px;
        cursor:pointer; 
        transition:border-color .25s; 
        font-size:13px; 
        color:#555;
    }
    .file-label:hover { 
    border-color:#f44336; 
    color:#aaa; }
    .file-label i { 
    font-size:20px; 
    color:#f44336; 
    }
    .file-hint { 
    font-size:11px;
     color:#444; 
     margin-top:6px; 
     padding-left:4px; 
}
    .file-name-display { 
    font-size:12px; 
    color:#4caf50; 
    margin-top:8px; 
    padding-left:4px; 
    min-height:20px; 
    }

    .btn-row { 
    display:flex; 
    gap:12px; 
    margin-top:28px; }
    .btn-submit {
        flex:1; 
        padding:12px 0; 
        background:#db0001; 
        color:#fff; 
        border:none;
        border-radius:10px; 
        font-size:14px; 
        font-weight:500; cursor:pointer; 
        transition:background .25s;
    }
    .btn-submit:hover { 
    background:#f01f1f; 
    }
    .btn-reset {
        flex:1; 
        padding:12px 0; 
        background:transparent; 
        color:#aaa; border:1px solid #333;
        border-radius:10px; 
        font-size:14px; 
        font-weight:500; 
        cursor:pointer; 
        transition:background .25s,color .25s;
    }
    .btn-reset:hover { 
    background:#1a1a1a; 
    color:#fff; 
    }
    </style>


</head>
<body>
<%
    String movieId   = request.getParameter("movieid");
    String movieName = "";
    String genre     = "";

    Connection con = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/popplay",
            "root",
            "888888"
        );

        
        pstm = con.prepareStatement(
            "SELECT * FROM movie WHERE movie_id=?"
        );

        pstm.setString(1, movieId);

        rs = pstm.executeQuery();

        if(rs.next()) {

            
            movieName = rs.getString("movie_name");
            genre = rs.getString("genre");
        }

    } catch(Exception e) {
        e.printStackTrace();
    } finally {

        if(rs != null)
            try { rs.close(); } catch(Exception ex) {}

        if(pstm != null)
            try { pstm.close(); } catch(Exception ex) {}

        if(con != null)
            try { con.close(); } catch(Exception ex) {}
    }
%>
<section class="header">
    <nav>
        <a class="nav-logo" href="admdash"><img src="images/logo1.png" alt="Logo"></a>
        <div class="nav-center">
            <span>PopPlay</span>
            <small>Update Movie</small>
        </div>
        <div class="nav-links">
            <ul>
                <li><a href="admdash" class="btn-nav btn-outline"><i class='bx bx-arrow-back'></i> Dashboard</a></li>
                <li><a href="viewproduct" class="btn-nav"><i class='bx bx-movie-play'></i> View Movies</a></li>
                <li><a href="admlogin" class="btn-logout"><i class='bx bx-log-out'></i> Log Out</a></li>
            </ul>
        </div>
    </nav>
</section>

<div class="page">
    <div class="form-card">
        <h2>Update Movie</h2>
        <p class="subtitle">Edit the details below and save changes</p>

        <form action="upmoviedata" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>Movie ID</label>
                <input type="text" name="movieid" value="<%=movieId%>" readonly>
            </div>

            <div class="form-group">
                <label>Movie Name</label>
                <input type="text" name="moviename" placeholder="e.g. Inception" value="<%=movieName%>">
            </div>

            <div class="form-group">
                <label>Genre</label>
                <select name="genre">
                    <option value="" disabled>Select a genre</option>
                    <option value="holly"  <%="holly" .equals(genre)?"selected":""%>>Hollywood</option>
                    <option value="bolly"  <%="bolly" .equals(genre)?"selected":""%>>Bollywood</option>
                    <option value="horror" <%="horror".equals(genre)?"selected":""%>>Horror</option>
                </select>
            </div>

            <div class="form-group">
                <label>Replace Video <span style="color:#444;font-weight:300;">(optional)</span></label>
                <div class="file-label" onclick="document.getElementById('videoInput').click()">
                    <i class='bx bx-upload'></i>
                    <span id="file-chosen">Click to select new video file</span>
                    <input type="file" name="video" id="videoInput" accept="video/*" style="display:none">
                </div>
                <p class="file-hint">Leave blank to keep the existing video.</p>
                <p class="file-name-display" id="file-name-display"></p>
            </div>

            <div class="btn-row">
                <button type="submit" class="btn-submit">Save Changes</button>
                <button type="reset" class="btn-reset" onclick="clearFile()">Clear</button>
            </div>

        </form>
    </div>
</div>

<script>
    document.getElementById('videoInput').addEventListener('change', function() {
        const name = this.files[0] ? this.files[0].name : '';
        document.getElementById('file-chosen').textContent = name || 'Click to select new video file';
        document.getElementById('file-name-display').textContent = name ? 'Selected: ' + name : '';
    });
    function clearFile() {
        document.getElementById('videoInput').value = '';
        document.getElementById('file-chosen').textContent = 'Click to select new video file';
        document.getElementById('file-name-display').textContent = '';
    }
</script>

</body>
</html>
<jsp:include page="index_footer.jsp" />