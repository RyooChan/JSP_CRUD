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
		form 에서 온 데이터를 받고 sendRedirect를 사용해서
		이름이 홍길동과 같다면 ok.jsp 다르면 ng.jsp로 
	 --%>

	<%!
		String name;
	%>
	<%
		name = request.getParameter("name");
		
		if("홍길동".equals(name)){
			response.sendRedirect("ok.jsp");
		}else{
			response.sendRedirect("ng.jsp");
		}
	%>
</body>
</html>