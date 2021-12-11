<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="member" class="com.java.jsp.Member" scope="page"/>
<%--
	빈 태그로 Member객체 만들기
 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	Member객체에 값 넣고 출력하기
 --%>

	<jsp:setProperty name="member" property="id" value="fbcks97" />
	<jsp:setProperty name="member" property="pw" value="1234" />
	<jsp:setProperty name="member" property="name" value="류찬" />
	<jsp:setProperty name="member" property="age" value="25" />
	
	ID : <jsp:getProperty name="member" property="id"/><br>
	PW : <jsp:getProperty name="member" property="pw"/><br>
	이름 : <jsp:getProperty name="member" property="name"/><br>
	나이 : <jsp:getProperty name="member" property="age"/><br>
	
	ID : <%= member.getId() %>
	PW : <%= member.getPw() %>
	이름 : <%= member.getName() %>
	나이 : <%= member.getAge() %>
	
</body>
</html>