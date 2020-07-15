<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. Context 객체 생성
	Context initCtx = new InitialContext();

	//2. DataSource 객체 생성
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/jsPSK");


	//3. CP에서 connection 가져오기
	Connection con = ds.getConnection();
	
	String sql = "SELECT * FROM BOARD";
	Statement st = con.createStatement();
	
	//4.반환 객체
	ResultSet rs = st.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유 게시판</title>
	<!-- 부트스트랩 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>자유게시판</h2>
  <p>자유롭게 소통하는 공간입니다. 서로 간의 배려와 존중을 지켜주세요.</p> 
  <hr>
  <!-- 검색 기능 -->         
  <div class='aside_menu'>
  <form name='search' method='post' action="boardList.jsp"> <!-- 검색을 어떤 걸로 할지 col 값과 검색 값 word를 자기자신에 보내서  List를 출력 --> 
    <aside style='float: right;'>
      <select name='col'>
        <option value='title'>제목</option>
        <option value='regdate'>카테고리</option>
        <option value='user_id'>작성자</option>
      </select>
      <input type='text' name='word' value=''>
      <button type='submit'>검색</button>    
    </aside> 
  </form>
  <div class='menu_line' style='clear: both;'></div>
</div>
  <table class="table table-hover">
      <tr>
        <th>번호</th>
        <th>카테고리</th>
        <th>제목</th>
        <th>작성일</th>
        <th>작성자</th>
        <th>조회수</th>
      </tr>
<%//5.결과 집합 처리
		while(rs.next()){
			String board_id = rs.getString("BOARD_ID");
			String category = rs.getString("CATEGORY");
			String title = rs.getString("TITLE");
			//String content = rs.getString("CONTENT");
			String regdate = rs.getString("REGDATE");
			String user_id = rs.getString("USER_ID");
			String readcount = rs.getString("READCOUNT");
%>	
		<tr>
			<td><%=board_id %></td>
			<td><%=category %></td>
			<td><%=title %></td>
			<td><%=regdate %></td>
			<td><%=user_id %></td>
			<td><%=readcount %></td>
<%} 
	//6.객체 해지
		rs.close(); //가장 작은 것부터
		st.close();
		con.close();
%>	
		</tr>				
  </table>
  <!-- 글쓰기 버튼 클릭 시 글 작성 폼으로 이동/onclick 메소드 -->
	<input class="btn btn-primary" style='float: right;' type="button" onclick="location.href='boardWriteForm.jsp'" value="글쓰기">
  </div>
</body>
</html>