<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<!------ Include the above in your HEAD tag ---------->
<html>
<head>
<style type="text/css">
body
{
  background-image:url("resources/images/l7.jpg");
   height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: repeat;
  background-size: cover;
  
  color:white;
  display: flex;
  flex-direction:column;
   justify-content: center;
  align-items: center;
  vertical-align:center;
}

.card{
border: 8px solid GreenYellow ; ;
   border-radius:4px;
   text-align:center;
   background-color:black;
   height:300px;
   background-color:Cornsilk;
    color:black;
}
.card-title{

color:blue;

}
</style>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    
        
         <div class="card" style="width: 18rem;">
     <div class="card-body">
    <h1 class="card-title">Enter Password</h1>
    
    </div>
    <div>
                       <a href=index.jsp class="card-link"><button class="btn btn-lg">HOME</button></a>
     <div>
                         <form id="login-form" class="form" action="login" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="password" class="form-control" required/>
                            </div>
                            <div>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                        </form>
     
     </div>
    </div>
    </div>
        
        
        
        
       
</body>
</html>