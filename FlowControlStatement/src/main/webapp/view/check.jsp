<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check weekend</title>
</head>
<body>

<!-- if condition -->

<%-- <% int day = Integer.parseInt(request.getParameter("day"));
if(day==1 | day==7)
{%>
	<h1>Today is weekend</h1>
<%}else{ %>
	<h1>Today is not weekend</h1>
<% }%> --%>


<!-- switch case -->

<%-- <%int day=Integer.parseInt(request.getParameter("day"));
switch(day)
{
case 1: out.print("Monday");
break;
case 2 : out.print("Tuesday");
break;
case 3: out.print("Wednesday");
break;
case 4 : out.print("Thrusday");
break;
case 5: out.print("Frieday");
break;
case 6 : out.print("Saturday");
break;
case 7 : out.print("Sunday");
break;
default: out.print("Invalid day entry");

}%>
 --%>
 
<%int day=Integer.parseInt(request.getParameter("day"));
while(day<7)
 {
	if(day==1)
	{
		out.println("Monday");
	}else if(day==2){
		out.println("Tuesday");
		
	}else if(day==3)
	{
		out.println("Wednesday");
	}else if(day==4){
		out.println("Thrusday");
		
	}else if(day==5)
	{
		out.println("Frieday");
	}else if(day==6){
		out.println("Saturday");
		
	}else {
		out.println("Sunday");
	}
	
	day++;
 }%>
 

 
 
</body>
</html>