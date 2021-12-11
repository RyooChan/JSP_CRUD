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
	request.setCharacterEncoding("UTF-8");
	String userName = request.getParameter("userName");
	String foodName = request.getParameter("foodName");
%>

	<h1>
	<%= userName %>님 당신은 <%= foodName %>을 좋아하시는군요!
	</h1>


</body>
</html>