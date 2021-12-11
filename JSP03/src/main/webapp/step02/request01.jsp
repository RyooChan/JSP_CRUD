<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 웹 브라우저를 통해 서버에 어떤 정보를 요청하는 것을 request라고 함 --%>
<%
	out.println("서버 : "+request.getServerName() + "<br>");
	out.println("컨텍스트 패스 : " + request.getContextPath() + "<br>");
	out.println("포트번호 : " + request.getServerPort() + "<br>");
	out.println("요청방식 : " + request.getMethod() + "<br>");
	out.println("프로토콜 : " + request.getProtocol() + "<br>");
	out.println("URL : " + request.getRequestURL() + "<br>");
	out.println("URI : " + request.getRequestURI() + "<br>");
%>

</body>
</html>