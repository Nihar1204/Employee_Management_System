<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%
    String name=request.getParameter("name");
    String mail=request.getParameter("mail");
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office","root","Nihar@123#");
    	PreparedStatement ps=con.prepareStatement("insert into Admin(Name,Email,Uname,Pass)values(?,?,?,?)");
    			
    	ps.setString(1, name);
    	ps.setString(2, mail);
    	ps.setString(3, uname);
    	ps.setString(4, pass);
    	int r=ps.executeUpdate();
    	if(r==1)
    	{
    		response.sendRedirect("Login.html");
    	}
    	else{
    		out.println("Not Inserted");
    		response.sendRedirect("Register.html");
    	}
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    %>
