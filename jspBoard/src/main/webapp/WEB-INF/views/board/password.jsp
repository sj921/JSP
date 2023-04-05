<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>${type}�� ���� ��й�ȣ�� �Է��ϼ���</title>
</head>
<body>
	<c:choose>
		<c:when test="${type == 'modify'}">
			${type} ��й�ȣ�� �Է����ּ���. <br>
			<form action="./modify" method="POST">
				<input name="user_pw" type="password" />
				<input name="board_id" type="hidden" value="${param.board_id}" />
				<input type="submit" value="confirm" />
			</form>
		</c:when>
		<c:when test="${type == 'delete'}">
			${type} ��й�ȣ�� �Է����ּ���. <br>
			<form action="./delete" method="POST">
				<input name="user_pw" type="password" />
				<input name="board_id" type="hidden" value="${param.board_id}" />
				<input type="submit" value="confirm" />
			</form>
		</c:when>
		<c:otherwise>
			�߸��� �����Դϴ�. <br>
			<a href="./list">������� ���ư���</a>
		</c:otherwise>	
	</c:choose>

<!-- 
${board_id} : attribute�� ���� ��
<'%=request.getParameter("board_id") %> : ���� ���� ���̴�!
${param.board_id}
 -->




</body>
</html>