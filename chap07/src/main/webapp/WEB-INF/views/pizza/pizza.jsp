<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.util.List" %>

<%
	List<String> previousList = (List<String>)request.getAttribute("previousList");
%>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>

	<h3># ���ڷ� �����ϱ�</h3>

	<p>������ ����ÿ�. (���̺� ����ÿ�, ������ ��� �� chap02 ����)</p>

	<ul>
		<li><a href="./pizza/order/list">���� �ֹ� ���� ����</a> (DB�� ���� �ֹ� ���̺��� select)</li>
		<li><a href="./pizza/order/form">�� �ֹ� ����� </a>(DB�� ���� �ֹ� ���̺� insert)</li>	
		<!-- GET ��� ��û -->
	</ul>


</body>
</html>