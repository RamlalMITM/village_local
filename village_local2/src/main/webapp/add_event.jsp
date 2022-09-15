
<%@page import="java.util.List"%>
<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.EventDao"%>
<%@page import="com.entity.Event"%>

<% 
	String name = request.getParameter("ename");
	String info = request.getParameter("einfo");
	String location = request.getParameter("elocation");
	String edate = request.getParameter("edate");
	String lastDate = request.getParameter("lregdate");
	String options = request.getParameter("options");
	String etime = request.getParameter("etime");
	String eml = (String)session.getAttribute("e");
	
	Event event = new Event(name,info,location,edate,lastDate,options,etime,eml);
	EventDao eventDao = new EventDao(MyConnection.getConnection());
	
	eventDao.saveEventM(event);
	
	response.sendRedirect("org_login_form.jsp");
%>
