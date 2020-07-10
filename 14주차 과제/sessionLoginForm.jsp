<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<meta name="viewport" content="width-device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>로그인</h2>
		
		<form action="sessionloginPro.jsp" method="post">
			<div class="form-group">
				아이디 : <input class="form-control" type="text" name="id"><br>
			</div>
			<div class="form-group">
				암호 : <input class="form-control" type="password" name="pwd"><br>
			</div>
			<input class="btn btn-primary" type="submit" value="확인">
			<input class="btn btn-primary" type="reset" name="재설정">
			<input type="button" value="회원가입"
				onclick="location.href='insertMemberForm.jsp'">
		</form>
	</div>
</body>
</html>