
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.OrgDao"%>
<%@page import="com.entity.Org"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp"%>

<%
	String eml = request.getParameter("email");
	String ps = request.getParameter("pass");
	
	OrgDao orgDao = new OrgDao(MyConnection.getConnection());
	ResultSet r = null;

	r = orgDao.login(eml, ps);
	
	if(r.next()){
		session.setAttribute("e", eml);
		response.sendRedirect("show_event.jsp?eml");
	}else{
		response.sendRedirect("error.jsp");
	}
%>