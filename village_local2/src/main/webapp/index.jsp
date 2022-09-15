<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.EventDao"%>
<%@page import="com.entity.Event"%>

<% 	
	//Get connection and store data in ls from db.
	EventDao eventDao = new EventDao(MyConnection.getConnection());
	List<Event>ls = eventDao.selectAll();
%>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Home</title>
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
 
<div class="container text-center mt-5">
    <%
		for(Event e : ls){
	%>
	 <form action="user_reg_form.jsp" method="post">
     	<div class="card" style="width: 100%;">
        	<div class="card-body">
        		<input type="hidden" name="idts" value="<%=e.getId()%>" />
          		<h5 class="card-title"><%=e.getEventName()%></h5>
          		<p class="card-text"><%=e.getEventInfo()%></p>
        	</div>
        <table class="table">
          <tbody>
            <tr>
              <th>Location</th>
              <td><%=e.getEventLocation()%></td>
            </tr>
            <tr>
              <th>EventDate</th>
              <td><%=e.getEventDate()%></td>
            </tr>
            <tr>
              <th>LastDate</th>
              <td><%=e.getEventLastDate()%></td>
            </tr>
            <tr>
              <th>Type</th>
              <td><%=e.getEventOptions()%></td>
            </tr>
            <tr>
              <th>StartTime</th>
              <td><%=e.getEventTime()%></td>
            </tr>
          </tbody>	
        </table>
        </div>
        <button type="submit" class="btn btn-dark mt-5">Register</button>
       	</form>
       	<br><br>	
      <% } %>
</div> 

    <!-- Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>

</html>