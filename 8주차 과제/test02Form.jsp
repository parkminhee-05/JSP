<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입력폼</title>
</head>
<style>
	table {
		border-width: 1px;
		border-style: dotted;
	}
	btn {
		text-align: center;
	}
	td {
		border-style: dotted;
	}
	a {
     color: blue;
     text-decoration: none;
  }
</style>
<body>
	<h2>글쓰기</h2>
	<hr>
	<form action="test02Pro.jsp" method="post">
	<table border="1">
	<tr>
	<td colspan="2" align="right"><a href="#">글목록</a></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><input type="text" name="title"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea cols="50" rows="10" name="content"></textarea></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd"></td>
	</tr>
		<tr>
		<td><input type="submit" id="btn" name="btn1" value="글쓰기">
		<input type="reset" id="btn" name="btn2" value="다시작성">
		<input type="button" id="btn" name="btn3" value="목록보기"></td>
		</tr>
</table>
</form>
</body>
</html>