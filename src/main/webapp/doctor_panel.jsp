<%-- 
    Document   : doctor_panel
    Created on : Apr 18, 2021, 8:18:10 PM
    Author     : Neel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(session.getAttribute("username")==null)
        response.sendRedirect("doctor_login.jsp");
%>
<%!
    String user;
%>
<%
    user=(String)application.getAttribute("username");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Panel</title>
    </head>
    <body>
        <h1>Hello <%=user%></h1>
        <a href="doctor_logout.jsp">Logout</a>
    </body>
</html>
