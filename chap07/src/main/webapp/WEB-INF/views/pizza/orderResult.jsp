<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%
	Object o1 = request.getAttribute("pastOrders");
	List<String> pastOrders = null;	
	if (o1 instanceof List) {
		pastOrders = (List)o1;		
	}
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주문 결과</title>
</head>
<body>

	<h3>주문한 사람 : ${customerName }</h3>
	
	<table>
	
	<!-- pastOrder에서 받아오는 값은 DB에서 받아오는 값임! (orderForm에서 넘어간 값이 DB에 저장되고, 그 DB에 저장된 값을 받아옴) -->
	<%
		if (pastOrders != null && pastOrders.size() != 0) {			
			for (String pastOrder : pastOrders) {
				out.print(pastOrder);
			}			
		} else {			
			out.print("<tr><th>주문 내역이 없습니다!</th></tr>");
		}	
	%>		
	</table>	
		
<!-- 
	${info.name } <br>
	${info.address } <br>
	${info.crust } <br>
	${info.size } <br>
	${info.topping } <br>
	${info.instruction } <br>
 -->
 
	<a href="/chap07/pizza">return to index</a>
	
	<p>POST방식으로 파라미터를 전송하고 난 후 새로고침을 막아야 한다... (리다이렉트 필요)</p>
	
	<p>뒤로가기도 막아야 하는데 뒤로가기를 막기 위해서는 자바스크립트의 history 객체를 조작해야 한다</p>
		

</body>
</html>