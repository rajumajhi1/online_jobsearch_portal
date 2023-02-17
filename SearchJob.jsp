<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
   
    String search=request.getParameter("search");
    
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
        PreparedStatement ps=con.prepareStatement("select * from Jobs where Title =?");
        ps.setString(1, search);
        
        ResultSet rs=ps.executeQuery();
%>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Title</th>
      <th scope="col">Location</th>
      <th scope="col">Catagory</th>
     
 <th scope="col">Status</th>
  <th scope="col">Description</th>
   <th scope="col">DoP</th>
    
    </tr>
  </thead>
  
   <%
		while(rs.next())
		{
			//String Jid=rs.getString(1);
		%>          
  
  <tbody>
    <tr>
      
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(7)%></td>
      <td><a href="login.html" style="text-decoration:none">Apply</a></td>
					
    </tr>
   
  </tbody>
  <%}%>
</table>
</body>
</html>