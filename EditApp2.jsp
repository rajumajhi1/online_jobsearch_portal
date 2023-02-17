<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Application</title>
</head>
<body>

<%
String id1=request.getParameter("id");
String id=request.getParameter("Status");
String Name=request.getParameter("Interview");
String mail=request.getParameter("Resume");
String sal=request.getParameter("Adate");
long ID=Long.parseLong(id1);

try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
        PreparedStatement ps=con.prepareStatement("update Applications set status=?,Interview=? where id=? ");
                 
        
		ps.setString(1,id);
		ps.setString(2,Name);
		
		ps.setLong(3,ID);
		
	   
		int r=ps.executeUpdate();
	if(r==1)
	{
	  
	  response.sendRedirect("ViewApplications.jsp");
  		}
  }
catch(Exception e)
{
e.printStackTrace();
	}

%>


</body>
</html>