<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>

    <%
    String url="jdbc:mysql://localhost:3306/office";
    String user1="root";
    String pass1="Nihar@123#";
    
    String name1=request.getParameter("name");
    String address=request.getParameter("add");  
    String sal=request.getParameter("sal");
    String email=request.getParameter("email");
   
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection(url,user1,pass1);
    	PreparedStatement ps=con.prepareStatement("insert into Employee (Ename,E_email,Salary,Address)values(?,?,?,?)");
    	    ps.setString(1,name1);
    	    ps.setString(2,email);
    	    ps.setString(3,sal);
    	    ps.setString(4,address);
    	   
    	   
    	   
    	    int r=ps.executeUpdate();
    	    if(r==1){
    	    	//out.print("data inserted succesfully");
    	    	response.sendRedirect("AddEmp.html");
    	    }
    }  
    	    
    	    
    catch(Exception e){
    	e.printStackTrace();
    	
    	response.sendRedirect("AddEmp.html");
    }	    
    
    %>