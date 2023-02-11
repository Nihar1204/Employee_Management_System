<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Employee</title>
<link rel="shortcut icon" type="image" href="java.png">
  <link rel="stylesheet" href="Show.css">
 <!-- bootstrap link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.+min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <!-- bootstrap link -->
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kanit&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	 <section id="Home">
    <div id="cantainer-background">
        <nav class="navbar navbar-expand-md" id="navbar-color">
            <!-- Brand -->
            <a class="navbar-brand" href="index.html" id="logo-color"><i><img src="java.png" alt=""></i><span style="color: red;">Emp</span>loyee</a>
          
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
              
            </button>
          
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="#Home" id="first">Show Employee Data</a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="Dashboard.html">Dashboard</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="AddEmp.html">Add Employee</a>
                </li>
                 <li class="nav-item">
              <a class="nav-link" href="Logout.jsp">Logout</a>
            </li>
              </ul>
            </div>
          </nav>
	</div>
	</section>
<br><br><br><br><br><br><br>
<h1 style="text-align:center">REGISTRATED EMPLOYEE DATA</h1>
<%
			Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Office","root","Nihar@123#");
	        PreparedStatement ps=con.prepareStatement("select * from Employee");
	        ResultSet rs=ps.executeQuery();
		%>

	<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Salary</th>
      <th scope="col">Address</th>
    </tr>
  </thead>
  
   <%
		while(rs.next())
		{
			String Eid=rs.getString(1);
		%>          
  
  <tbody>
    <tr>
      
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(5)%></td><td><a href="edit.jsp?Eid=<%=Eid%>" style="text-decoration:none">EDIT</a></td>
					<td><a href="Delete.jsp?Eid=<%=Eid%>" style="text-decoration:none">DELETE</a></td>
    </tr>
   
  </tbody>
  <%}%>
</table>
</body>
</html>