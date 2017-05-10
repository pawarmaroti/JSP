<%@page import="java.util.ArrayList"%>
<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Expression language tag</title>
</head>
<body>
<%
ArrayList<String> name = new ArrayList<String>();
name.add("Jagruti");
name.add("Nanded");
pageContext.setAttribute("name", name);

%>
<strong>RequestScope Example : </strong>${requestScope.person} </br>
<strong>without RequestScope Example : </strong>${person} </br>
<strong>SessionScope Example : </strong>${sessionScope.employee.addres.address} </br>
<strong>Cookies Scope Example : </strong>${cookie["user"].value} </br>
<strong>ApplicationScope Example : </strong>${applicationScope.user} </br>
<strong>ArrayList Example : </strong>${name[1]} </br>
<strong>Header Example : </strong>${header["Accept"]} </br>
<strong>pageContext Example : </strong>${pageContext.request.method} </br>
<strong>pageContext path Example : </strong>${pageContext.request.contextPath} </br>
<strong>Context param Example : </strong>${initParam.MyId} </br>
<strong>param example : </strong>${param.name} </br>
</body>
</html>