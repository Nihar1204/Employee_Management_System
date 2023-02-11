<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>
</head>
<body>

<%

String id=request.getParameter("Eid");
String Name=request.getParameter("Name");
String mail=request.getParameter("E_email");
String sal=request.getParameter("Salary");
String Addr=request.getParameter("Address");

try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Office","root","Nihar@123#");
        PreparedStatement ps=con.prepareStatement("update Employee set Ename=?,E_email=?,Salary=?,Address=? where Eid=? ");
                 
        
		ps.setString(1,Name);
		ps.setString(2,mail);
		ps.setString(3,sal);
		ps.setString(4,Addr);
		ps.setString(5,id);
	   
		int r=ps.executeUpdate();
	if(r==1)
	{
	  
	  response.sendRedirect("Show.jsp");
  		}
  }
catch(Exception e)
{
e.printStackTrace();
	}

%>


</body>
</html>