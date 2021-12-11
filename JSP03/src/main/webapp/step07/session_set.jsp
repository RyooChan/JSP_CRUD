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
		session.setAttribute("sessionName", "sessionValue");
		session.setAttribute("sessionNumber", 1234);
		// 세션은 객체를 생성하지 않아도 쓸 수 있는 '내부객체'이다.
		// setAttribute("세션이름", 값);
		// 이름은 String형이고, value는 Object형이다(모든 객체를 다 넣을 수 있다.)
		
		
	%>
	
	<a href="session_get.jsp">세션 얻기</a>
	
	
	
</body>
</html>