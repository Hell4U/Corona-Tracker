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
    if((request.getParameter("admin_btn")==null?false:true)){
//        out.println("done");

        String username=request.getParameter("admin_username");
        String password=request.getParameter("admin_password");
 //       out.println(username+"\n"+password);
 
        
    }
%>
