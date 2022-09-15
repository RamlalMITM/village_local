<%@page import="com.database.MyConnection"%>
<%@page import="com.dao.OrgDao"%>
<%@page import="com.entity.Org"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String mno = request.getParameter("mno");
	String nameOfOrg = request.getParameter("nameoforg");
	String pass = request.getParameter("pass");
	
	Org org = new Org(email,name,mno,nameOfOrg,pass);
	OrgDao orgDao = new OrgDao(MyConnection.getConnection());
	
	orgDao.saveOrg(org);
	
	response.sendRedirect("thankyou.jsp");
%>