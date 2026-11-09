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
		session : 	server 저장 공간
					setAttribute(key, Object)
					getAttribute(key)
		
		cache :	임시 저장공간 
 --%>
 
<%
	String myname = "일지매";

	session.setAttribute("name", myname);
	session.setMaxInactiveInterval(10);
	
	response.sendRedirect("index5.jsp");
%>


</body>
</html>




