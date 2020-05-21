<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% response.setStatus(HttpServletResponse.SC_OK); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>500 Internal Server Error</title>
</head>
<body>
	<h2>웹 사이트에서 페이지를 표시할 수 없습니다.</h2><br>
	<hr>
		<b>가능성이 높은 원인:</b><br>
		<ul>
			<li>퍼미션 관련 오류</li>
			<li>서버 통신의 시간 지연 오류</li>
			<li>서버 트래픽 과부하</li>
		<li>서버 언어의 구문 에러</li>
		</ul>
		찾고 있는 리소스에 문제가 있어 표시할 수 없습니다.<br>
		잘못된 스크립트의 실행 또는 내부서버의 오류로 인해 현재 서버의 상태가 원활하지 않습니다.<br>
		시스템 관리자에게 문의하시기 바랍니다.<br>
		<a href="http://localhost:8000/jsptest/6%EC%A3%BC%EC%B0%A8/error/500code.jsp">여기를 눌러 페이지를 새로고칩니다.</a><br>
		<img src="https://www.bglrt.com/_res/default/img/error/500.png" width="600" height="300" /><br> <!-- 이미지 주소 복사 -->
</body>
</html>