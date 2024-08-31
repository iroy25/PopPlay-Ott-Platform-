<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
  
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Product Table</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <style>
            
        * {
        margin: 0;
        padding: 0;
        }
    
    body {
        height:100%;
        background: white;
        width:100%;

    }
    
    .header {
                width: 100%;
                padding: 10px 8%;
                background-image: linear-gradient(rgba(0, 0, 0, 0.758), rgba(0, 0, 0, 0.903)), url(images/mcollage.png);
                background-size: cover;
                background-position: center;
            }
            nav {
                display: flex;
                align-items: center;
                justify-content: space-between;
                color: white;
                height: 100px; /* Adjust height as needed */
            }
            .logo {
                cursor: pointer;
                width: 150px;
            }
            .nav-links {
                display: flex;
                align-items: center;
            }
            .nav-links a {
                margin-left: 20px;
                text-decoration: none;
                color: white;
                font-size: 16px;
                padding: 10px 20px;
                border-radius: 4px;
                background-color: #db0001;
                transition: background-color 0.3s, transform 0.3s;
            }
            .nav-links a:hover {
                background-color: #ff6347;
                transform: scale(1.1);
            }
            h3 {
                margin: 0;
                font-size: 24px;
                line-height: 1.5;
            }
    
  
  @media only screen and (max-width: 600px) {
    .logo{
        width: 100px;
    }
    .navbar {
        padding: 10px;
        height: auto;
    }
}
    </style>
    <body>
    	<form action="viewproduct"  method="post" enctype="multipart/form-data" >
            <body>
                <form action="udetail"  method="post" enctype="multipart/form-data" >
                        <div class="header">
                    <nav>
                        <img src="images/logo1.png" class="logo">
                        <div>
                            <h3><center>Product List</center></h3>	            
                            <div class="nav-links">
                                <a href="addproduct">Add Product</a>
                                <a href="admlogin">Log Out</a>
                            </div>
                    </nav>
                </div>
                <hr>
                <center>
        
        
        
        
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
                <tr>

                    <th><center>MovieId</center></th>
                    <th><center>Genre</center></th>
                    <th><center>Name</center></th>
                    <th><center>video</center></th>
                    <th><center>Operation</center></th>
                    
                    </tr>
                 
                              
            <% 
       
        String movieId = null;
        String Genre = null;
        String name=null;
        String video=null;
        
 Connection conn = null;
 PreparedStatement pstm = null;
 ResultSet rs = null;
 try {
	 String url="jdbc:mysql://localhost:3306/popplay";
		String uid="root";
		String upass="30102002";
		conn=DriverManager.getConnection(url,uid,upass);
pstm = conn.prepareStatement("select *from movie");
rs = pstm.executeQuery();

while (rs.next()) {
movieId=rs.getString(1);
Genre=rs.getString(2);
name=rs.getString(3);
video=rs.getString(4);


out.println("<tr>");


out.println("<td>");
out.println(movieId);
out.println("</td>");

out.println("<td>");
out.println(Genre);
out.println("</td>");

out.println("<td>");
out.println(name);
out.println("</td>");

out.println("<td>");
out.println(video);
out.println("</td>");




out.println("<td>");
out.println("<a href='deleteproduct?movieId=" + movieId + "'><div class='btn btn-danger'>Delete</div></a>");

out.println("</td>");

out.println("</tr>");
}

} catch (Exception e) {
}

%>
                    
                
            

            </table>
            </form>
        </div>
        </center>
        </body>
        </html>