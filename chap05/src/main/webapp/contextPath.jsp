<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Context Path</title>
</head>
<body>

	<h3># Context Path</h3>


	<ul>
		<li>
			Context Path�� ���� ������Ʈ�� Context�� ������ �� �ִ� ��θ� �ǹ��Ѵ�
			(���ؽ�Ʈ ��� �� server.xml�� �����س��� ��)
		</li>
		<li>�⺻���� ������Ʈ �̸��� �Ȱ��� �̸����� �����ȴ�</li>
		<li>������ Context Path�� ������ ����� �� �����Ƿ� �����ؾ� �Ѵ�</li>
	</ul>
	
	<a href="http://localhost:9000<%=request.getContextPath() %>/encoding.jsp">http://localhost:9000<%=request.getContextPath() %>/encoding.jsp</a> <br>
	<a href="<%=request.getContextPath() %>/encoding.jsp"><%=request.getContextPath() %>/encoding.jsp</a> <br>
	<a href="<%=request.getContextPath() %>/encodingResult.jsp?samkim=���Ա�ġ��������&smoothie=�����Ʈ���ڹٳ���"><%=request.getContextPath() %>/encodingResult.jsp</a> <br>
	<a href="<%=request.getContextPath() %>/HelloJsp.jsp"><%=request.getContextPath() %>/HelloJSP.jsp</a> <br>
	<a href="<%=request.getContextPath() %>/index.jsp"><%=request.getContextPath() %>/index.jsp</a> <br>	
	<a href="./encoding.jsp">./encoding.jsp</a>
	
</body>
</html>