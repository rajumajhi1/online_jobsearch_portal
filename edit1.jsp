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

String id=request.getParameter("Jid");
String Name=request.getParameter("Title");
String mail=request.getParameter("Location");
String sal=request.getParameter("Catagory");
String Addr=request.getParameter("Status");
String Description=request.getParameter("Description");
String DoP=request.getParameter("DoP");

try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
        PreparedStatement ps=con.prepareStatement("update Jobs set Title=?,Location=?,Catagory=?,Status=?,Description=?,DoP=? where Jid=? ");
                 
        
		ps.setString(1,Name);
		ps.setString(2,mail);
		ps.setString(3,sal);
		ps.setString(4,Addr);
		ps.setString(5,Description);
		ps.setString(6,DoP);
		ps.setString(7,id);
	   
		int r=ps.executeUpdate();
	if(r==1)
	{
	  
	  response.sendRedirect("OwnJobPosts.jsp");
  		}
  }
catch(Exception e)
{
e.printStackTrace();
	}

%>


</body>
</html>