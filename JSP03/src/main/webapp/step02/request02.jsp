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

<%!
	String name, id, pw, major, area;
	String[] hobbies;
%>
<%
	request.setCharacterEncoding("UTF-8");
	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	major = request.getParameter("major");
	area = request.getParameter("area");
	
	hobbies = request.getParameterValues("hobby");
	
%>
이름 : <%= name %>
아이디 : <%= id %>
비밀번호 : <%= pw %>
전공 : <%= major %>
지역 : <%= area %>

취미 : <%= Arrays.toString(hobbies) %>

</body>
</html>