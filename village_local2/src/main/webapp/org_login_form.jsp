<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Login</title>
</head>

<body>

<!-- Navigation -->

<nav class="navbar navbar-expand-lg navbar-light bg-light">
     <a class="navbar-brand" href="index.jsp">CITY-EVENTS</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
     </button>
    
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="org_login_form.jsp">Organizer</a>
          </li>
        </ul>
        <form action="search.jsp" method="post" class="form-inline my-2 my-lg-0">
          <input name="city" class="form-control mr-sm-2" type="search" placeholder="Enter City" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0"  type="submit">Search</button>
        </form>
     </div>
</nav>
<!-- Navigation End -->
    
<div class="container mt-5">
    <!-- form start -->
    <form action="org_login.jsp" method="post">
        <div class="form-group">
          <label>Email address</label>
          <input id ="name" name="email" type="email" class="form-control"aria-describedby="emailHelp" value="">
          <small class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
          <label>Password</label>
          <input id="pass" name="pass" type="password" class="form-control" value="">
        </div>
        <div class="form-group form-check">
          <input type="checkbox" class="form-check-input">
          <label class="form-check-label">Check me out</label>
        </div>
        <div class="container text-center">
          <button id ="val" type="submit" class="btn btn-primary">Login</button><br><br>
          <a href="org_reg_form.jsp">Became an Organizer</a>
        </div>
      </form>
      <!-- form ends -->
</div>

    <!-- Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script>
    	
    </script>
</body>
</html>