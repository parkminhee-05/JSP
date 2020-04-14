<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력 폼</title>
<style>
  table {
    width: 50%;
    border: 1px solid #444444;
    border-collapse: collapse;
    border: 1px dotted black;
  }
  th, td {
    border: 1px solid #444444;
    border: 1px dotted black;
  }
</style>
</head>
<body>
	<h2>개인면담 카드</h2>
	<form action ="TestPro.jsp" method="post">
	<hr>
	<table border="1">
		<tr>
		<td align="center">소속</td>
		<td><input type="text" name="team"></td>
		</tr>
		
		<tr>
		<td align="center">성명</td>
		<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
		<td align="center">현주소</td>
		<td><input type="text" name="adress"></td>
		</tr>
		
		<tr>
		<td align="center">입사년월일</td>
		<td><input type="date" name="start"></td>
		</tr>
		
		<tr>
		<td align="center">최종학력</td>
		<td><input type="radio" name="finish" value="Middle">중졸
		<input type="radio" name="finish" value="high">고졸
		<input type="radio" name="finish" value="junior">전문대졸
		<input type="radio" name="finish" value="university">대졸</td>
		</tr>
		
		<table border="1">
		<fieldset>
			<legend>자격증</legend>
			<input type="checkbox" name="hobby" value="car">자동차2종
			<input type="checkbox" name="hobby" value="information">정보처리산업기사
			<input type="checkbox" name="hobby" value="computer">컴퓨터활용
			<input type="checkbox" name="hobby" value="ect">기타
			
			<td>상담내용 <textarea name = "text" rows="7" cols="40"></textarea></td>
			
			<table border="1">
			<td align="center"><button type="submit">입력완료</button>
			<button type="submit">다시입력</button></td>
				</table>
		</fieldset>
	</table>
	</table>
	</form>
</body>
</html>