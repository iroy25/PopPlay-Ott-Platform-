<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import ="org.springframework.ui.ModelMap" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
</head>
<body>
<%
String movieId=request.getParameter("movieId");
Connection con;
PreparedStatement pstm;
try{
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/popplay","root","30102002");
	pstm=con.prepareStatement("delete from movie where movie_id=?");
	pstm.setString(1, movieId);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("viewproduct");
}catch (Exception e){}
%>
</body>
</html>