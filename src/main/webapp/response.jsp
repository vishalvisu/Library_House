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
background-image:url("resources/images/l13.jpg");
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: repeat;
  background-size: cover;
  
  color:white;
  display: flex;
  flex-direction:row;
   justify-content: center;
  align-items: center;
  vertical-align:center;
}

.card{
   border: 8px solid DarkSlateGray  ;
   border-radius:4px;
   text-align:center;
   background-color:Cornsilk;
   height:100%;
    color:black;
}
h2{
    text-decoration: solid underline ;
  }
 td{
    border: 1px solid DarkSlateGray  ;
    text-align:center;
   } 
  
table{
  border: 8px solid DarkSlateGray  ;
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
    
  
</style>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</head>
<body>
 
     <div class="card" style="width: 18rem;">
     <div class="card-body">
    <h1 class="card-title">${response}</h1>
    <br><br><br>
    <c:if test="${result==0}">
     <h2 class="card-subtitle mb-2 text-muted"><a href="${back}" class="card-link"><button class="btn btn-lg">TRY AGAIN</button></a></h2>  
     </c:if>
     <c:if test="${result>0}">
 <h5 class="card-subtitle mb-2 text-muted"><a href=${back} class="card-link btn btn-lg"><button class="btn btn-lg">${nextstep}</button></a></h5>  
 <h5 class="card-subtitle mb-2 text-muted"><a href="librarian.jsp" class="card-link"><button class="btn btn-lg">LIBRARIAN</button></a></h5>  
 <h5 class="card-subtitle mb-2 text-muted"><a href=index.jsp class="card-link"><button class="btn btn-lg">HOME</button></a></h5>  
     </c:if>
    </div>
    </div>
</body>
</html>

