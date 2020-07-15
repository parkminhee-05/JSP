<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script language = "javascript"> // 유효성 검사
function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.title.value )   // form 에 있는 title 값이 없을 때
   {
    alert( "제목란에 공백이 있습니다." ); // 경고창 띄움
    form.title.focus();   // form 에 있는 title 위치로 이동
    return;
   }
 </script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글 작성하기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<body>
<table>
<form name=writeform method=post action="boardWritePro.jsp"> <!-- 작성된 정보 출력 페이지 -->
<div class="container">
  <h2>게시글 작성</h2>
  <p>욕설 및 비방하는 글은 경고 조치 됩니다.</p> 
  <hr>
       <div class="form-group">
    <label for="exampleFormControlInput1">카테고리</label>
      <select name='col'>
        <option value='title'>선택안함</option>
        <option value='title'>개</option>
        <option value='content'>고양이</option>
      </select>
          </div>
        <div class="form-group">
              <label for="exampleFormControlInput1">제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="title" placeholder="제목을 작성하세요." required autofocus>
          </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">내용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" name="contents" rows="10"></textarea>
          </div>
          <!-- 취소 버튼을 누를시 뒤로가기 코드 history.back() -->
        <input class="btn btn-secondary" style='float: left;' type="button" onclick="javascript:history.back(-1)" value="돌아가기">
          <!-- 등록 버튼을 누를시 writeCheck() 함수로 가서 검사를 하고 이상이 없을시 form.submit()으로 boardWritePro.jsp로 값을 보냄  -->
        <button type="submit" style='float: right;' class="btn btn-primary" onclick="javascript:writeCheck();">등록하기</button>
    </form>
    </div>
    </form>
   </table>
</body>
</html>
