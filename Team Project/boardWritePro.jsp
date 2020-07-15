<%@ page import="java.sql.*"%> <!-- SQL -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- DB에 새로운 값 넣어주기 -->
<%@ page import="java.sql.*"%>  
<%
	request.setCharacterEncoding("euc-kr");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	String url ="jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	String board_id = request.getParameter("BOARD_ID");
	String category = request.getParameter("CATEGORY");
	String title = request.getParameter("TITLE");
	String regdate = request.getParameter("REGDATE");
	String user_id = request.getParameter("USER_ID");
	String readcount = request.getParameter("READCOUNT");
	
	try {	
		Connection conn = DriverManager.getConnection(url, user, passwd);
		//BOARD_ID 부분 : 게시글의 번호. 새 게시글 등록 시마다 자동 +1씩 증가. Oracle은 Sequence.
		String sql = "INSERT INTO BOARD(BOARD_ID,CATEGORY,TITLE,REGDATE,USER_ID,READCOUNT) VALUES(SEQ_ID.NEXTVAL,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, board_id);
		pstmt.setString(2, category);
		pstmt.setString(3, title);
		pstmt.setString(4, regdate);
		pstmt.setString(5, user_id);
		pstmt.setString(6, readcount);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
   self.window.alert("글이 등록되었습니다.");
   location.href="boardList.jsp"; 

</script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글 등록 완료</title>
</head>
<body>
	
</body>
</html>