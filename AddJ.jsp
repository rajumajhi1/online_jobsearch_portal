<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@page import="java.sql.*" %>
    <%
    String Id="";
   
    String Title=request.getParameter("Title");
    String Location=request.getParameter("Location");
    String Catagory=request.getParameter("Catagory");
    String Status=request.getParameter("Status");
    String Description=request.getParameter("Description");
    String DoP=request.getParameter("DoP");
    
    
    String admin=session.getAttribute("admin").toString();
    
    try
    {
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
       PreparedStatement ps1=con.prepareStatement("select * from JobGiver where UserName=?");
      ps1.setString(1,admin);
       ResultSet rs=ps1.executeQuery();
       while(rs.next())
		{
    	    Id=rs.getString(1); 
    	   
		}
       long n=Long.parseLong(Id);
     //  PreparedStatement ps2=con.prepareStatement("insert into Applications(JobForeign)values(?)");
   //    ps2.setLong(1, n);
  //     int rs2=ps2.executeUpdate();
  
  
       PreparedStatement ps=con.prepareStatement("insert into Jobs(Title,Location,Catagory,Status,Description,DoP,ReferId)values(?,?,?,?,?,?,?)");
      
       ps.setString(1, Title);
   	ps.setString(2, Location);
   	ps.setString(3, Catagory);
   	ps.setString(4, Status);
	ps.setString(5, Description);
	ps.setString(6, DoP);
	
	ps.setLong(7, n);
       int r=ps.executeUpdate();
       
      
      
       
       
       if(r==1)
       {
    	  
    		   response.sendRedirect("AddJ.jsp");
    	   }
           
       
       else
       {
     	   response.sendRedirect("index.jsp");
       }
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    	
    }  
    %>

    
    
                                                  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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



		
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">


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
                    <a href="#" class="nav-item nav-link">About</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Jobs</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="OwnJobPosts.jsp" class="dropdown-item">View Own Jobs</a>
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
						<a href="Logout.jsp" class="nav-item nav-link">Logout</a>
                            
                        
                        </div>
                </div>
             <!-- <a href="loginadmin.html" class="btn btn-dark rounded-0 py-4 px-lg-5 d-none d-lg-block">Post A Job<i class="fa fa-arrow-right ms-3"></i></a>-->
            </div>
        </nav>
        <!-- Navbar End -->

<div class="container">
  <form action="AddJ.jsp" method="post">
  
   
  
  <fieldset > <legend style="color: blueviolet; text-align:center ; size: 500px"><b>Edit Your Job Post</b></legend>
    <div class="row">
      <div class="col-25">
        <label for="fname">Title</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="Title" placeholder="Enter Job Id.."autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Location</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Location" placeholder="Enter Job Title"  autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="lname"> Catagory</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Catagory" placeholder="Enter Catagory.." autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="lname">Enter Status</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Status" placeholder="Enter Status.." autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Description</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Description" placeholder="Enter Description.."autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="country">Posting Date</label>
      </div>
      <div class="col-75">
        <input type="date" id="lname" name="DoP" placeholder="Enter Posting Date.."autocomplete="">
      </div>
    </div>
    
    <div class="row">
    	<div class="col-50"></div>
    	<div class="col-50">
      <input type="submit" value="Submit">
    	</div>
    </div>
  </form>
</div>
</fieldset>






</body>
</html>