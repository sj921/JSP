<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� �ֹ� ���� ����</title>
</head>
<body>

	<h3># ��� �ֹ� ����</h3>
	
	<table border="2">
		<c:forEach items="${pastOrders}" var="pastOrder">
			<tr>
				<td>${pastOrder.name }</td>
				<td>${pastOrder.address }</td>
				<td>${pastOrder.crust }</td>
				<td>${pastOrder.size }</td>
				<td>${pastOrder.topping }</td>
				<td>${pastOrder.instruction }</td>
			</tr>		
		</c:forEach>
	</table>	

</body>
</html>