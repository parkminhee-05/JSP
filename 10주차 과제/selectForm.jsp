<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력</title>
</head>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">사용자 입력</h2>
		<hr/>
	
		<form action="selectPro.jsp">
			<div class="form-group">
				<label for="id">ID:</label>
				<input type="text" class="form-center" id="id" name="id">
			</div>
			<div class="form-group">
				<label for="id">SUBJECT:</label>
				<input type="text" class="form-center" id="subject" name="subject">
			</div>
			<div class="form-group">
				<label for="id">CONTENT:</label>
				<input type="text" class="form-center" id="content" name="content">
			</div>
			<div class="form-group">
				<label for="id">WRITER:</label>
				<input type="text" class="form-center" id="writer" name="writer">
			</div>
			<div class="form-group">
				<label for="id">REGDATE:</label>
				<input type="text" class="form-center" id="regdate" name="regdate">
			</div>
			<br>
			<div class="text-center">
				<button type="submit" class="btn btn-secondary">등록</button>
			</div>
		</form>
	</div>
	
</body>
</html>