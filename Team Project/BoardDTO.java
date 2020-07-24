package team;

public class BoardDTO {
	private String board_id;
	private String category;
	private String title;
	private String content;
	private String regdate;
	private String user_id;
	private String readcount;
	
	public BoardDTO() {}
	
	public BoardDTO(String board_id, String category, String title, String content, String regdate, String user_id,
			String readcount) {
		super();
		this.board_id = board_id;
		this.category = category;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.user_id = user_id;
		this.readcount = readcount;
	}

	public String getBoard_id() {
		return board_id;
	}
	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReadcount() {
		return readcount;
	}
	public void setReadcount(String readcount) {
		this.readcount = readcount;
	}
	
	
}
