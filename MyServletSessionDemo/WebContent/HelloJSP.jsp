<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My First JSP Page</title>
</head>
<body>

<!-- This is called definition script tag -->
<%!
	public int add(int i, int j){
	return i+j;
	}

%>
<!-- This is called initialization scriptlet tag -->
<% int i =11;
	int j =22;
	int k;
	
	k = i+j;
%>
<br>
The value of the k is: <%=add(i,j) %>


<% for(i=0;i<5;i++){ %>

<br> the value of the i is : <%= i %>

<%	} %>



<h3>Hello This is first JSP page</h3>

</body>
</html>