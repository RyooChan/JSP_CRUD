<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
    
<%--
	isErrorPage : 속성값이 true이면 현재 JSP페이지가 예외 처리 페이지라는 것을 명시하며
	              exception객체를 사용할 수 있게 된다.
	              이를 사용하여 예외에 대한 정보를 얻을 수 있게 된다.
 --%>    
 
 <% response.setStatus(200); %>
 <%--
 	에러 페이지가 정상적으로 호출이 되려면 HTTP 상태코드가 정상값인 200이 되어야 한다.
 	에러 페이지가 호출되기 위해서는 response객체에 상태값 200을 세팅해야 한다.
  --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	에러 발생!!<br>
	<%= exception.getMessage() %>

</body>
</html>