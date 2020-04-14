<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); 

   String team = request.getParameter("team");
   String name = request.getParameter("name");
   String adress = request.getParameter("adress");
   String start = request.getParameter("start");
   String finish = request.getParameter("finish");
   String hobby = request.getParameter("hobby");
   String text = request.getParameter("text");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	table {
    width: 50%;
    border: 1px solid #444444;
    border-collapse: collapse;
    border: 1px dotted black;
  }
  th, td {
    border: 1px solid #444444;
    border: 1px dotted black;
  }
	</style>
</head>
<body>
	<h2>사용자 입력 확인</h2>
	<table>
		<tr>
			<td>컨트롤 요소</td>
			<td>입력값</td>
		</tr>
		<tr>
			<td>소속</td>
			<td><%=team %></td>
		</tr>
		<tr>
			<td>성명</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>현주소</td>
			<td><%=adress %></td>
		</tr>
		<tr>
			<td>입사년월일</td>
			<td><%=start %></td>
		</tr>
		<tr>
			<td>최종학력</td>
			<td><%=finish %></td>
		</tr>
		<tr>
			<td>자격증</td>
			<td>
			<%
			String[] hobby=request.getParameterValues("hobby");
			for(int i=0; i<hobby.length; i++){
				out.println(hobby[i] + " ");
			}
			%>
			</td>
		</tr>
		<tr>
			<td>상담내용</td>
			<td><%=text %></td>
		</tr>
		<tr>
			<td>각 폼 컨트롤의 이름들</td>
			<td>dept name addr startDate certificate content</td>
		</tr>
	</table>
</body>
</html>