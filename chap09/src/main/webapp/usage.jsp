<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// request���� �׻� ���� ��ο��� ����� �� �ִ� ��Ű���� ���ԵǾ� �ִ�
	
	// ����� �� �ִ� ��� ��Ű�� �����
	Cookie[] cookies = request.getCookies();
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>���� �� ��ο��� ����� �� �ִ� ��� ��Ű ���</h3>

	<% for (Cookie cookie : cookies) { %>
		
	<div><%=cookie.getName() %>=<%=cookie.getValue() %></div>	
			
	<% } %>		

	
	
	
	




</body>
</html>