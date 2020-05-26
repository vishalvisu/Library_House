<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page isELIgnored="false" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Book---Issue!</title>
   <style type="text/css">

body{
  display: flex;
  flex-direction:column;
  
  align-items:center;
  background-image:url("resources/images/l13.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
   justify-content: center;
}
form{
display:inline-block;
margin-left:225px;
 align-items: center;
   border: 8px solid GreenYellow ;
  border-radius: 4px;
   text-align:center;
   background-color:white;
   color:blue;
   margin:15px;
    justify-content: center;
  align-items: center;
  vertical-align:center;

}
h1{
   text-align:center;
   color:white;
}
.header{
background-color:blue;
}
</style>  
  </head>
  <body>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
	
    <div>
     <h1 class="header">Welcome in Add--Book-- Section!</h1>
     <h1 class="header">This Section Is Only For Librarian </h1>   
   <div class="container">
  <form action="add_book" method="POST">
    
     <h2>Enter BOOK Details</h2>
     <div class="form-row">
    
    <div class="form-group col-md-3">
      <label for="id">Enter Book Id</label>
      <input type="text" name="id" class="form-control" id="id" placeholder="Book-Id" required />
    </div>
    
    <div class="form-group col-md-6">
      <label for="title">Enter Title</label>
      <input type="text" class="form-control" id="title" placeholder="Title" name="title" required />
    </div>
    
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-9">
      <label for="author">Enter Author's Name(if multiple seperate them by column)</label>
      <input type="text" name="authors" class="form-control" id="author" placeholder="Authors" required />
    </div>
  </div>
    
     <div class="form-row">
    
    <div class="form-group col-md-3">
      <label for="isbn">Enter ISBN code</label>
      <input type="text" name="ISBN_CODE" class="form-control" id="isbn" placeholder="isbn" required />
    </div>
    
    <div class="form-group col-md-9">
    <label class="mdb-main-label">SUBJECT</label>
<select class="mdb-select md-form colorful-select dropdown-primary" name="subject">
  <option value="programming">programming</option>
  <option value="maths">math</option>
  <option value="physics">physics</option>
  <option value="chemistry">chemistry</option>
  <option value="electronics">electronics</option>
   <option value="electrical">electrical</option>
  <option value="electronics">electronics</option>
  <option value="economics">economics</option>
  <option value="data-mining">data-mininig</option>
   <option value="AI">AI</option>
  <option value="ML">ML</option>
  <option value="compiler-design">compiler-design</option>
   <option value="OS">OS</option>
   <option value="Other">Other</option>
</select>
    </div>
    </div>
    
    <div class="form-row">
    <div class="form-group col-md-5">
      <input type="submit"  class="form-control" type="button" class="btn btn-primary btn-lg">
      
       <div class="form-row">
       
       <div class="form-group col-md-6">
       <a href="index.jsp"><button type="button" class="btn  btn-lg hover mg-10" >HOME</button></a></div>
       
       <div class="form-group col-md-6">
          <a href="librarian.jsp"><button type="button" class="btn  btn-lg hover mg-10" >BACK</button></a></div>
          </div>
          
    </div></div>

</form>
    </div>
</div>
  

</body>
</html>