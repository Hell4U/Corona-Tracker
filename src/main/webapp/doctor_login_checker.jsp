<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@include file="connection.jsp" %>

<%!
    Connection con=ConnectionUtil.getConnection();
%>

<%!
    String err="";
%>

<%
    if((request.getParameter("doctor_btn")==null?false:true)){
//        out.println("done");

        String username=request.getParameter("doctor_username");
        String password=request.getParameter("doctor_password");
 //       out.println(username+"\n"+password);
%>

<c:

