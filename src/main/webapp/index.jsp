<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
<style type="text/css">

body{
  background-color:grey;
  background-image:url("resources/images/l5.jpg");
  
    height: 40%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.buttons 
{
  padding: 40px 0;
  text-align: center;
}
#button
{
  margin-left:20px 0;
  padding:15px;
}
h1{
    margin-top:30px;
   text-align:center;
}
</style>  
   
    <title>Library House!</title>
  </head>
  
  <body>
    <h1 style="color:white">Welcome in Library House!</h1>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <form action="home" method="post">
    <div class="buttons">
       <button  type="submit" name="clicked" value="member"  class="btn btn-primary btn-lg">MEMBER</button>
       <br><br>
      <button type="submit" name="clicked" value="librarian" class="btn btn-dark btn-lg">LIBRARIAN</button>
    </div>
    </form>
    <div>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resources/images/l4.jpg"  class="d-block w-100"  alt="First slide">
    </div>
    <div class="carousel-item">
      <img src="resources/images/l2.jpg"  class="d-block w-100"  alt="Second slide">
    </div>
    <div class="carousel-item">
      <img src="resources/images/l3.jpg" class="d-block w-100"  alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
  </body>
</html>