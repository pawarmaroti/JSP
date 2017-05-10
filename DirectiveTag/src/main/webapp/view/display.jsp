<!-- Page directives -->
<%@ page extends="org.apache.jasper.runtime.HttpJspBase" %>
<%@ page info="Home Page JSP" %>
<%@ page buffer="16kb" %>
<%@ page language="java" %>
<%@ page isELIgnored="true" %>
<%@ page isThreadSafe="false" %>
<%@ page errorPage="errorHandler.jsp" %>
<%@ page isErrorPage="true" %>
<%@ page autoFlush="false" %>
<%@ page session ="false" %>
<%@ page trimDirectiveWhitespaces ="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>

</head>
<body>
<h1>Display page</h1>
<!-- include directive -->
<%@ include file="/view/time.jsp" %>

<!-- JSP action -->
<jsp:include page="/view/time.jsp"></jsp:include>

<jsp:useBean id="m" class="com.maroti.jsp.beans.Message">
</jsp:useBean>

<jsp:setProperty property="msg" name="m" value="Hello User"/>


</body>
<h1><jsp:getProperty property="msg" name="m"/></h1>

</body>
</html>