<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.Part" %>

<%
	String movieId   = request.getParameter("movieid");
	String movieName = request.getParameter("moviename");
	String genre     = request.getParameter("genre");
	
	Part videoPart = request.getPart("video");
	
	String fileName = videoPart.getSubmittedFileName();
	
	out.println(fileName);
	
	Connection con = null;
	PreparedStatement pstm = null;


    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/popplay","root","888888");

        
        String query = "UPDATE movie SET genre=?, movie_name=? WHERE movie_id=?";

        pstm = con.prepareStatement(query);

        pstm.setString(1, genre);
        pstm.setString(2, movieName);
        pstm.setString(3, movieId);

        int rows = pstm.executeUpdate();

        if(rows > 0) {

            response.sendRedirect("viewproduct");

        } else {

            out.println("Update failed. No record found.");
        }

    } catch(Exception e) {

        e.printStackTrace();
        out.println("Error: " + e.getMessage());

    } finally {

        if(pstm != null)
            try { pstm.close(); } catch(Exception ex) {}

        if(con != null)
            try { con.close(); } catch(Exception ex) {}
    }
%>