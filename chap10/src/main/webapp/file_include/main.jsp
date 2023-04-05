<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setAttribute("address", "종로구");
	pageContext.setAttribute("address", "도봉구");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메인입니다...</title>
<%@ include file="/file_include/header.jspf" %>
</head>
<body>

	<%@ include file="/file_include/top.jspf" %>

	<hi style="font-family: 'Aboreto', cursive; font-size:5em">Main.jsp</hi>
	
	<div class="fa-3x">
	  <i class="fa-solid fa-circle-plus fa-beat"></i>
	  <i class="fa-solid fa-heart fa-beat"></i>
	  <i class="fa-solid fa-heart fa-beat" style="--fa-animation-duration: 0.5s;" ></i>
	  <i class="fa-solid fa-heart fa-beat" style="--fa-animation-duration: 2s;"></i>
	  <i class="fa-solid fa-heart fa-beat" style="--fa-beat-scale: 2.0;"></i>
	</div>

	<%@ include file="/file_include/bottom.jspf" %>

</body>
</html>