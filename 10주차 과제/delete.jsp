<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");

//연결 정보와 SQL
String url ="jdbc:oracle:thin:@localhost:1521/xepdb1";
String user = "JSP";
String passwd = "1111";

//1.DB 연동 드라이브 로드
Class.forName("oracle.jdbc.driver.OracleDriver");

//2.연결 객체 생성
Connection con = DriverManager.getConnection(url, user, passwd);

//3.생성된 연결을 통해 SQL문 실행 의뢰 준비
String sql = "DELETE FROM BOARD WHERE ID=?";

PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, request.getParameter("id"));

//4.SQL 실행
int i = pstmt.executeUpdate();

//5.객제 해지
pstmt.close();
con.close();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>