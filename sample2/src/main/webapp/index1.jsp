<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
		request : 요청
		
		String 		<-	getParameter(name)	name으로 지정된 1개의 값
		String[]	<-  getParameterValues(name) name들로 지정된 다수의 값
		
						setAttribute(key, Object)	객체를 저장
		Object		<- 	getAttribute(key)			객체를 리턴
 --%>
 
<%
// http://localhost:9000/sample2/index1.jsp?name=%ED%99%8D%EA%B8%B8%EB%8F%99&age=24&hobby=%EC%98%81%ED%99%94%EA%B0%90%EC%83%81&hobby=%EA%B7%B8%EB%A6%BC%EA%B7%B8%EB%A6%AC%EA%B8%B0

	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	String hobby[] = request.getParameterValues("hobby");
%> 

이름: <input type="text" value="<%=name %>"/><br/>
나이: <input type="text" value="<%=age %>"/><br/>

<%
for(String h : hobby){
	%>
	<p><%=h %></p>
	<%
}
%>


</body>
</html>



