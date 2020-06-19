<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>DB에 로그인 데이터 변경</h2>
	
	<form action="updatePro.jsp" method="post">
		ID:<input type="text" name="id" value="<%=id %>"><br>
		SUBJECT:<input type="text" name="subject" ><br>
		CONTENT:<input type="text" name="content"><br>
		WRITER:<input type="text" name="writer"><br>
		REGDATE:<input type="text" name="regdate"><br>
		
		<input type="submit" value="변경">
		<input type="button" value="삭제" onClick="location.href='delete.jsp?id=<%=id%>'">
		<input type="reset" value="재설정">
	</form>
</body>
</html>