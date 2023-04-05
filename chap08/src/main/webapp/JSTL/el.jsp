<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="chap08.dto.*" %>
<%
	// ����Ͻ� ������ ���� ��Ʈ����Ʈ�� �����Ͱ� �Ƿ��ִٰ� ����
	pageContext.setAttribute("waffle", "strawberry");
	request.setAttribute("waffle", "blueberry");
	session.setAttribute("waffle", "apple");
	application.setAttribute("waffle", "choco");
	
	pageContext.setAttribute("menu", new Menu("Americano", 2000, "/resource/image/coffee1.png"));
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL (Expression Language)</title>
</head>
<body>

	<h3># JSP Expression Language (EL)</h3>

	<ul>
		<li>JSP Ư�� ���� ���ĺ��� �߰��� �⺻ ���</li>
		<li>��Ʈ����Ʈ�� �Ƿ��ִ� ���� ���� ������ �� �ִ� ����̴�</li>
		<li>DTO�κ��� ���� ������ ���� ������ �ڹ� �޼��� ȣ���� ����������
			��� �޼��带 �ڹ�ó�� �����Ӱ� ����� �� �ִ� ���� �ƴϴ�</li>
	</ul>

	<h3># EL�� �� ������ �� ����غ��� (���� ��Ʈ����Ʈ �̸��� ��� ������ �ִ� ���)</h3>

	<ul>
		<li>page &lt; request &lt; session &lt; application </li>
		<li>�׳� ��� (waffle �� ���� ����� �Ϳ� ����) : ${waffle }</li>
		<li>page: ${pageScope.waffle }</li>
		<li>request: ${requestScope.waffle }</li>
		<li>session: ${sessionScope.waffle }</li>
		<li>application: ${applicationScope.waffle }</li>
	</ul>
	
	<h3># EL�� dto Ȱ���ϱ�</h3>
	
	<ul>
		<li>�׳� ��� (�ش� ��ü�� toString()�� ȣ���Ѵ�) : ${menu }</li>
		<li>menu.name : ${menu.name }</li>
		<li>menu.price : ${menu.price }</li>
		<li>menu.image : ${menu.image }</li>
		<li>Getter�� ������� �ִ� ��� �ش� �ʵ尪�� ������ �� �ִ�</li>
	</ul>
	
	<h3># EL�� ���ͷ�</h3>
	
	<%
		pageContext.setAttribute("a", 10);
		pageContext.setAttribute("even", true);	
	%>	
	
	<ul>
		<li>boolean : ${true }, ${false }, ${not even }</li>
		<li>����: ${123 }, ${123 * 10 }, ${a * 2 }</li>
		<li>�Ǽ�: ${123.123 }, ${123.123 * 2 }</li>
		<li>���ڿ�: ${'hello, world!' }, ${"hello, world!" }</li>
	</ul>
	
	<h3># EL�� ������</h3>
	
	 <dl>
		 <dt>���: +, -, *, /, %, mod(������)</dt>
		 <dd>ex: ${'${10 mod 7}' } = ${10 mod 7 }</dd>
		 <dt>��: ==, !=, eq(==), ne(!=), lt, gt, le, ge</dt>
		 <dd>
		 	ex: ${a > 10 }, ${a gt 10 }, ${a == 10 }, ${a eq 10 },
		 	${waffle == 'blueberry' }, ${waffle == 'strawberry' } 
		 </dd>
		 <dt>��: and, or, not, &&, ||, !</dt>
		 <dd>${true and false }, ${true && false }</dd>
		 <%
		 	pageContext.setAttribute("empty1", null);
		 	pageContext.setAttribute("empty2", "");		 
		 %>		 
		 <dt>empty: �ش� ���� "" �Ǵ� null�� �� true</dt>
		 <dd>
		 	null check�� ��� : ${empty1 eq null }, ${empty2 eq null } <br>
		 	empty check�� ��� : ${empty empty1 }, ${empty empty2 } <br>		 
		 </dd>
		 <dt>���׿���</dt>
		 <dd>basket = ${a % 10 == 0 ? '+0' : '+1' }</dd>
		 <dd>basket = ${a % 10 == 0 ? a / 10 : a / 10 + 1 }</dd>
	 </dl>
	
	



</body>
</html>








