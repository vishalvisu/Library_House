<!DOCTYPE html>
<html>
<head>
<style>

body
{
  color:white;
  display: flex;
  flex-direction:column;
   justify-content: center;
  align-items: center;
  vertical-align:center;
  background-image:url("resources/images/l1.jpg");
}

.card{
   border: 8px solid GreenYellow ;
  border-radius: 4px;
   text-align:center;
   background-color:white;
   height:200px;
   color:black;
}

h1,h2{

margin:auto;
 
}
</style>
</head>
<body>
<h1>MEMBER's SECTION</h1>

<h2>Find Details Of Books Or Members Using IDs:</h2>

 <form action="member" method="post">

<div class="card" style="width: 18rem;">

     <div class="card-body">
    <h1 class="card-title">Search Member-Details Using Id</h1>
<h2 class="card-subtitle mb-2 text-muted"><input type="text" name="id"/></h2>
<br>
<button type="submit" name="clicked" value="member-detail"  class="btn btn-primary btn-lg active">SEARCH-MEMBER</button>
</div><br><br>
<button type="submit" name="clicked" value="home"  class="btn btn-primary btn-lg active">HOME</button>
    </div> 
 
<div class="card" style="width: 18rem;">
     <div class="card-body">

    <h1 class="card-title">Search Books Using
<select class="mdb-select md-form colorful-select dropdown-primary-lg" name="search_type">
<option value="subject">Subject</option>
  <option value="title">Title</option>
  <option value="author">Author</option>
</select></h1>

<h2 class="card-subtitle mb-2 text-muted"><input type="text" name="search_key" /></h2>
<h1><button type="submit" name="clicked" id="book_id" value="book-detail"  class="btn btn-primary btn-lg active">SEARCH-BOOKS</button></h1>
</div>
 </div> 
    

</form>
</body>
</html>
