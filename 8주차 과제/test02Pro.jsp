<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> <!-- 한글 변환 -->
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
	<jsp:setProperty property="*" name="m"/>
	
		<table border="1">
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="m"/></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><jsp:getProperty property="title" name="m"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="m"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><jsp:getProperty property="content" name="m"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty property="pwd" name="m"/></td>
		</tr>
	</table>
</body>
</html>