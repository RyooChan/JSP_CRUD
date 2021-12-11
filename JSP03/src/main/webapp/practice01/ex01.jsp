<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 선언문으로 이름 나이 전화번호 변수 선언하기 
		 스크립트릿으로 변수초기화하기
		 표현식으로 브라우저에 출력하기
	--%>
	<%!
		String name;
		int age;
		String phoneNum;
	%>	
	<%
		name = "류찬";
		age = 25;
		phoneNum = "010-9355-9706";
	%>
	이름은 <%= name %>, 나이는 <%= age %>살 전화번호는 <%= phoneNum %>입니다.
</body>
</html>