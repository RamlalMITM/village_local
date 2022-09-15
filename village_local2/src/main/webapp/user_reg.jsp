<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.EventUserDao"%>
<%@page import="com.entity.EventUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 
	String s = request.getParameter("ids");
	int p1 = Integer.parseInt(s);
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String mno = request.getParameter("mno");
	String city = request.getParameter("city");
	
	EventUser eventUser = new EventUser(p1,email,name,mno,city);
	
	EventUserDao eventUserDao = new EventUserDao(MyConnection.getConnection());
	
	eventUserDao.saveEventUser(eventUser);
	
	response.sendRedirect("thanks.jsp");
	
%>