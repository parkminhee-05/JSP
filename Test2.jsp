<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<% request.setCharacterEncoding("utf-8"); %> 
</head>
<body>
	<%
  String expression = request.getParameter("expression");
  
  String URL= ""; 
  switch(expression) {
  case "JDK":
   URL = "http://www.oracle.com";
   break;
  case "Tomcat":
   URL = "http://apache.org";
   break;
  case "Eclipse":
   URL = "http://eclipse.org";
   break;
  }
  
  response.sendRedirect(URL);
%>
</body>
</html>