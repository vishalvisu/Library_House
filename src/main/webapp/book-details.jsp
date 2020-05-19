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
  background-image:url("resources/images/l12.jpg");
   height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  color:white;
  display: flex;
  flex-direction:column;
   justify-content: center;
  align-items: center;
  vertical-align:center;
}

.card{
border: 8px solid DarkSlateGray  ;
   border-radius:4px;
   text-align:center;
   background-color:black;
   height:300px;
   background-color:Cornsilk;
    color:black;
}
header{
    font-family:cursive;
  }
 h2{
    font-family:cursive;
 } 
   td{
    border: 1px solid DarkSlateGray  ;
    text-align:center;
    padding:4px;
    border: 1px solid DarkSlateGray  ;
    text-align:center;
   } 
table
{
   background-color:Cornsilk;
    color:black;
    border: 8px solid DarkSlateGray  ;
   border-radius:4px;
   
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
 
    <c:if test="${cnt==0}">
     <div class="card" style="width: 18rem;">
     <div class="card-body">
    <h1 class="card-title">No book is matching to ${search_type} ${search_key}</h1>
     <h2 class="card-subtitle mb-2 text-muted"><a href=member.jsp class="card-link"><button class="btn btn-lg">TRY AGAIN</button></a></h2>  
    </div>
    <div>
     <a href=index.jsp class="card-link"><button class="btn btn-lg">HOME</button></a>
     <a href=member.jsp class="card-link"><button class="btn btn-lg">BACK</button></a>
    </div>
    </div>
    </c:if>
    
  <c:if test="${cnt>0}">
  <h2 class="header">Book Details</h2>
  <table class="table-primary table-hover table-bordered table-pink"">
  <thead>
    <tr>
     <th scope="col"><h1>#</h1></th>
      <th scope="col"><h1>Book Id</h1></th>
      <th scope="col"><h1>Title</h1></th>
      <th scope="col"><h1>Subject</h1></th>
        <th scope="col"><h1>Authors</h1></th>
    </tr>
  </thead>
  <tbody>
  <%! int index=1; %>  
   <c:forEach var="item" items="${list}"> 
    <tr>
      <td scope="row"><%=index%></td>
       <td><h2><c:out value="${item.getId()}"/></h2></td>
       <td><h2><c:out value="${item.getTitle()}"/></h2></td>
       <td><h2><c:out value="${item.getSubject()}"/></h2></td>
      <td><h2><c:out value="${item.getAuthor()}"/></h2></td>
      <% index++;%>
    </tr>
   </c:forEach>
   <% index=1;%>
  </tbody>
  </table>
  <br><br>
  <div>
<a href=index.jsp ><button class="btn btn-lg">HOME</button></a></div>
 <div>
  <a href=member.jsp ><button class="btn btn-lg">BACK</button></a>
  </div>
  </c:if>
  <div>
   
  </div>
</body>
</html>