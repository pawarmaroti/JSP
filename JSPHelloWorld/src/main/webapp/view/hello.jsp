<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World</title>
</head>
<body>
<%String msg="Hello World";
	String name=request.getParameter("name");
%>
<h1><%=msg + " : " + name %></h1>
<h1>Today's date : <%=new Date().toLocaleString()%></h1>
</body>
</html>