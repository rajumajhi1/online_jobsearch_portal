<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <style>
            body{
               margin: 20px;
               border: 20px;
               padding:10px;
               background-color:rgb(0, 204, 240);
            
            
            }
            
            
            
            
                    </style>
                    <link href="img/favicon.ico" rel="icon">

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
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-grey navbar-light shadow sticky-top p-0">
        	
            <a href="index.jsp" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
                <h1 class="m-0 text-primary"><img alt="logo" src="JOB DECK_free-file(1).png" ></h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="AdminDash.jsp" class="nav-item nav-link active">Home</a>
                    <a href="AboutUs.html" class="nav-item nav-link">About</a>
                 <!--     <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="AllJobPosts.jsp" class="dropdown-item">New Jobs</a> 
                             <a href="job-detail.html" class="dropdown-item">Job Category</a>  
                          </div> 
                    </div>  -->
                     
                <a href="loginadmin.html" class="btn btn-dark rounded-0 py-4 px-lg-5 d-none d-lg-block">Post A Job<i class="fa fa-arrow-right ms-3"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->
        <br> <br> <br> <br> <br> 

        <%
	String di=session.getAttribute("di").toString();
	long Di=Long.parseLong(di);
	

	  String url="jdbc:mysql://localhost:3306/JobPortal";
	  String user1="root";
	  String pass1="@budhadev2509";
	  

	  
	  	Class.forName("com.mysql.cj.jdbc.Driver");
		
	  	Connection con=DriverManager.getConnection(url,user1,pass1);	
	  	    
	  	PreparedStatement ps=con.prepareStatement("select * from Applications join JobSeeker on JobSeeker.SId=Applications.UserForeign join Jobs on Jobs.Jid=Applications.id where ReferId=?");
	  	    
	  	  ps.setLong(1,Di);
	  
	  	ResultSet rs = ps.executeQuery();
	  	
	  while(rs.next())
	  {
		 
	  		String id=rs.getString(1);
	  		 %>



    <div class="container text-center">
        <div class="row">
           <div class="col">
                <div class="card" style="width: 18rem; height: 30rem">
                    
                    <div class="card-body">
                        <h3 class="card-title">Candidate Profile</h3>
                        <p class="card-text">

                            <p><b>Candidate Name: </b><%=rs.getString(9)%></p><br>
                            <p><b>Mobile Number: </b><%=rs.getString(10)%></p><br>
                            
                           
                            
                            <p><b>Email: </b><%=rs.getString(11)%></p><br>
                           <p><b>Address: </b><%=rs.getString(12)%></p><br>
                            <p><b>Gender: </b><%=rs.getString(13)%></p><br>
                            <p><b>State: </b><%=rs.getString(14)%></p><br>
                           
                                           
                           
                        
                        
                    </div>
                </div>
            </div>
           <div class="col">
                <div class="card" style="width: 18rem; height: 30rem">
                    
                    <div class="card-body">
                        <h3 class="card-title">Applied Job</h3>
                        <p class="card-text">

                            <p><b>Title: </b><%=rs.getString(19)%></p><br>
	  		  <p><b>Location: </b><%=rs.getString(20)%></p><br>
	  		  
	  		   <p><b>Category: </b><%=rs.getString(21)%></p><br>
	  		  <p><b>Job Status: </b><%=rs.getString(22)%></p><br>
	  	<p><b>Description: </b><%=rs.getString(23)%></p><br>
	  
	
	   		   
	  		   
                       
                     
                        
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card" style="width: 18rem; height: 30rem;">

                    <div class="card-body">
                        <h3 class="card-title">Application Review</h3>
                        <p class="card-text"></p>
                        <p><b>Application Status: </b><%=rs.getString(2)%></p><br>
                        <p><b>Interview: </b><%=rs.getString(3)%></p><br>
                        <p><b>Resume: </b><%=rs.getString(4)%></p><br>
                       <p><b>Date of Apply: </b><%=rs.getString(5)%></p><br>
                        
                        <a href="EditApp.jsp?id=<%=id%>" class="btn btn-primary">Review Application</a>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
    <br><br><br><br><br>
<% } %>


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