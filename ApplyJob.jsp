<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Applyjob candidate</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


        <style>
     .container{
    margin: 50px;
    padding: 50px;
    border: 50px;
    border-radius: 10px;
    
    color: rgb(252, 252, 252);


     }
     body{

        background-color: rgb(224, 220, 220);
     }


        </style>
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        <%
String str=session.getAttribute("str").toString();//JobSeeker ID or Sid
//long Sid=Long.parseLong(str);
String Jid=request.getParameter("Jid");
//long jid=Long.parseLong(Jid);
session.setAttribute("STR",str);
session.setAttribute("JID",Jid);
%>
<center>
        <div class="container" style=" background-image: url(./hi.jpg);">
          
              
         <h4>One Step Away From Your Dream Job, Apply Now!</h4>
         <br><br><br><br>
         <form action="ApplyJob2.jsp" method="post">
             <div class="sub">
             <label for="resume">Upload your Resume</label> <br><br>
            <div class="input-group mb-3>
                <label class="input-group-text" for="inputGroupFile01" style="width: 50%;">
                <input type="file" class="form-control" id="inputGroupFile01" name="resume">
              </div>
              
            <br>
            <label for="date">Select Date </label><br><br>
            <div class="input-group mb-3>
                <label class="input-group-text" for="inputGroupFile01" style="width: 50%;">
                <input type="date" class="form-control" id="inputGroupFile01" name="date">
              </div>
            <!-- <label for="date">Select Date </label>
            <input type="date" name="date" id=""> -->
            <br><br>

            <button type="submit" class="btn btn-info">Submit Application</button>




        </form> 
        </div>

    </center>

    
</body>

</html>