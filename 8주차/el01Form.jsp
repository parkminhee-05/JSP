<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입력폼</title>
</head>
<body>
		<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<hr>
	<ul>
		<li> 학번 : ${param.number}</li>
		<li> 이름 : ${param["name"]}</li>
		<li> 학년 : ${"1학년"}</li>
		<li> ${"2학년"}</li>
		<li> 선택과목 : ${param["subject"]}</li>
    <li> ${"JSP"}</li>
	</ul>
</body>
</html>