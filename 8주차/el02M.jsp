<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입력결과폼</title>
</head>
<body>
	<h2>결과</h2>
	<hr>
	<jsp:useBean id="m" class="ch10.Member02"/>
	<jsp:setProperty property="*" name="m" value="${param.v }"/>
	
	<br>
	변수값 1 : ${pageScope.member.name }<br>
	변수값 2 : ${member.name }<br>
	<br>
	변수값 1 : ${pageScope.member.title }<br>
	변수값 2 : ${member.title }<br>
	<br>
	변수값 1 : ${pageScope.member.email }<br>
	변수값 2 : ${member.email }<br>
	<br>
	변수값 1 : ${pageScope.member.content }<br>
	변수값 2 : ${member.content }<br>
	<br>
	변수값 1 : ${pageScope.member.pwd }<br>
	변수값 2 : ${member.pwd }<br>
</body>
</html>