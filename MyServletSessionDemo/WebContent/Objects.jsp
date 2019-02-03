<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Different Scopes for objects</title>
</head>
<body>


<%String userName = request.getParameter("name");
  if(userName != null && !userName.isEmpty()){
	  session.setAttribute("sessionName", userName);
	  //application.setAttribute("applicationName", userName);
	  pageContext.setAttribute("applicationName", userName, pageContext.APPLICATION_SCOPE);
	  pageContext.setAttribute("pageScope", userName);
	  pageContext.findAttribute("name");
  }	
		
%>

<br>
userName available in the request is <%=userName %>
<br>
userName available in session scope is <%=session.getAttribute("sessionName") %>
<br>
userName available in application scope is <%=application.getAttribute("applicationName") %>
<br>
userName available in page scope is : <%=pageContext.getAttribute("pageScope") %> 

</body>
</html>