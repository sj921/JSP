<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<p>로그인 성공한 사람들이 도착하는 페이지</p>

	<p>5초 후에 메인으로 이동합니다</p>

	<script>
		setTimeout(() => {
			location.href = '<%=request.getContextPath() %>/login/login.jsp'
		}, 3000);	
	</script>

</body>
</html>