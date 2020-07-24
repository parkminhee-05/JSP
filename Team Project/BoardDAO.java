package team;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	// 객체 내에서 사용 가능. static
	private static BoardDAO instance = new BoardDAO();
	// 멤버 변수 전역 변수로 선언
	public static BoardDAO getInstance() {
		return instance;
	}
	
	// 커넥션 풀
	private Connection getConnection() throws Exception{
		Connection con = null; // 초기화
		
		try {
			//1. Context 객체 생성
			Context initCtx = new InitialContext();
	
			//2. DataSource 객체 생성
			DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/jsPSK");
	
			//3. CP에서 connection 가져오기
			con = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	//insertBoard
	public void insertBoard(BoardDTO dto) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		
		//1. 커넥션 얻기	
		try {
			con = getConnection();
			
			//2. sql
			String sql = "INSERT INTO BOARD VALUES(?,?,?,?,?,?,?)";
			
			//3. sql 준비
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getBoard_id());
			pstmt.setString(2, dto.getCategory());
			pstmt.setString(3, dto.getTitle());
			pstmt.setString(4, dto.getContent());
			pstmt.setString(5, dto.getRegdate());
			pstmt.setString(6, dto.getUser_id());
			pstmt.setString(7, dto.getReadcount());
			//4. 실행
			pstmt.executeUpdate(); // 가져올 값이 하나도 없음
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	//listBoard
	public ArrayList<BoardDAO> listBoard() {
		//DB 검색 정보 저장을 위해 ArrayList 생성
		ArrayList<BoardDAO> dtos = new ArrayList<BoardDAO>();
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			String sql = "SELECT * FROM BOARD";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql); // 값을 가져옴
			
			while(rs.next()) {
				String board_id = rs.getString("board_id");
				String category = rs.getString("category");
				String title = rs.getString("title");
				String content = rs.getString("content");
				String regdate = rs.getString("regdate");
				String user_id = rs.getString("user_id");
				String readcount = rs.getString("readcount");
				// DTO로 포장
				BoardDTO dto = new BoardDTO(board_id, category, title, content, regdate, user_id, readcount);
				dtos.add(dto);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return dtos; //호출한 JSP 파일로 LoginDTO가 저장된 ArrayList 반환
	}
//updateBoard
public void updateBoard(String board_id, String category, String title, String content, String regdate, String user_id, String readcount) throws Exception{
	
	Connection con = null;
	PreparedStatement pstmt=null;
	try {
		con = getConnection();
		String sql = "update board set name=?, pwd=? where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, board_id);
		pstmt.setString(2, category);
		pstmt.setString(3, title);
		pstmt.setString(4, content);
		pstmt.setString(5, regdate);
		pstmt.setString(6, user_id);
		pstmt.setString(7, readcount);
	
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try { if(pstmt!=null) pstmt.close();
			  if(con!=null) con.close();
		}catch(Exception e) {e.printStackTrace();}
	}
}
//deleteBoard
	public void deleteBoard(String id) throws Exception{
		
		Connection con = null;
		PreparedStatement pstmt=null;
		try {
			con = getConnection();
			String sql = "delete from board where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(pstmt!=null) pstmt.close();
				 if(con!=null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
	}
}