<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Html 주석문 -->

<%-- JSP 주석문 --%>

<h1>Hello JSP</h1>
<h3>Hello JSP</h3>

<%--
		JSP : Java Server Page
 --%>

web의 영역

<%
	// java 영역
	// scriptlet = script + applet 
	
	/*
		Servlet = Java(Html)
		JSP = Html(java)
	*/
%>

<%--
		scriptlet == java area
		
		선언부 -> 정의부
		class나 함수(static)를 선언하는 영역
		<%!
		
		%>
		
		소스 구현부
		<%
		
		%>
		
		값을 취득
		<%=변수 %> 
--%>

<%
	String name = "홍길동";
%>

<br/><br/>

이름: <%=name %>

<br/><br/>

<input type="text" size="20" value="<%=name %>"/>

<br/><br/>

<p><%=name %></p>

<%
for(int i = 0;i < 10; i++){
	%>
	<span><%=i %></span>
	<%
}
%>

<br/><br/>

<%!
	// 코드 선언부
	public void function(){
		System.out.println("함수 호출");
	}

	int number = 0;	// global variable
%>

<%
	function();

	number++;	
	System.out.println(number);
	
	int local_number = 0;	// local 변수
	local_number++;
	System.out.println(local_number);
%>

<input type="text" value="<%=number %>"/>


</body>
</html>




