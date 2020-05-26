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
  color:white;
  display: flex;
  flex-direction:column;
  
  align-items:center;
  background-image:url("resources/images/l13.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
   justify-content: center;
}

.card{
  align-items: center;
   border: 8px solid GreenYellow ;
  border-radius: 4px;
   text-align:center;
   background-color:white;
   height:200px;
   color:blue;
   margin:15px;
    justify-content: center;
  align-items: center;
  vertical-align:center;
}
input{
  margin:10px;
  align-text:center;
}
.card-title{
     color:blue;
}
h1,h2{

margin:auto;
 color:blue;
}

.header{
color:white;
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
     <h1 class="header">Welcome in Book--Delete Section!</h1>
 
 <div class="card" style="width: 18rem; height:400px;">       
  <form  action="delete_book" method="post">
     <div class="card-body">
    <h2 class="card-title">ENTER REQUIRED DETAILS</h2>
     
     <h4 class="card-subtitle mb-2 text-muted">
        <input class="form-control" type="text" name="id" required size="25" placeholder="Enter Book Id" />
      
         <input type="submit" class="btn btn-secondary btn-lg-red" value=submit />
     </h4>  
    
    </div>
  </form>
  <div>
   <a href="index.jsp"><button type="button" class="btn btn-secondary btn-lg" >HOME</button></a>
          <a href="librarian.jsp"><button type="button" class="btn btn-secondary btn-lg" >BACK</button></a>
          </div>
          </div>
    </div>
  </body>
</html>



