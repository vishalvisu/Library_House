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
   border: 8px solid DarkSlateGray  ;
   border-radius:4px;
   text-align:center;
   background-color:Cornsilk;
   height:300px;
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
 
    <c:if test="${avl==0}">
     <div class="card" style="width: 18rem;">
     <div class="card-body">
    <h1 class="card-title">NO SUCH ID EXISTS</h1>
    <br><br><br><br>
     <h2 class="card-subtitle mb-2 text-muted"><a href=${link2} class="card-link"><button class="btn btn-lg">TRY AGAIN</button></a></h2>  
    </div>
    </div>
    </c:if>
    
    <c:if test="${avl>0}">
      <div class="card" style="width: 18rem;height:350px;">
     <div class="card-body">
    <h1 class="card-title">ID: ${id}</h1>   
    <h2 class="card-subtitle mb-2 text-muted">${name}</h2>
    <div class="card-text">
   <h3>Department: ${dept}</h3>
    <h3>Stream: ${stream}</h3>
    <h3> Session: ${session}</h3>
    </div>
   <a href=${link1} class="card-link"><button class="btn btn-lg">HOME</button></a>
     <a href=${link2} class="card-link"><button class="btn btn-lg">BACK</button></a>
  </div>
  </div>
  <c:if test="${cnt==0}">
  
   <div class="card" style="width: 24rem;height: 6rem;">
     <div class="card-body">
     <h1 class="card-title"></h1>   
    <h2 class="card-subtitle mb-2 text-muted">Currently No book is issued to ${name}</h2>
    </div>
    </div>
  </c:if>
  <c:if test="${cnt>0}">
  <h2 class="header">Issued Book Details</h2>
  <table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col"><h1>#</h1></th>
      <th scope="col"><h1>Book Id</h1></th>
      <th scope="col"><h1>Title</h1></th>
      <th scope="col"><h1>Date Of Issue</h1></th>
    </tr>
  </thead>
  <tbody>
  <%! int index=1; %>  
   <c:forEach var="item" items="${list}"> 
    <tr>
      <td scope="row"><%=index%></td>
       <td><h1><c:out value="${item.getBook_id()}"/></h1></td>
       <td><h1><c:out value="${item.getBook_title()}"/></h1></td>
      <td><h1><c:out value="${item.getDate()}"/></h1></td>
      <% index++;%>
    </tr>
   </c:forEach>
  </tbody>
  </table>
  </c:if>
  </c:if>
  
</body>
</html>