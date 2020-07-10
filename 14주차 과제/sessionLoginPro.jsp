<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="csdit.LoginDAO"%>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	LoginDAO dbPro = new LoginDAO();
	int check = dbPro.checkUser(id, pwd);
	
	if(check==1){ //id와 pwd가 딱 맞음
		Cookie cookie = new Cookie("id", id);
		cookie.setMaxAge(20*60);
		response.addCookie(cookie);
		response.sendRedirect("sessionMain.jsp");
	}else if(check==0){//비번을 잘못 입력했을 경우
}%>
<script>
	alert("비번을 잘못입력하셨습니다. 다시 로그인 화면으로 이동합니다.");
	location.href = "sessionLoginForm.jsp";
</script>