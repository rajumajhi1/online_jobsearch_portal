<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>  
<%
String Jid=request.getParameter("Jid");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
PreparedStatement ps=con.prepareStatement("select * from Jobs where Jid=?");
ps.setString(1,Jid);
ResultSet rs=ps.executeQuery();

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>

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

<style type="text/css">

.nav.button{
    position: absolute;
    top: 15%;
    left: 83%;
    transform: translate(-50%,-50%);
}
.btn{
    border: 1px solid #3498db;
    background: none;
    padding: 5px 25px;
    color: #3498db;
    text-decoration: none;
    transition: 0.8s;
    font-family: "montserrat";
    cursor: pointer;
}
.btn:hover{
    background-color: #fff;
    color: rgb(12, 7, 12);
   } 




* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=email], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  }
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
    }
     body {
  background: #adf3ad;
 background: -webkit-linear-gradient(to left, #adf3ad, #85ee48);
  background: linear-gradient(to left, #adf3ad, #85ee48);
  min-height: 100vh;
}
</style>

</head>
<body>


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
                    <a href="index.html" class="nav-item nav-link active">Home</a>
                    <a href="#" class="nav-item nav-link">About</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="AllJobPosts.jsp" class="dropdown-item">New Jobs</a>
                         <!--    <a href="job-detail.html" class="dropdown-item">Job Category</a>  -->
                        </div>
                    </div>
                  <!--    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="category.html" class="dropdown-item">Job Category</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            
                        </div>
                    </div>-->
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Login</a>
                        <div class="dropdown-menu rounded-0 m-0">
                        	<a href="login.html" class="dropdown-item">User</a>
                            <a href="loginadmin.html" class="dropdown-item">Admin</a>
                            
                        
                        </div>
                </div>
               <!-- <a href="loginadmin.html" class="btn btn-dark rounded-0 py-4 px-lg-5 d-none d-lg-block">Post A Job<i class="fa fa-arrow-right ms-3"></i></a>-->   
            </div>
        </nav>
        <!-- Navbar End -->




<div class="container">
  <form action="edit1.jsp">
  
   <%
              while(rs.next())
              {
              %>
  
  <fieldset > <legend style="color: blueviolet; text-align:center ; size: 500px"><b>Edit Your Job Post</b></legend>
    <div class="row">
      <div class="col-25">
        <label for="fname">Job ID</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="Jid" placeholder="Enter Job Id.." value="<%=rs.getString(1)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Job Title</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Title" placeholder="Enter Job Title" value="<%=rs.getString(2)%>" autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="lname">Job Location</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Location" placeholder="Enter Department name.." value="<%=rs.getString(3)%>" autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="lname">Job Catagory</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Catagory" placeholder="Enter your Contact number.." value="<%=rs.getString(4)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Status</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Status" placeholder="Enter your Email id.." value="<%=rs.getString(5)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="country">Job Description</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Description" placeholder="Enter your Email id.." value="<%=rs.getString(6)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Date of Post</label>
      </div>
      <div class="col-75">
        <input type="date" id="lname" name="DoP" placeholder="Enter your Email id.." value="<%=rs.getString(7)%>"autocomplete="">
      </div>
    </div>
    
    
    <%} %>
    
    <div class="row">
    	<div class="col-50"></div>
    	<div class="col-50">
      <input type="submit" value="Submit">
    	</div>
    </div>
  </form>
</div>
</fieldset>
       
       
<!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
                        <a class="btn btn-link text-white-50" href="">About Us</a>
                     
                        <a class="btn btn-link text-white-50" href="">Our Services</a>
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Contact</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>CDA-11, Cuttack, Odisha</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 6370321069</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@jobseeker.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>Hii We Are JOB DECK Team.</p>
                        <!-- <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div> -->
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="index.jsp">JobSeeker.com</a>, All Right Reserved. 
							
							
							Designed By <a class="border-bottom" href="index.jsp">JobSeeker Team</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                               
                                <a href="">Help</a>
                                <a href="">FQAs</a>
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