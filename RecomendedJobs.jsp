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
			Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","Nihar@123#");
	        PreparedStatement ps=con.prepareStatement("select * from Jobs");
	        ResultSet rs=ps.executeQuery();
		%>
		
		<table class="table">
  <thead class="thead-dark">
    <tr>
    <!--   <th scope="col">Id</th>--> 
      <th scope="col">Title</th>
    
    </tr>
  </thead>
  
   <%
		while(rs.next())
		{
			String Jid=rs.getString(1);
		%>          
  
  <tbody>
    <tr>
      
     <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
     <td><a href="ShowDetailJob.jsp?Jid=<%=Jid%>" style="text-decoration:none">Apply</a></td>
					
    </tr>
   
  </tbody>
  <%}%>
</table>
</body>
</html>