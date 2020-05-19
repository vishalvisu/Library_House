<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">{name}</h5>
    <!-->h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6-->
    <table class="table table-hover table-dark">
    <tr>
      <td>Unique-Id</td> <td>{id}</td>
    </tr>
    <tr>
      <td>Department</td><td>{dept}</td>
    </tr>
    <tr>
      <td>Stream</td><td>{stream}</td>
    </tr>
    <tr>
      <td>Session</td><td>{session}</td>
      </tr>
  </tbody>
</table>
  </div>
</div>

</body>
</html>