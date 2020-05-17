<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>주식회사</title>
	<link rel='stylesheet' href='stylesheets.css'><!-- 외부 스타일시트 파일 로드 -->
</head>
<body>
	<header>
		<jsp:include page='top.jsp' flush='false'/><!-- body가 없는 경우: 시작태그에 종료태그 포함 -->
	</header>
<!-- flush: 제어가 이동될 때 출력 버퍼에 저장 결과를 처리하는 방식, "false" : default 값 -->
	<div id='content'>
		<section id='areaSub'>
			<jsp:include page='left.jsp' flush='false'/>
		</section>
	
		<section id='areaMain'>
			<jsp:include page='content.jsp' flush='false'/>	
		</section>
	</div>
	
	<footer>
		<jsp:include page='bottom.jsp' flush='false'/>
	</footer>
	
</body>
</html>