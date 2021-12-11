<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		 선언문으로 form태그에서 넘어올 변수선언
		 스크립트릿으로 넘어온 데이터받기
		 표현식으로 브라우저에 출력하기
	 -->
	 
<%!
	String name, ageStr, phone, area;
	int age;
	String[] hobby;
%>
<%
	request.setCharacterEncoding("UTF-8");
	name = request.getParameter("name");
	ageStr = request.getParameter("age");
	age = Integer.parseInt(ageStr);
	phone = request.getParameter("phone");
	area = request.getParameter("area");
	
	hobby = request.getParameterValues("hobby");
%>
이름 : <%= name %>
나이 : <%= age %>
번호 : <%= phone %>
지역 : <%= area %>

취미 : <%= Arrays.toString(hobby) %>

</body>
</html>