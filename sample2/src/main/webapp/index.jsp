<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
		내장객체: 생성하지 않고 사용할 수 있는 객체
		
		out			: java 영역(scriptlet)에서 작성한 (웹)코드를 웹으로 출력
		request(요청)	: url의 parameter을 취득. object를 저장, 불러오기. session 접근가능
		response(응답): 웹을 (단순)이동. -> sendRedirect  
		session		: object를 저장, 불러오기
		pageContext	: 웹을 (단순)이동 -> forward  = servlet
--%>

<%
	System.out.println("하이 반갑습니다");

	out.println("<p>하이 반갑습니다</p>");
	
	String name = "홍길동";
	
	out.println("<p>" + name + "</p>");
%>

<p><%=name %></p>

</body>
</html>







