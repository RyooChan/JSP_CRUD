<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
		getAttributeNames()로 세션의 이름을 Enumeration객체로 받은 다음에
		세션이름과 value값들을 꺼내고 value가 abcd라면 웹 브라우저에
		abcd님 안녕하세요 출력하기~
		
		a태그로 session 확인하는 session_test.jsp와
		session_logout.jsp 페이지 이동하기 (2개 만들기)
	 --%>
	 <%
		Enumeration<String> enumeration = session.getAttributeNames();
	 	while(enumeration.hasMoreElements()){
	 		String sName = enumeration.nextElement();
	 		String sVal = session.getAttribute(sName).toString();
	 		if("abcd".equals(sVal)){
	 			out.println("안녕하세요"+sVal+"님<br>");
	 		}
	 	}
	 	
	 %>
	 <a href="session_test.jsp">세션 확인하기</a><br>
	 <a href="session_logout.jsp">로그아웃하기</a>

</body>
</html>