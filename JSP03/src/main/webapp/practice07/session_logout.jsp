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
		세션에 있는 값들을 모두 꺼내서 value가 abcd와 같다면
		removeAttribute메소드를 사용해서 세션 삭제하기
		a 태그로 세션 확인하기위한 session_test.jsp로 태그 넣기
	 --%>
	 
	 <%
	 	Enumeration<String> enumeration = session.getAttributeNames();
	 	while(enumeration.hasMoreElements()){
	 		String sName = enumeration.nextElement();
	 		String sVal = session.getAttribute(sName).toString();
	 		if("abcd".equals(sVal)){
	 			session.removeAttribute(sName);
	 		}
	 	}
	 %>
	 <p> 로그아웃되었습니다~</p>
	 <a href="session_test.jsp">확인하기</a>

</body>
</html>