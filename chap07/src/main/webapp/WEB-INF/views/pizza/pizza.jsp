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
<title>피자</title>
</head>
<body>

	<h3># 피자로 연습하기</h3>

	<p>다음을 만드시오. (테이블도 만드시오, 예전에 썼던 폼 chap02 참조)</p>

	<ul>
		<li><a href="./pizza/order/list">이전 주문 내역 보기</a> (DB의 피자 주문 테이블을 select)</li>
		<li><a href="./pizza/order/form">새 주문 만들기 </a>(DB의 피자 주문 테이블에 insert)</li>	
		<!-- GET 방식 요청 -->
	</ul>


</body>
</html>