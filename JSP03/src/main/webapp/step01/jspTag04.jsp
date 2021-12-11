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

<%
	int[] array = {1, 2, 3, 4, 5};

	out.println(Arrays.toString(array));
%>

<h3>jspTag04.jsp 페이지 입니다.</h3>
<%@ include file="include.jsp" %>
<h1>다시 jspTag04.jsp 페이지 입네다.</h1>


</body>
</html>