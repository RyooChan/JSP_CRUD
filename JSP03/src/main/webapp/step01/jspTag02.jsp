<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 선언문(declaration) --%>
<%!
	int i = 1;
	String name	= "홍길동";
	int age = 20;
	
%>
<%!
	public int add(int x, int y){
		return x + y;
	}
%>
<%-- 스크립트잇 --%>
<%
	out.print("i : " + i + "<br>");
	out.print("이름 : " + name + "<br>");
	out.print("나이 : " + age + "<br>");
	int result = add(10, 20);
	out.print("10 + 20 = " + result + "<br>");
%>

</body>
</html>