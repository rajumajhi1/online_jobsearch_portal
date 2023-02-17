<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
    <%@page import="java.sql.*" %>

    <%
    

    String msg="";
    String url="jdbc:mysql://localhost:3306/JobPortal";
    String user1="root";
    String pass1="@budhadev2509";
    
    String user=request.getParameter("username");//Admin User Name
    String fname=request.getParameter("firstname");  //Admin Name
    String lname=request.getParameter("lastname"); //Company Name
    String mobile=request.getParameter("mob");
    String email=request.getParameter("email");
    
    String address=request.getParameter("address");//Admin Position
    String state=request.getParameter("state");
   
   
    String pass=request.getParameter("password");
   // RequestDispatcher dispatcher=null;
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection(url,user1,pass1);
    	PreparedStatement ps=con.prepareStatement("insert into JobGiver (Name,Position,OrgName,Email,State,Mob,UserName,PWord)values(?,?,?,?,?,?,?,?)");
    	    ps.setString(7,user);
    	    ps.setString(1,fname);
    	    ps.setString(3,lname);
    	    ps.setString(6,mobile);
    	    ps.setString(4,email);
    	    ps.setString(2,address);
    	    ps.setString(5,state);
    	   
    	    ps.setString(8,pass);
    	 
    	    int r=ps.executeUpdate();
    	   // dispatcher=request.getRequestDispatcher("signup.html");
    	    if(r==1){
    	    	request.setAttribute("status","success");
    	    	response.sendRedirect("loginadmin.html");
    	    }
    	    else
    	    	request.setAttribute("status","failed");
    }  
    	    
    	    
    catch(Exception e){
    	e.printStackTrace();
    }	    
    
    %>
    
    
    
    
	
	
	