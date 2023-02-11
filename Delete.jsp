<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String id=request.getParameter("Eid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Office","root","Nihar@123#");
	PreparedStatement ps=con.prepareStatement("delete from Employee where Eid=?");
	ps.setString(1,id);
	int r=ps.executeUpdate();
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