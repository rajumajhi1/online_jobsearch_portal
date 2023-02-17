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
String id1=request.getParameter("Sid");
String id=request.getParameter("Name");
String Name=request.getParameter("Mobile");
String mail=request.getParameter("Email");
String sal=request.getParameter("Address");
String Addr=request.getParameter("Gender");
String Description=request.getParameter("State");
String DoP=request.getParameter("UserName");
String Pass=request.getParameter("Password");
String DOR=request.getParameter("DOR");

try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
        PreparedStatement ps=con.prepareStatement("update JobSeeker set SName=?,Mobile=?,SEmail=?,Address=?,Gender=?,State=?,Uname=?,PassWord=?,DOR=? where Sid=? ");
                 
        
		ps.setString(1,id);
		ps.setString(2,Name);
		ps.setString(3,mail);
		ps.setString(4,sal);
		ps.setString(5,Addr);
		ps.setString(6,Description);
		ps.setString(7,DoP);
		ps.setString(8,Pass);
		ps.setString(9,DOR);
		ps.setString(10,id1);
	   
		int r=ps.executeUpdate();
	if(r==1)
	{
	  
	  response.sendRedirect("ViewOwnProfile.jsp");
  		}
  }
catch(Exception e)
{
e.printStackTrace();
	}

%>


</body>
</html>