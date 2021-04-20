<%-- 
    Document   : doctor_logout
    Created on : Apr 20, 2021, 5:59:57 PM
    Author     : Neel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sd=request.getSession(false);
    sd.invalidate();
    application.removeAttribute("username");
    response.sendRedirect("index.html");
%>
