<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>  
<%
String sid=request.getParameter("SId");
long Sid=Long.parseLong(sid);
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPortal","root","@budhadev2509");
PreparedStatement ps=con.prepareStatement("select * from JobSeeker where SId=?");
ps.setLong(1,Sid);
ResultSet rs=ps.executeQuery();
//String adm=session.getAttribute("adm").toString();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
		
		
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

<div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
  <!--     <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>  -->  
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
            
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="UserDash.jsp" class="nav-item nav-link active">Home</a>
                    <a href="#" class="nav-item nav-link">About</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">View</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="ViewOwnProfile.jsp" class="dropdown-item">Profile</a>
                            <a href="job-detail.html" class="dropdown-item">Application Status</a>
                        </div>
                    </div>
                  <!--    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="category.html" class="dropdown-item">Job Category</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            
                        </div>
                    </div>-->
                   <a href="Logout.jsp" class="nav-item nav-link">Logout</a>
            </div>
        </nav>
        <!-- Navbar End -->


<div class="container">
  <form action="EditUser1.jsp">
  
   <%
              while(rs.next())
              {
              %>
  
  <fieldset > <legend style="color: blueviolet; text-align:center ; size: 500px"><b>Edit Your Profile</b></legend>
    <div class="row">
      <div class="col-25">
        <label for="fname">ID</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="Sid" placeholder="Enter Name.." value="<%=rs.getString(1)%>"autocomplete="">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="fname">Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="Name" placeholder="Enter Name.." value="<%=rs.getString(2)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Mobile no.</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Mobile" placeholder="Enter Mobile .." value="<%=rs.getString(3)%>" autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="lname">Email</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Email" placeholder="Enter Email.." value="<%=rs.getString(4)%>" autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="lname">Address</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Address" placeholder="Enter your Address.." value="<%=rs.getString(5)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Gender</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="Gender" placeholder="Enter your Gender.." value="<%=rs.getString(6)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="country">State</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="State" placeholder="Enter your State.." value="<%=rs.getString(7)%>"autocomplete="">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">UserName</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="UserName" placeholder="Enter your Username.." value="<%=rs.getString(8)%>"autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="subject">Password</label>
      </div>
      <div class="col-75">
        <input type="text" id="Uname" name="Password" placeholder="Enter your Password" value="<%=rs.getString(9)%>"autocomplete="">
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="subject">Registration Date</label>
      </div>
      <div class="col-75">
        <input type="date" id="Uname" name="DOR" placeholder="Enter your Registration Date" value="<%=rs.getString(10)%>"autocomplete="">
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
       
            
  
        
</body>
</html>