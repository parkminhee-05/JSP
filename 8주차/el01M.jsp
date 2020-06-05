<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입력결과폼</title>
</head>
<body>
	<h2>학생정보</h2>
	<hr>
	
	<jsp:useBean id="m" class="ch10.Member01"/>
	<jsp:setProperty property="*" name="m" value="${param.v }"/>
	
	<br>
	변수값 1 : ${pageScope.member.number }<br>
	변수값 2 : ${member.number }<br>
	<br>
	변수값 1 : ${pageScope.member.name }<br>
	변수값 2 : ${member.name }<br>
	<br>
	변수값 1 : ${pageScope.member.grade }<br>
	변수값 2 : ${member.grade }<br>
	<br>
	변수값 1 : ${pageScope.member.subject }<br>
	변수값 2 : ${member.subject }<br>
</body>
</html>