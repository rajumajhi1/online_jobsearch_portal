<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="java.util.Date" %>
    <%@page import="java.io.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String Sstr=session.getAttribute("STR").toString();//jobseeker id
String Jjid=session.getAttribute("JID").toString();//job id

long sstr=Long.parseLong(Sstr);
long jjid=Long.parseLong(Jjid);
//FileReader reader=new FileReader(request.getParameter("resume"));
String resume=request.getParameter("resume");
//FileReader reader=new FileReader(resume);

String date=request.getParameter("date");

String url="jdbc:mysql://localhost:3306/JobPortal";
String user1="root";
String pass1="@budhadev2509";

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,user1,pass1);
	PreparedStatement ps=con.prepareStatement("insert into Applications (Resume,DOApply,JobForeign,UserForeign)values(?,?,?,?)");
	    
	    ps.setLong(4,sstr);
	    
	    ps.setLong(3,jjid);
	    ps.setString(1,resume);
	    ps.setString(2,date);
	    
	    int r=ps.executeUpdate();
 	   // dispatcher=request.getRequestDispatcher("signup.html");
 	    if(r==1){
 	    	request.setAttribute("status","success");
 	    	response.sendRedirect("JobList.jsp");
 	    }
 	    else
 	    	request.setAttribute("status","failed");
 }  
 	    
 	    
 catch(Exception e){
 	e.printStackTrace();
 }	    
%>
</body>
</html>