<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 <%@ page isELIgnored="false"%>
<html>
   <head>
      <title> Tag Example</title>
   </head>

   <body>
  
  
 <%--  
      <c:set var = "salary" scope = "session" value = "${2000*2}"/>
      <p>Before Remove Value: <c:out value = " ${salary} "/></p>
        
        <c:remove var="salary "/>
        
        <p>After removing <c:out value="${salary }"/></p>
  --%>       
      <!--   Database Access -->
      
        <sql:setDataSource var="maroti" driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/test" user="root" password="root"/>
      
      <!-- Update records -->
      
      <%--  <sql:update var="result" dataSource="${maroti}">
        insert into student values(104,'abc', 'xyz');
       </sql:update> 
       --%> 
       
      <!-- delete records --> 
  <%--     
      <c:set var="empId" value="104"/> 
      <sql:update dataSource="${maroti}" var="count"> 
      DELETE FROM student WHERE Id = ? 
      <sql:param value="${empId}" /> 
      </sql:update>
      
      <!-- Select records from database table -->
      
        <sql:query var="result" dataSource="${maroti}">
        select * from student
        </sql:query>
      
     <!--  UseBean -->
     
     <jsp:useBean id="st" class="com.maroti.beans.Student"/>
     
     <jsp:setProperty property="id" name="st" value="101"/>
     <jsp:setProperty property="name" name="st" value="Maroti"/>
     <jsp:setProperty property="addr" name="st" value="Nanded"/>
      
      <jsp:getProperty property="id" name="st"/>
      <jsp:getProperty property="name" name="st"/>
      <jsp:getProperty property="addr" name="st"/>
      
        <table border="1" width="100%"> 
        <tr> 
        <th>ID</th>
         <th> Name</th>
          <th>Address</th> 
         </tr>
        <c:forEach var="row" items="${result.rows}">
        <tr>
         <td><c:out value="${row.id}"/></td>
          <td><c:out value="${row.name}"/></td>
           <td><c:out value="${row.addr}"/></td> 
           
            </tr>
        </c:forEach>
        </table>
   --%>
  <a href="./welcome">Register</a>
  
   </body>
</html>