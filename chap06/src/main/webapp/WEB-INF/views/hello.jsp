<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>Hello</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/hello.css" />	
</head>
<body>

	<h1>Hello, ${name }</h1>
	
	<p>
		HTML(jsp ����), CSS, Javascript, image ���� �ڿ�����
		������ ��û�� ���� �޾ƿ��� ���� �ڿ�(static resource)���̴�	
	</p>
		
	<!-- ��, web.xml�� �������� �� ��, @WebServlet�� ���� -->
	<a href="<%=request.getContextPath() %>/gugudan">������ ��������</a> <br>

	<img width="300" src="http://image.dongascience.com/Photo/2021/04/fc81468453c393247ab7866eecd520b2.JPG" alt="���" /> <br>
	
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/apple.jpg" alt="���" /> <br>
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/kiwi.jpg" alt="Ű��" /> <br>
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/straw.jpg" alt="����" /> <br>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resource/js/hello.js" />
		
	</script>

</body>
</html>