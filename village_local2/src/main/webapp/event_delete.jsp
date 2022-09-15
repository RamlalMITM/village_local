
<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.EventDao"%>

<%
	String p1 = request.getParameter("id");
	int id = Integer.parseInt(p1);
	EventDao eventDao = new EventDao(MyConnection.getConnection());
	eventDao.delete(id);

	response.sendRedirect("show_event.jsp");
%>