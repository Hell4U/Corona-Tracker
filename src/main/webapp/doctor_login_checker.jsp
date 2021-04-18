<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<sql:setDataSource var="db" scope="application" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://sql6.freemysqlhosting.net:3306/sql6405344" user="sql6405344" password="kNClFQPRil" ></sql:setDataSource>

<%!
    String err="";
%>

<c:if test="${param.doctor_btn!=null}">
    <sql:query dataSource="${db}" var="rw">
             SELECT count(*) as cnt FROM DOCTOR WHERE USERNAME=?
             <sql:param  value="${param.doctor_username}"/>
    </sql:query>
    
    
             <c:forEach var="rd" items="${rw.rows}">
                 <c:choose>
                     <c:when test="${rd.cnt gt 0}">
                         <%
                             err="";
                         %>
                         
                         <sql:query var="rw2" dataSource="${db}">
                             SELECT * FROM PASSWORDCHANGE WHERE USERNAME=?
                             <sql:param value="${param.doctor_username}"/>
                         </sql:query>
                             
                             <c:forEach var="rd2" items="${rw2.rows}">
                                 <%
                                        session.setAttribute("username", request.getParameter("doctor_username"));
                                        application.setAttribute("username",request.getParameter("doctor_username"));
                                    %>
                                 <c:choose>
                                    
                                     <c:when test="${rd2.CHANGED eq 'NO'}">
                                         <c:redirect url="doctor_password_change.jsp">
                                             <c:param name="username" value="${rd2.USERNAME}">
                                                 
                                             </c:param>
                                         </c:redirect>
                                     </c:when>
                                     <c:otherwise>
                                         <c:redirect url="doctor_panel.jsp">
                                             <c:param name="username" value="${rd2.USERNAME}">
                                                 
                                             </c:param>
                                         </c:redirect>
                                     </c:otherwise>
                                 </c:choose>
                             </c:forEach>
                         
                         
                     </c:when>
                     <c:otherwise>
                          <%
                             err="USER NOT REGISTERED";
                         %>
                     </c:otherwise>
                 </c:choose>
             </c:forEach>
             
</c:if>
