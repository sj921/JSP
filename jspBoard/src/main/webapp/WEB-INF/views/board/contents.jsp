<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>${board.write_title }</title>
</head>
<body>

	�� ��ȣ : ${board.board_id } <br>
	�� ���� : ${board.write_title } <br>
	�۾��� : ${board.write_id } <br>
	�� ���� : <br>
	<textarea cols="30" row="10" readonly >${board.write_content }</textarea> <br>
	��õ �� : ${board.write_recommand } <br>
	���� �� : ${board.write_not_recommend } <br>
	��ȸ �� : ${board.write_view } <br>
		
	<button onclick="location.href='./list?page=1'">�� ���</button>
	<button onclick="location.href='./modify?board_id=${board.board_id}'">�� ����</button>
	<button onclick="location.href='./delete?board_id=${board.board_id}'">�� ����</button>
	
</body>
</html>