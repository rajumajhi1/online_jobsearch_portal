<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
  
</head>

<body>
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
                    <a href="AboutUs.html" class="nav-item nav-link">About</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="JobList.jsp" class="dropdown-item">New Jobs</a>
                         <!--    <a href="#" class="dropdown-item">Job Category</a>  -->
                        </div>
                    </div>
                    <div>
                    	<a href="Logout.jsp" class="nav-item nav-link">Logout</a>
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
    <section class="vh-10" style="background-color:  rgb(4, 96, 150);">
        <div class="container py-5 h-50">
            <div class="row d-flex justify-content-center align-items-center h-50" >
                <div class="col-md-12 col-xl-4">

                    <div class="card" style="border-radius: 100px;">
                        <div class="card-body text-center">
                            <div class="mt-3 mb-4">
                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava2-bg.webp"
                                    class="rounded-circle img-fluid" style="width: 100px;" />
                            </div>
                            <form>
                                <div class="mb-3">
                                  <label for="exampleInputEmail1" class="form-label">NAME</label>
                                  <input type="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                 
                                </div>
                                <div class="mb-3">
                                  <label for="exampleInputPassword1" class="form-label">MOBILE NUMBER</label>
                                  <input type="password" class="form-control" id="exampleInputPassword1">
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">EMAIL</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                   
                                  </div>

                                  <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">ADDRESS</label>
                                    <input type="TEXT" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                   
                                  </div>

                                  <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">GENDER</label>
                                    <input type="TEXT" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                   
                                  </div>

                    

                                <div class="mb-3">
                                  <label for="exampleInputEmail1" class="form-label">STATE</label>
                                  <input type="TEXT" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                 
                                </div>

                            
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">USERNAME</label>
                              <input type="TEXT" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                             
                        
                        
                        <div class="mb-3">
                          <label for="PASSWORD" class="form-label">PASSWORD</label>
                          <input type="TEXT" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                         
                        </div>
                                
                              </form>
                            
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
   
    
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
