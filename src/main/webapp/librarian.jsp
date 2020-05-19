<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
   
body
{
    background-image:url("resources/images/l11.jpg"); 
    justify-content: center;
    align-items: center;
    vertical-align:center;
      height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

form
   {
  color:white;
  display: flex;
  flex-direction:row;
  justify-content: center;
    align-items: center;
    vertical-align:center;
    justify-content: center;
   }

.card{
   border: 8px solid GreenYellow ;
  border-radius: 4px;
   text-align:center;
   background-color:white;
   height:200px;
   color:black;
   justify-content: center;
    align-items: center;
    vertical-align:center;
    margin:20px;
}

h1{
   text-align:center;
   color:black;
}

.card-title{
   
   font-family:cursive;
   font-size:30px;
   text-decoration:underline;
}

.header{
     font-family:cursive;
   font-size:45px;
   color:white;
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
        <a href="index.jsp"><button type="button" class="btn btn-secondary btn-lg" style="margin-right:50px">HOME</button></a>
    </div>   
    <h1 class="header">Welcome in Library House!</h1>
   <h1 class="header">This Section Is Only For Librarian </h1>
        
        <form action="librarian" method="post" style="margin:100px">
    
         <div class="card" style="width: 18rem;">
     <div class="card-body">
    <h1 class="card-title">SERVICES</h1>
<h2 class="card-subtitle mb-2 text-muted">
 <button class="col-lg buttons-lg rounded text-light bg-dark font-italic" type="submit"  name="clicked" value="issue-book" class="btn btn-dark btn-lg">Issue-Book</button>
 <button class="col-lg buttons-lg rounded text-light bg-dark font-italic" type="submit" name="clicked" value="deposit-book" class="btn btn-dark btn-lg">Deposit-Book</button>
</h2>
</div>
    </div> 
    
    
    <div class="card" style="width: 18rem;">
     <div class="card-body">
    <h1 class="card-title">BOOKS</h1>
<h2 class="card-subtitle mb-2 text-muted">
<button class="col-lg buttons-lg rounded text-light bg-dark font-italic" type="submit" name="clicked" value="add-book"  class="btn btn-primary btn-lg">Add-Book</button>
<button class="col-lg buttons-lg rounded text-light bg-dark font-italic" type="submit" name="clicked" value="delete-book" class="btn btn-dark btn-lg">Delete-Book</button>
</h2>
</div>
    </div> 
    
     <div class="card" style="width: 18rem;">
     <div class="card-body">
    <h1 class="card-title">MEMBERS</h1>
<h2 class="card-subtitle mb-2 text-muted">
 <button class="col-lg buttons-lg rounded text-light bg-dark font-italic" type="submit" name="clicked" value="add-member"  class="btn btn-primary btn-lg">Add-Member</button>
<button class="col-lg buttons-lg rounded text-light bg-dark font-italic" type="submit"  name="clicked" value="delete-member" class="btn btn-dark btn-lg">Delete-Member</button>
</h2>
</div>
    </div> 
       </form>
    
       
    </body>
    </html>