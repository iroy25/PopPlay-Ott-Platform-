<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String userId = request.getParameter("id");

boolean success = false;

try {
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/popplay",
        "root",
        "888888"
    );

    PreparedStatement pstm = con.prepareStatement(
        "DELETE FROM user WHERE id=?"
    );

    pstm.setString(1, userId);
    int x = pstm.executeUpdate();

    if (x > 0) {
        success = true;
    }

    con.close();

} catch(Exception e) {
    e.printStackTrace();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete user</title>

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    min-height:100vh;
    background:#0a0a0a;
    color:#fff;
    display:flex;
    justify-content:center;
    align-items:center;
}


.card{
    background:#111;
    border:1px solid #1e1e1e;
    border-radius:18px;
    padding:40px;
    text-align:center;
    max-width:420px;
    width:90%;
}

.card i{
    font-size:55px;
    margin-bottom:18px;
}

.success i{
    color:#4caf50;
}

.error i{
    color:#f44336;
}

.card h2{
    font-size:20px;
    margin-bottom:8px;
}

.card p{
    font-size:13px;
    color:#666;
    margin-bottom:25px;
}

.btn{
    display:inline-flex;
    align-items:center;
    gap:6px;
    padding:10px 18px;
    border-radius:10px;
    text-decoration:none;
    font-size:13px;
    color:#fff;
    background:#db0001;
    transition:0.3s;
}

.btn:hover{
    background:#f01f1f;
}

</style>

</head>
<body>

<% if(success) { %>

<div class="card success">
    <i class='bx bx-check-circle'></i>
    <h2>User Deleted Successfully</h2>
    <p>User ID <b><%= userId %></b> has been removed from system.</p>

    <a href="viewproduct" class="btn">
        <i class='bx bx-arrow-back'></i> Back
    </a>
</div>

<% } else { %>

<div class="card error">
    <i class='bx bx-error-circle'></i>
    <h2>Delete Failed</h2>
    <p>Unable to delete User ID <b><%= userId %></b>.</p>

    <a href="viewuser" class="btn">
        <i class='bx bx-arrow-back'></i> Back
    </a>
</div>

<% } %>

</body>
</html>

<jsp:include page="index_footer.jsp" />