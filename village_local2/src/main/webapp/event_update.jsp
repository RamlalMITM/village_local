<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.EventDao"%>
<%@page import="com.entity.Event"%>
<% 
	String p1 = request.getParameter("id");
	int id = Integer.parseInt(p1);
	String name = request.getParameter("ename");
	String info = request.getParameter("einfo");
	String location = request.getParameter("elocation");
	String edate = request.getParameter("edate");
	String lastDate = request.getParameter("lregdate");
	String options = request.getParameter("options");
	String etime = request.getParameter("etime");
	
	Event event = new Event(id,name,info,location,edate,lastDate,options,etime);
	
	EventDao eventDao = new EventDao(MyConnection.getConnection());
	
	eventDao.update(event);
	
	response.sendRedirect("show_event.jsp");
%>