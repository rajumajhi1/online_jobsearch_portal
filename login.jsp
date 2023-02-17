<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

 <%
  

  String url="jdbc:mysql://localhost:3306/JobPortal";
  String user1="root";
  String pass1="@budhadev2509";
  
  
  
  String email=request.getParameter("email");
  String pass=request.getParameter("password");

  
  try{
  	Class.forName("com.mysql.cj.jdbc.Driver");
	
  	Connection con=DriverManager.getConnection(url,user1,pass1);	
  	    
  	PreparedStatement ps=con.prepareStatement("select * from JobSeeker where Uname = ? && PassWord = ?");
  	    ps.setString(2,pass);  
  	  ps.setString(1,email);
  
  	ResultSet rs = ps.executeQuery();
  	
  while(rs.next()){
  		 
  		
  		 
	  session.setAttribute("IDS",rs.getString(1));
	  session.setAttribute("usnm1",rs.getString(8));
  		session.setAttribute("usnm",rs.getString(2));
  		
  		
  	  response.sendRedirect("UserDash.jsp");
  	  }
  	    
  }  
  	    
  	    
  catch(Exception e){
  	e.printStackTrace();
  }	
  out.print("invalid password or user name");
  
  
 
  %>