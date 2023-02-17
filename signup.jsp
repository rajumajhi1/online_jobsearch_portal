<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
    <%@page import="java.sql.*" %>
    <%@page import="java.util.Date" %>

    <%
    

    String msg="";
    String url="jdbc:mysql://localhost:3306/JobPortal";
    String user1="root";
    String pass1="@budhadev2509";
    
    String user=request.getParameter("username");
    String fname=request.getParameter("firstname");  
    
    String mobile=request.getParameter("mobile");
    String email=request.getParameter("email");
     
    String address=request.getParameter("address");
    String state=request.getParameter("state");
   
    String gender=request.getParameter("gender");
    
    String pass=request.getParameter("password");
    Date Dt=new Date();
    
    String DOR=Dt.toString();
   // RequestDispatcher dispatcher=null;
    
    try{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con=DriverManager.getConnection(url,user1,pass1);
    	PreparedStatement ps=con.prepareStatement("insert into JobSeeker (SName,Mobile,SEmail,Address,Gender,state,Uname,PassWord,DOR)values(?,?,?,?,?,?,?,?,?)");
    	    
    	    ps.setString(1,fname);
    	    
    	    ps.setString(2,mobile);
    	    ps.setString(3,email);
    	    ps.setString(4,address);
    	    
    	   
    	    ps.setString(5,gender);
    	    ps.setString(6,state);
    	    ps.setString(7,user);
    	    ps.setString(8,pass);
    	    ps.setString(9,DOR);
    	 
    	    int r=ps.executeUpdate();
    	   // dispatcher=request.getRequestDispatcher("signup.html");
    	    if(r==1){
    	    	request.setAttribute("status","success");
    	    	response.sendRedirect("login.html");
    	    }
    	    else
    	    	request.setAttribute("status","failed");
    }  
    	    
    	    
    catch(Exception e){
    	e.printStackTrace();
    }	    
    
    %>
    
    
    
    
	
	
	