<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>
<jsp:useBean id="std" class="com.maroti.beans.Student"></jsp:useBean>
<jsp:setProperty property="*" name="std"/>

<pre>
id           : <jsp:getProperty property="id" name="std"/>
Name 	  : <jsp:getProperty property="name" name="std"/>
Address : <jsp:getProperty property="addr" name="std"/>
</pre>
</body>
</html>