<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� �����ϱ�</title>
</head>
<body>

	<form action="./modify/do" method="POST">
	�۾��� : 
	<input type="text" name="write_id" value="${board.write_id}" readonly />
	�� ���� : 
	<input type="text" name="write_title" size="60" value="${board.write_title}" /> <br>		
	�� ���� : <br>
	<textarea name="write_content" cols="60" rows="10">${board.write_content}</textarea> <br>
	<input type="hidden" name="board_id" value="${board.board_id}" />
	<input type="submit" value="Modify" />
	</form>


</body>
</html>