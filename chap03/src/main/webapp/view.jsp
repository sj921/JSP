<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	// forward�� �����Դٸ� way�� null�� �ƴ� ����
	// redirect�� �����Դٸ� way�� null�� ���� ����
	Object way = request.getAttribute("way");
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>View.jsp</title>
</head>
<body>

	<h3># ���޹��� �Ķ���ʹ� ��� ������? (<%=way != null ? "forward" : "redirect" %>)</h3>
	
	<ul>
		<li>hobby : <%=request.getParameter("hobby") %></li>
		<li>favorite : <%=request.getParameter("favorite") %></li>
	</ul>


</body>
</html>