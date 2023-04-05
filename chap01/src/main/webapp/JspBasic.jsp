<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="EUC-KR">
<title>JspBasic.jsp</title>
</head>
<body>

	<%-- JSP �ּ� (���������� ���õǴ� �ּ�) --%>
	
	<!-- HTML �ּ� (ũ�ұ��� ���� ���õǴ� �ּ�) -->

	<h3># Web Server</h3>
	
	<ul>
		<li>��û�� ���� �˸��� �ڿ��� �����Ѵ�</li>
		<li>��û�� ���� �ٸ� ������ ���������� ���Ѵ�</li>
		<li>�׸� �ּ��� -> �׸��� �ش�</li>
		<li>�� ������ �ּ��� -> �������� �ش�</li>
		<li>���� ������ ó��</li>
	</ul>	
	
	<h3># Web Application Server</h3>

	<ul>
		<li>
			�� �����ʹ� �ٸ��� ��û�� ������ �˸��� ���ø����̼� ������ �����Ͽ�
			����� ������ ����
		</li>
		<li>
			���α׷��� �� ����� DB�� �����ϴ� ���� ������ ������ �� ����
		</li>
		<li>���� ������ ó��</li>
	</ul>

	<h3># JSP�� �����ΰ�?</h3>

	<ul>
		<li>Java Server Pages (JSP)</li>
		<li>���� �� �������� �����ϱ� ����, Java�� ���� API</li>
		<li>HTML �ȿ� ���ϴ� ��� Java �ڵ带 ������ ���� �� �ִ�</li>
	</ul>

	<%-- JSP Script --%>

	<%--  
		<%	%> : �ڹ� �ڵ带 ����� �� �ִ� ���� (�޼��� ���� ���)
		<%=	%> : ���ϴ� ���� HTML�� ��� (out.print()�� ���� ��)
		<%! %> : �޼��带 ������ �� �ִ� ���� (Ŭ���� ���� ���)
		<%@	%> : JSP ���� �ɼ� ���� ����	
	--%>
	
	<h3># JSP�� ó�� ����</h3>
	
	<ul>
		<li>������ �Ҵ�</li>
		<li>.jsp ������ 1���� �ڹ� �ڵ� ���·� ��ȯ�ȴ�.</li>
		<li>��ȯ�� �ڹ� �ڵ带 �������Ͽ� �� �����̳�(Tomcat)�� ����Ѵ�</li>
		<li>
			Ŭ���̾�Ʈ�� �ش� �������� ��û�� ������ �� �����̳ʿ� ��ϵǾ� �ִ�
			������ ������� �����Ͽ� �����Ǵ� HTML�ڵ带 �����Ѵ�.
			(.jsp�� ������ ������� �����ϸ� HTML�ڵ带 ��ȯ�ϴ� ���α׷��̴�)
		</li>
	</ul>
	
	<%
		// �޼��� ���� ���
		int a = 10;
		int b = 20;
		
		// out - HTML �������� �������� OutputStream
		out.print("<a href='http://www.naver.com' style='color: red;'>��ũ</a>");
	
		class Apple {
			int size;
			int sweet;
			
			public Apple () {
				size = 10;
				sweet = 9;				
			}
			
			public String toString() {
				return "<h5 style='color: red;'>����Դϴ�.</h5>";
			}
		}
			
		out.print(new Apple());
		
		for (int i = 0; i < 10; ++i) {
			out.print(rabbit());
			System.out.println("������� �䳢�� ��� " + rabbitCount + "���� �Դϴ�.");
		}			
	%>

	<%!
		// Ŭ���� ���� ��� (�޼��� ���� ����, �ν��Ͻ� ���� ���� ����)
		int rabbitCount = 0;	// �ν��Ͻ� ����
	
		String rabbit() {
			return "<pre> /)/)\n(  ..)\n(  >$\nGood Luck" 
				+ rabbitCount++ + "</pre>";		
		}			
	%>

	<p>���� �䳢�� <%=rabbitCount %>����</p>



</body>
</html>