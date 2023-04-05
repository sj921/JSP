<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>${board.write_title }</title>
</head>
<body>

	글 번호 : ${board.board_id } <br>
	글 제목 : ${board.write_title } <br>
	글쓴이 : ${board.write_id } <br>
	글 내용 : <br>
	<textarea cols="30" row="10" readonly >${board.write_content }</textarea> <br>
	추천 수 : ${board.write_recommand } <br>
	비추 수 : ${board.write_not_recommend } <br>
	조회 수 : ${board.write_view } <br>
		
	<button onclick="location.href='./list?page=1'">글 목록</button>
	<button onclick="location.href='./modify?board_id=${board.board_id}'">글 수정</button>
	<button onclick="location.href='./delete?board_id=${board.board_id}'">글 삭제</button>
	
</body>
</html>