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
	String sid=request.getParameter("SId");
	long Sid=Long.parseLong(sid);
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
	PreparedStatement ps=con.prepareStatement("delete from JobSeeker where SId=?");
	ps.setLong(1,Sid);
	int r=ps.executeUpdate();
	if(r==1)
	{
		response.sendRedirect("index.jsp");
	}
	else
	{
		response.sendRedirect("ViewOwnProfile.jsp");
	}
}
catch(Exception e)
{
e.printStackTrace();
response.sendRedirect("UserDash.jsp");
}
%>

</body>
</html>