<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- Date클래스와 SimpleDateFormat 클래스로 
		 오늘의 날짜 브라우저에 출력하기 (스크립트릿 사용)
	 --%>
	<%
		Date dt = new Date();
		String today = dt.toString();
		
		out.println(today);
		
		SimpleDateFormat dtFormat = new SimpleDateFormat("yyyy-mm-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat("a hh:mm:ss");

		out.println("오늘의 날짜 : " + dtFormat.format(dt));
	%>
	<br>
	<%
		out.println("현재 시간 : " + timeFormat.format(dt));
	%>

</body>
</html>