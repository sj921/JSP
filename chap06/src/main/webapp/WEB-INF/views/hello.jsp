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
		HTML(jsp 말고), CSS, Javascript, image 등의 자원들은
		서버로 요청을 보내 받아오는 정적 자원(static resource)들이다	
	</p>
		
	<!-- 단, web.xml은 수정하지 말 것, @WebServlet도 금지 -->
	<a href="<%=request.getContextPath() %>/gugudan">구구단 보러가기</a> <br>

	<img width="300" src="http://image.dongascience.com/Photo/2021/04/fc81468453c393247ab7866eecd520b2.JPG" alt="펭귄" /> <br>
	
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/apple.jpg" alt="사과" /> <br>
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/kiwi.jpg" alt="키위" /> <br>
	<img class="fruit" width="300" src="<%=request.getContextPath() %>/resource/image/straw.jpg" alt="딸기" /> <br>
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resource/js/hello.js" />
		
	</script>

</body>
</html>