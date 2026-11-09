<%@page import="sample1.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
class Human{
	String name;
	int age;
	
	public Human(){
		name = "홍길동";
		age = 24;
	}
	public void print(){
		System.out.println("name:" + name + " age:" + age);
	}	
}
%>

<%
Human h = new Human();
h.print();

Student s = new Student();
s.print();
%>


</body>
</html>



