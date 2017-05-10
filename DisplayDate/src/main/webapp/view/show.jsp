<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Date</title>
</head>
<body>
<%
response.setIntHeader("Refresh", 5);

Calendar cal = new GregorianCalendar();
String am_pm;
int hour = cal.get(Calendar.HOUR);
int minute = cal.get(Calendar.MINUTE);
int second = cal.get(Calendar.SECOND);
if(cal.get(Calendar.AM_PM)==0)
{
	am_pm="AM";
}else{
	am_pm="PM";
}

String ct = hour+":"+minute+":"+second+" "+am_pm;
out.print("Current Time is : " +ct);

%>
</body>
</html>