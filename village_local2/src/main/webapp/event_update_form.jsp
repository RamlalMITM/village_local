<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.EventDao"%>
<%@page import="com.entity.Event"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String p1 = request.getParameter("id");
	int id = Integer.parseInt(p1);
	
	EventDao eventDao = new EventDao(MyConnection.getConnection());
	 
	Event event = eventDao.select(id);
	
%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Update</title>
</head>

<body>
    
<div class="container mt-5">
        <h4>Update Event Information carefully</h4>
        <form action="event_update.jsp" method="post">
            <input type="hidden" name="id" value="<%=event.getId()%>" />
            <div class="form-group">
              <label>Event Name</label>
              <input name ="ename" type="text" class="form-control" value="<%=event.getEventName()%>">
            </div>
            <div class="form-group">
                <label>Event Information</label>
                <textarea name ="einfo" class="form-control" rows="3"><%=event.getEventInfo()%></textarea>
            </div>
            <div class="form-group">
                <label>Event Location can't be edited</label> <!-- event.getEventLocation()%> -->
                <input name ="elocation" type="text" class="form-control" value="<%=event.getEventLocation()%>">
            </div>
            <div class="form-group">
                <label>Event Date</label>
                <input name ="edate" type="date" class="form-control" value="<%=event.getEventDate()%>" >
            </div>
            <div class="form-group">
                <label>Last Date Of Registration</label>
                <input name ="lregdate" type="date" class="form-control" value="<%=event.getEventLastDate()%>">
            </div>
            <div class="form-group">
                <label>Event Type</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="options" value="free" <% if(event.getEventOptions()=="Free"){%>checked <%}%>>
                    <label class="form-check-label">
                      Free
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="options" value="paid" <% if(event.getEventOptions()== "Paid"){%>checked<%}%>>
                    <label class="form-check-label">
                      Paid
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label>Event Start Time</label>
                <input name ="etime" type="time" class="form-control" value="<%=event.getEventTime()%>">
            </div>
            <button type="submit" class="btn btn-primary mb-5">Update</button>
        </form>
</div>

    <!-- bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </body>
</html>