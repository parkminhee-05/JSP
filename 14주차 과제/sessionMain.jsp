<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id="";
	try{
		id = (String)session.getAttribute("id");
		if(id==null||id.equals(""))
			response.sendRedirect("sessionLoginForm.jsp");
		else{
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>세션 회원인증</title>
</head>
<body>
	환영합니다.<br>
	<%=id %>님 로그인 하셨습니다.
	<input type="button" onclick="location.href='sessionLogout.jsp'" value="로그아웃">
</body>
</html>

<%
}
	}catch(Exception e) {
	e.printStackTrace();
}
%>