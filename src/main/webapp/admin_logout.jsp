<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>        

<%
    HttpSession sd=request.getSession(false);
    sd.invalidate();
    response.sendRedirect("admin_login.jsp");
%>