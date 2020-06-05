<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입력폼</title>
</head>
<body>
	<h2>글쓰기</h2>
	<hr>
	<ul>
		<li> 글목록</li>
		<li> 이름 : ${param.name }</li>
		<li> 제목 : ${param["title"] }</li>
		<li>이메일 : ${param["email"] }</li>
		<li>내용 : ${param["content"] }</li>
		<li>비밀번호 : ${param["pwd"] }</li>
	</ul>
</body>
</html>