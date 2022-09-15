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

    <title>Events</title>
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
  
    <div class="container mt-5 text-center">
    <h1>Thankyou for register as an organizer.</h1>
    <h4>We will send confirmation mail to you as soon as possible.</h4>
    </div>
    <br><br><br>
    <div class="container">
        <p>Onces we are confirm to you as an Organizer.
            Than you can share, Your Area Local Events on our Portal.
        </p>
        <h5>These are our services for an organizer.</h5>
        <li>You can share the events free.</li>
        <li>You can get register many pepole from our platform.</li>
        <li>You can delete, Update your event information.</li>
    </div>
    <!-- Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </body>
</html>