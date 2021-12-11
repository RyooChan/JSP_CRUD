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
		String str = request.getParameter("age");
		int age = Integer.parseInt(str);
	%>

	당신의 나이는 : <%= age %>
	<p>성인이 아닙니다. 주류 구매가 불가능합니다.</p>
	
	<a href="response_form.html">처음으로 이동</a>
</body>
</html>