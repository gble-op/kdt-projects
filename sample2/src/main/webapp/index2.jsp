<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String myname = "성춘향";
request.setAttribute("myname", myname);

// servlet
// RequestDispatcher rd = request.getRequestDispatcher("index3.jsp");
// rd.forward(request, response);

// jsp
// pageContext.forward("index3.jsp");

response.sendRedirect("index3.jsp");
%>

</body>
</html>


