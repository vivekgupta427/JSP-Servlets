<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.oracle.guptav.dto.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Successful</title>
</head>
<body>


<h3>You are logged in successfully !!</h3>

<%-- <%
	User user = (User)request.getAttribute("user");
%> --%>

<jsp:useBean id="user" class="org.oracle.guptav.dto.User" scope="request">

<jsp:setProperty property="userName" name="user" value="Newuser" />


</jsp:useBean>

<%-- Hello User ! <%=user.getUserName() %> --%>

Hello User ! <jsp:getProperty property="userName" name="user"/>

</body>
</html>