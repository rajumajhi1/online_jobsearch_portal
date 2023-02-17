<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
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
    <style>
        .container {
            background-color: rgb(13, 96, 99);
            height: 600px;
            width: 500px;
            margin-left: auto;
            margin-right: auto;
            display: block;
            border-radius: 5px;
            margin-top: 3%;
            color: WHITE;

        }

        .field {
            color: red;
        }
    </style>
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>

        <%
			String Id="";
			String admin=session.getAttribute("admin").toString();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
	        PreparedStatement ps1=con.prepareStatement("select * from JobSeeker where Uname=?");
	        ps1.setString(1,admin);
	        ResultSet rs1=ps1.executeQuery();
	       /* while(rs1.next())
	        {
	        	Id=rs1.getString(1); 
	        }
	        long ReferId=Long.parseLong(Id);
	        PreparedStatement ps=con.prepareStatement("select * from Jobs where ReferId=?");
	        ps.setLong(1, ReferId);
	        ResultSet rs=ps.executeQuery();*/
		%>

        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="index.jsp" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
                <h1 class="m-0 text-primary">JOB DECK</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="UserDash.jsp" class="nav-item nav-link active">Home</a>
                    <a href="#" class="nav-item nav-link">About</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="JobList.jsp" class="dropdown-item">New Jobs</a>
                         <!--    <a href="#" class="dropdown-item">Job Category</a>  -->
                        </div>
                    </div>
                    <div>
                    	<a href="index.jsp" class="nav-item nav-link">Logout</a>
                    </div>
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
            </div>
        </nav>
        <!-- Navbar End -->
		

        <%
		while(rs1.next())
		{
			String SId=rs1.getString(1);
		%>          



    <div class="container" style=" background-color: rgb(13, 96, 99);
            height: 600px;
            width: 500px;
            margin-left: auto;
            margin-right: auto;
            display: block;
            border-radius: 5px;
            margin-top: 3%;
            color: WHITE;">

        <center>
            <br><br>
            <h3>PROFILE</h3><br><br>
            <label for="name">Name : </label> <%=rs1.getString(2)%> <br><br>
            <label for="name">Mobile : </label> <%=rs1.getString(3)%> <br><br>
            <label for="name">Email : </label> <%=rs1.getString(4)%> <br><br>
            <label for="name">Address : </label> <%=rs1.getString(5)%> <br><br>
            <label for="name">Gender : </label> <%=rs1.getString(6)%> <br><br>
            <label for="name">State : </label> <%=rs1.getString(7) %><br><br>
            <label for="name">UserName : </label> <%=rs1.getString(8)%> <br><br>
            <label for="name">Password : </label> <%=rs1.getString(9)%><br><br>
<a href="EditUser.jsp?SId=<%=SId%>" style="text-decoration:none"><button type="button" class="btn btn-warning">Update Profile</button></a> 
	&nbsp&nbsp&nbsp&nbsp<a href="Delete.jsp?SId=<%=rs1.getString(1)%>" style="text-decoration:none"><button type="button" class="btn btn-danger">Request to Delete</button></a>
   
            <%}%>
          

        </center>
    </div>




    </div>


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
                    <a class="btn btn-link text-white-50" href="">About Us</a>
                 
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
                    <a class="btn btn-link text-white-50" href="">Home</a>
                 
                    <!-- <a class="btn btn-link text-white-50" href="">Our Services</a>-->
                    <a class="btn btn-link text-white-50" href="">Help</a>
                    <a class="btn btn-link text-white-50" href="">FAQs</a>
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