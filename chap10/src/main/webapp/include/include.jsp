<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �����ϱ�</title>
</head>
<body>

	<h3># include�� ���� ���� �����ϱ�</h3>
	
	<ul>
		<li>
			JSP include : 
				������ó�� request/response�� �ٸ� jsp�� ���´ٰ� �ٽ� ���ƿ��� ��� <br>
				(���� ���¿��� ��û�� ���� ������ ������ ����� ����Ѵ�.) <br>
				pageContext�� ����ϱ� �����
		</li>
		<li>
			File include : 
				�ش� ���� ������ �о jsp ���ο� ���Խ�Ű�� ��� <br>
				(������ ������ ���� ������ ���Խ��ѹ��� �Ŀ� �������� �����Ѵ�.)  <br>
				pageContext�� ����� �� �ִ�
		</li>
	</ul>

	<a href="./main.jsp">/include/main ������ ���� ����</a>
	<a href="../file_include/main.jsp">/file_include/main ������ ���� ����</a>

</body>
</html>