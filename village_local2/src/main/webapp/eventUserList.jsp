<%@page import="java.util.List"%>
<%@page import="com.entity.EventUser"%>
<%@page import="com.database.MyConnection"%>
<%@page import="java.awt.desktop.UserSessionEvent"%>
<%@page import="com.dao.EventUserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	
	String p1 = request.getParameter("id");
	int id = Integer.parseInt(p1);
	EventUserDao eventUserDao = new EventUserDao(MyConnection.getConnection());
	List<EventUser>ls = eventUserDao.selectAll(id);	
	
%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>List Of Register</title>
  </head>
  <body>
    
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">Mobile</th>
          <th scope="col">City</th>
        </tr>
      </thead>
      <tbody>
        <%
				for(EventUser e : ls){
		%>
        <tr>
          		  <td><%=e.getName()%></td>
				  <td><%=e.getEmail()%></td>
				  <td><%=e.getMno()%></td>
				  <td><%=e.getCity()%></td>
        </tr>
        <% } %>
      </tbody>
    </table>
    <button class="btn btn-light"><a href="add_event_form.jsp">Add Event</a></button>
    <button class="btn btn-light"><a href="show_event.jsp">Back</a></button>
    <!-- Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </body>
</html>