<%-- 
    Document   : connection
    Created on : 13 Apr, 2021, 3:03:44 PM
    Author     : ISHAN
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       <%
           try{
            Connection con=null;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net:3306/sql6405344","sql6405344","kNClFQPRil");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("SELECT * from ADMIN");
            
            while(rs.next()){
                out.println(rs.getString("USERNAME"));
            }
           } catch (Exception e){
               
           }
            
            
       %>
            
    </body>
</html>
