
<%@page import="java.util.List"%>
<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.EventDao"%>
<%@page import="com.entity.Event"%>


<% 	
	String eml = (String)session.getAttribute("e");
	System.out.println(eml);
	EventDao eventDao = new EventDao(MyConnection.getConnection());
	List<Event>ls = eventDao.selectAll(eml);	
%>



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
    
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Event Name</th>
          <th scope="col">Info</th>
          <th scope="col">Location</th>
          <th scope="col">Date</th>
          <th scope="col">Last Date</th>
          <th scope="col">Type</th>
          <th scope="col">Time</th>
          <th scope="col">Update</th>
          <th scope="col">Delete</th>
          <th scope="col">ListOfReg</th>
        </tr>
      </thead>
      <tbody>
        <%
				for(Event e : ls){
			  %>
        <tr>
          <td><%=e.getEventName()%></td>
				  <td><%=e.getEventInfo()%></td>
				  <td><%=e.getEventLocation()%></td>
				  <td><%=e.getEventDate()%></td>
				  <td><%=e.getEventLastDate()%></td>
				  <td><%=e.getEventOptions()%></td>
				  <td><%=e.getEventTime()%></td>
				  <td><a href="event_update_form.jsp?id=<%=e.getId()%>" >update</a> </td>
				  <td><a href="event_delete.jsp?id=<%=e.getId()%>" >delete</a> </td>
				  <td><a href="eventUserList.jsp?id=<%=e.getId()%>" >listOfReg</a> </td>
        </tr>
        <% } %>
      </tbody>
    </table>
    <button class="btn btn-light"><a href="add_event_form.jsp">Add Event</a></button>
    <button class="btn btn-light"><a href="index.jsp">Logout</a></button>
    <!-- Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </body>
</html>