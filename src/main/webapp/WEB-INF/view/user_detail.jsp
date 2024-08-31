<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>User Details</title>
        
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
    
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
                <tr>

                    <th><center>UserId</center></th>
                    <th><center>Security Answer</center></th>
                    <th><center>Email</center></th>
                    <th><center>Name</center></th>
                    <th><center>Password</center></th>
                    <th><center>Phone Number</center></th>
                    
                    </tr>
                 
                              
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
 try {
	 String url="jdbc:mysql://localhost:3306/popplay";
		String uid="root";
		String upass="30102002";
		conn=DriverManager.getConnection(url,uid,upass);
pstm = conn.prepareStatement("select *from user");
rs = pstm.executeQuery();

while (rs.next()) {
    userId=rs.getString(1);
    s_ans=rs.getString(2);
    email=rs.getString(3);
    name=rs.getString(4);
    password=rs.getString(5);
    phonenum=rs.getString(6);


out.println("<tr>");


out.println("<td>");
out.println(userId);
out.println("</td>");

out.println("<td>");
out.println(s_ans);
out.println("</td>");

out.println("<td>");
out.println(email);
out.println("</td>");

out.println("<td>");
out.println(name);
out.println("</td>");

out.println("<td>");
out.println(password);
out.println("</td>");

out.println("<td>");
out.println(phonenum);
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