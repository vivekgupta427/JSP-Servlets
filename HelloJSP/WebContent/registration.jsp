<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="org.oracle.guptav.dto.User" scope="request">
	<jsp:setProperty property="*" name="user"  />
</jsp:useBean>

Hello ! <jsp:getProperty property="userName" name="user"/>
<br> These are your personal details: 
<br> User Name :<jsp:getProperty property="userName" name="user"/>
<br>Address Line 1 :<jsp:getProperty property="addressLine1" name="user"/>
<br>City :<jsp:getProperty property="city" name="user"/>
<br>State :<jsp:getProperty property="state" name="user"/>
<br>Country :<jsp:getProperty property="country" name="user"/>

</body>
</html>