<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Posts</title>
 <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  
  <style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #07234c;
  color: white;
}
</style>


</head>
<body>
<%
			String Id="";
			String admin=session.getAttribute("admin").toString();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
	        PreparedStatement ps1=con.prepareStatement("select * from JobGiver where UserName=?");
	        ps1.setString(1,admin);
	        ResultSet rs1=ps1.executeQuery();
	        while(rs1.next())
	        {
	        	Id=rs1.getString(1); 
	        }
	        long ReferId=Long.parseLong(Id);
	        PreparedStatement ps=con.prepareStatement("select * from Jobs where ReferId=?");
	        ps.setLong(1, ReferId);
	        ResultSet rs=ps.executeQuery();
		%>
		
		
		 <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="index.jsp" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
                <h1 class="m-0 text-primary">JobDeck.com</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="AdminDash.jsp" class="nav-item nav-link active">Home</a>
                    <a href="AboutUs.html" class="nav-item nav-link">About</a>
                   <!-- <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="#" class="dropdown-item">New Jobs</a>
                             <a href="job-detail.html" class="dropdown-item">Job Category</a>  
                        </div>
                    </div>
                    <div>
                    	<a href="index.jsp" class="nav-item nav-link">Logout</a>
                    </div>-->
                  <!--    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="category.html" class="dropdown-item">Job Category</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            
                        </div>
                    </div>-->
                   <!-- <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Logout</a>
                        <div class="dropdown-menu rounded-0 m-0">
                        	<a href="login.html" class="dropdown-item">User</a>
                            <a href="loginadmin.html" class="dropdown-item">Admin</a>
                            
                        
                        </div>-->
                </div>
             <!--   <a href="loginadmin.html" class="btn btn-dark rounded-0 py-4 px-lg-5 d-none d-lg-block">Post A Job<i class="fa fa-arrow-right ms-3"></i></a>-->
            </div>
        </nav>
        <!-- Navbar End -->
		
		
		
		<table class="table table-hover table-bordered border-primary" id="customers">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Title</th>
      <th scope="col">Location</th>
      <th scope="col">Catagory</th>
     
 <th scope="col">Status</th>
  <th scope="col">Description</th>
   <th scope="col">Date of Post</th>
   <th scope="col">Edit</th>
 <!--     <th scope="col">Delete</th>  -->
    
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
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(7)%></td>
      <td><a href="adduser.jsp?Jid=<%=Jid%>" style="text-decoration:none"><img alt="logo" src="update.png"  style="height : 35px ; width :35px"> </a> </td>
					
    </tr>
   
  </tbody>
  <%}%>
</table>

 <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Job Deck</h5>
                        	<p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>CDA-11, Cuttack, Odisha</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 6370321069</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@jobdeck.com</p>
                       
                        
                      <!--   <a class="btn btn-link text-white-50" href=""></a>
                     
                        <a class="btn btn-link text-white-50" href="">Our Services</a>-->
                       <!--  <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>-->
                    </div>
                    
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Our Services</h5>
                        <a class="btn btn-link text-white-50" href="AboutUs.html">About Us</a>
                     
                        <!-- <a class="btn btn-link text-white-50" href="">Our Services</a>-->
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>
                    
                    
                    
                    
                    
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Social Links</h5>
                        
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <a class="btn btn-link text-white-50" href="AdminDash.jsp">Home</a>
                     
                        <!-- <a class="btn btn-link text-white-50" href="">Our Services</a>-->
                        <a class="btn btn-link text-white-50" href="CareerTips.html">Help</a>
                        <a class="btn btn-link text-white-50" href="CareerTips.html">FAQs</a>
                        </div> 
                    </div>

						 
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="index.jsp">JobDeck.com</a>, All Right Reserved. 
							
							
							Designed By <a class="border-bottom" href="index.jsp">JobDeck Team</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href=""></a>
                               
                                <a href=""></a>
                                <a href=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>











</body>
</html>