<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <% 
	String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office","root","Nihar@123#");
    	PreparedStatement ps=con.prepareStatement("select * from Admin where Uname=? AND Pass=?");
    			
    	
    	ps.setString(1, uname);
    	ps.setString(2, pass);
    	ResultSet rs=ps.executeQuery();
    	while(rs.next())
    	{
    		session.setAttribute("Uname", uname);
    		response.sendRedirect("Dashboard.html");
    	}
    	
    
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    
    %>