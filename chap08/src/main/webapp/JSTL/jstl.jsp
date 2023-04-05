<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// �� ����Ͻ� �������� ��Ʈ����Ʈ�� �߰��� �� ������� �޾Ҵٰ� �����Ѵ�
	String[] animals = {"cat", "dog", "monkey", "tiger", "lion", "rabbit"};

	List<String> fruits = new ArrayList<>();
	
	pageContext.setAttribute("animals", animals);
	pageContext.setAttribute("fruits", fruits);
	
	fruits.add("apple");
	fruits.add("banana");
	fruits.add("orange");
	fruits.add("kiwi");
	fruits.add("mango");	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Jsp Standard Tag Library</title>
</head>
<body>
 
	<h3>JSTL (Jsp Standard Tag Library)</h3>

	<ul>
		<li>JSP���� Java �ڵ带 ����ϸ� �ڵ尡 �ʹ� ������������ ������ ���̺귯��</li>
		<li>�ڹٿ��� ���� ���� ��ɵ��� �±� ������� ����� �� �ֵ��� ����� ��</li>
		<li>�ڹ��� ��� ����� ����� �� �ִ� ���� �ƴ����� �並 ����⿡�� ����� ��ɵ��̴�</li>
		<li>JSTL Ư���� import���� �� ���� �߰��� �� ����ؾ� �Ѵ�</li>
	</ul>
	 
	<h3># JSTL Core</h3>

	<p>�ڹ� �ֿ� �������� ���ԵǾ� �ִ� Ŀ���� �±� ���̺귯��</p>
	
	<dl>
		<dt>&lt;c:set&gt;</dt>
		<dd>setAttribute�� ���ϰ� ������ �� �ִ�</dd>
		<dt>&lt;c:if&gt;</dt>
		<dd>if���� ���ϰ� ������ �� ������, else if�� else�� ����</dd>
		<dt>&lt;c:choose&gt;, &lt;c:when&gt;, &lt;c:otherwise&gt;</dt>
		<dd>if, else if, elseó�� ����� �� �ִ� ���ǹ�</dd>
		<dt>&lt;c:forEach&gt;</dt>
		<dd>���ڸ� �̿��� �ݺ����� 
			�迭, ����Ʈ �� ���������� ���� �� �ִ�(iterable) 
			��ü�� ���� �ݺ����� ����� �� �ִ�</dd>
		<dt>&lt;c:forTokens&gt;</dt>
		<dd>���ڿ��� ���ϴ� �������� �ڸ��鼭 �ڸ� ���ڿ��� �ݺ�</dd>
		<dt>&lt;c:url&gt;</dt>
		<dd>������ url�� �� �� ���ϰ� ������ �� �ִ� ���
			(ContextPath�� �ڵ����� �߰����ش�)</dd>
	</dl>	
	
	<hr>
	
	<!-- c:set�� �̿��� ���ϴ� ��Ʈ����Ʈ�� �߰� -->
	<c:set var="waffle" value="strawberry" scope="page" />
	<c:set var="waffle" value="blueberry" scope="request" />
	<c:set var="waffle" value="mango" scope="session" />
	<c:set var="waffle" value="kiwi" scope="application" />
	
	${waffle }
	
	<c:if test="${requestScope.waffle eq 'strawberry' }">
		<h3>waffle�� strawberry�Դϴ�.</h3>	
	</c:if>		
	<c:if test="${requestScope.waffle eq 'blueberry' }">
		<h3>waffle�� blueberry�Դϴ�.</h3>	
	</c:if>	
	
	<c:set var="score" value="95" />
	
	<c:choose>
		<c:when test="${score > 100 || score < 0}">
			<h3>F����Դϴ�.</h3>
		</c:when>
		<c:when test="${score >= 90}">
			<h3>A����Դϴ�.</h3>
		</c:when>
		<c:when test="${score >= 80}">
			<h3>B����Դϴ�.</h3>
		</c:when>
		<c:when test="${score >= 70}">
			<h3>C����Դϴ�.</h3>
		</c:when>
		<c:when test="${score >= 60}">
			<h3>D����Դϴ�.</h3>
		</c:when>
		<c:otherwise>
			<h3>F����Դϴ�.</h3>
		</c:otherwise>	
	</c:choose>	
	
	<h3>1. ���ϴ� ���ڷ� �ݺ� ������ ����</h3>
	
	<ul>
		<c:forEach begin="0" end="10" var="i">
			<li id="list-item${i }">${i+1 }��° �ݺ��Դϴ�</li>
		</c:forEach>
	</ul>
		
	<h3>2. Iterable�� �ݺ� ������ ���� (Array, List)</h3>	
		
	<ul>
		<c:forEach items="${animals}" var="animal">		
			<li id="${animal}">${animal}</li>
		</c:forEach>	
	</ul>		
		
	<ul>
		<c:forEach items="${fruits}" var="f">		
			<li id="${f }">${f }</li>
		</c:forEach>	
	</ul>
	
	<h3># c:forTokens</h3>
	
	<c:set var="portals" value="naver/daum/google/yahoo/nate/paran/hanmir" />
		
	<c:forTokens items="${portals }" delims="/" var="portal">
	
		<div id="${portal }">www.${portal }${portal eq 'daum' ? '.net' : '.com' }</div>	
	</c:forTokens>
	
	<h3># c:url</h3>
	
	<ul>
		<li>�⺻ : <c:url value="/pizza/order"/></li>
		<li>��Ʈ����Ʈ�� ���� : 
			<c:url value="/pizza/list" var="to_list" scope="page" />
			${to_list }</li>
		<li><a href="${to_list}">�ֹ��Ϸ� ����</a></li>
		<li>�Ķ���� �߰� : 
			<!-- ����ο��� contextPath�� �߰����� �ʴ´� -->
			<c:url value="./hello">
				<c:param name="first_name" value="Smith"/>
				<c:param name="last_name" value="King"/>
				<c:param name="age" value="45"/>
			</c:url></li>
	</ul>
	
	
	
</body>
</html>










