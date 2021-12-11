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
		String name = request.getParameter("name");
	%>
	
	<h2>include02.jsp 페이지입니다.</h2>
	<h2><% out.println(name); %></h2>

</body>
</html>