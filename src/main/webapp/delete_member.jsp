<%@page import="POJO_CLASSES.issued_books"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<%@page isELIgnored = "false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body
{
background-image:url("resources/images/l17.jpg");
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  color:white;
  display: flex;
  flex-direction:row;
   justify-content: center;
  align-items: center;
  vertical-align:center;
}

.card{
   border: 8px solid GreenYellow; 
   border-radius:4px;
   text-align:center;
   background-color:Cornsilk;
   height:300px;
    color:black;
}

h2{
    text-decoration: solid underline;
  }
 
 td
 {
    border: 1px solid DarkSlateGray;
    text-align:center;
 } 
  
table{
  border: 8px solid DarkSlateGray;
  border-radius: 4px;
  color:black;
  background-color:Cornsilk;
}  

.header{
color:black;
font-family:cursive;
}
  
button{
   height:50px;
   size:150px;
    font-family:cursive;
    font-size:20px;
    padding:5px;
    margin:5px;
}  

.card-title{
   color:blue;
}    
  
</style>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</head>
<body>
 
     <div class="card" style="width: 18rem; height:400px;">
     <div class="card-body">
    <h1 class="card-title">Enter ID Of Member To Be Deleted</h1>
    <form action="delete_member" method="POST">
     <h2 class="card-subtitle mb-2 text-muted">
      <input class="form-control"  type="text" name="id" required />
     </h2>  
    <h1>
    <input type="submit" class="btn btn-primary btn-lg mg-10" value=submit />
    </h1>
      <div class="form-row">
       
       <div class="form-group col-md-6">
       <a href="index.jsp"><button type="button" class="btn  btn-lg hover mg-10" >HOME</button></a></div>
       
       <div class="form-group col-md-6">
          <a href="librarian.jsp"><button type="button" class="btn  btn-lg hover mg-10" >BACK</button></a></div>
          </div></form>
    </div>
    </div>
</body>
</html>




   
  