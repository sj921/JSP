<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
	<c:if test="${sessionScope.login eq 'yes'}">
		<h3>�̹� �α��ε� �����Դϴ�.</h3>
	</c:if>

	<c:if test="${sessionScope.login ne 'yes'}">
		<form action="./submit" method="POST">
			���̵� <input type="text" name="user_id"
				value="${cookie.user_id.value }" /> <br>
			��й�ȣ <input type="password" name="user_pw" /> <br>
			<input type="submit" value="�α���" /> 
		���̵� ����ϱ� <input type="checkbox" name="remem" />
		</form>
	</c:if>
		
	<hr>

	<ul>
		<li>�α����� �õ��ϸ� �α��� ��� �������� �Ѿ��.</li>
		<li>
			�α��ο� ������ ���,
			������ ���� �������� �α��� �������� �̹� �α��� �Ǿ����ϴ�. ��� ������ �Ѵ�
		</li>
		<li>
			���̵� ����ϱ⸦ üũ�� ���·�
			�ش� ���̵�� �α����� ������ ���
			���� ���� �� ������ �α��� �������� �ٽ� ���͵� 30�ϰ���
			���̵� ������ �ԷµǾ��ֵ��� ��������
		</li>
		<li>DB ����� �� (ȸ�������� insert�� �� ��)</li>
	</ul>		
	
</body>
</html>